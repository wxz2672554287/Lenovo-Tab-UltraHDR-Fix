# sdcard 日志方案调研报告

> 调研日期：2026-09-05 ｜ 设备：联想 TB710FU ｜ Android 16 (API 36, 版本 366) ｜ root=SukiSU (KernelSU 系 LKM) ｜ LSPosed 模块注入 system_server (uid 1000, SELinux `system_server` 域)
>
> 调研问题：模块日志能否由 system_server 直接 append 写到 `/storage/emulated/0/hdr日志/hdrfix.log`？若不能，伴侣 App 侧如何收敛日志到用户可见路径？
>
> 方法：TinyFish + Exa 双渠道联网搜索交叉验证（AOSP sepolicy 原文、KernelSU/SukiSU 源码与文档、LSPosed 社区）＋ 本地证据（366_vendor_a.img 提取 selinux CIL 实测）。全文结论均有来源，见文末参考文献。

---

## ① 可行性定论：**不可行**（SELinux neverallow 铁证，root 预建/chcon 均无效）

### 1.1 AOSP 平台策略原文（Android 16 时代，main 分支）

`private/system_server.te` 中 system_server 对 fuse 的**全部**权限只有目录的 getattr/search（statfs 用途）：

```
# L1129
allow system_server { sdcard_type fuse }:dir { getattr search };
```

紧接着 Neverallow 区（L1357-1358）明文封死一切读写：

```
# L1357
neverallow system_server { sdcard_type fuse }:dir { open read write };
# L1358
neverallow system_server { sdcard_type fuse }:file rw_file_perms;
```

**rw_file_perms = { open read write append getattr setattr lock ... }** —— open/append/write 全部在内。这条规则的官方理由（2016 年引入，f063f46 提交原文）：*"Do not allow opening files from external storage as unsafe ejection could cause the kernel to kill the system_server"*（外部存储异常拔出时持有 fd 会导致内核杀掉 system_server）。该规则从 sdcardfs 时代延续到 FUSE 时代至今未放松。

**含义**：Google 的构建体系里 neverallow 是编译期断言——任何 OEM（包括联想）若想给 system_server 开 fuse 写权限，平台或 vendor 策略编译会直接失败。所以**出厂设备的运行时二进制策略必然不含该 allow**。

### 1.2 本地设备证据（366_vendor_a.img 实测提取）

从 `D:\桌面\pro gt搞机\救砖镜像\解包分析\fw\366_vendor_a.img` 用 7z 提取 `etc/selinux/` 验证：

- `plat_sepolicy_vers.txt` = **34.0**（vendor 侧平台策略版本基线），vendor CIL 中以版本化类型 `system_server_34_0` 扩展；
- `vendor_sepolicy.cil` 中 system_server_34_0 的 **75 条 allow 规则逐条核对：全部是 hwservice_manager/binder/property 类，无任何一条涉及 fuse**；
- vendor 中涉及 fuse 的规则仅有两条无关项：`(allow vendor_qti_init_shell fuse_34_0 (dir ...))`（init shell 建 FUSE 挂载点）、`(allow update_engine_34_0 fuse_34_0 ...)`（只读）；
- `plat_pub_versioned.cil` 确认 `(type fuse)` 是 platform public 类型（vendor 理论上可见），但 vendor 没有为它给 system_server 加任何规则——与 1.1 的 neverallow 编译断言互相印证。

**结论：该设备出厂策略 = AOSP 平台策略（含 1.1 的封死规则）+ 联想增量（无 fuse 相关），运行时 system_server 对 fuse:file 无 open/append/write 权限。**

### 1.3 为什么 root 预建目录 + chown + chmod 777 + chcon 全部无效

- **SELinux 判定先于 DAC**：open(O_CREAT|O_APPEND) 在内核做 SELinux 检查需要 `fuse:dir { search add_name write }` 和 `fuse:file { open append write }`，均无 allow → 返回 EACCES。chmod/chown 是 DAC 层操作，根本轮不到生效。
- **这精确解释了本机实测**：目录不存在时 `open` 报 **EACCES 而非 ENOENT**——ENOENT 是"目录存在但文件不存在"的正常 DAC 语义；目录级 SELinux deny（无 add_name/write）直接以 EACCES 短路，与实测症状完全吻合。
- **chcon 改标签也是死路**：把 FUSE 视图文件 chcon 成 `system_data_file` 之类 system_server 可写的标签后，FUSE 守护进程（MediaProvider 进程）按 passthrough 模式代为读写底层文件时，反而失去对自己不认识的标签的访问权，通路被破坏；且 FUSE 在用户空间还有第二层访问控制（MediaProvider 按 uid 做的权限合成，见 1.5）。

### 1.4 现场自验方法（一条命令定案）

```bash
# 设备上以 root 执行（App 可封装）；SELinux 拒绝会留 avc 内核日志：
su -c "dmesg | grep -i avc | grep -i system_server | tail -20"
# 预期可见：avc: denied { open } ... scontext=u:r:system_server:s0 tcontext=u:object_r:fuse:s0 tclass=file
```
（之前只看 logcat main buffer 所以没看到 avc 行；avc 走 kernel log。`dmesg` 需 root。）

### 1.5 第二道门：FUSE 用户空间访问控制

Android 11+ 的 `/storage/emulated/0` 由 MediaProvider 进程内的 FUSE 守护进程实现（FUSE passthrough），除内核 SELinux 外，守护进程还按调用方 uid/权限做用户空间访问合成（scoped storage 模型）。也就是说：**即使 SELinux 放行（见下节补丁方案），FUSE 层对 uid 1000 写共享存储的行为也没有任何官方保证**，属于未验证区域。

---

## ② 唯一"硬开"路径与推荐方案

### 2.1 KernelSU/SukiSU `sepolicy.rule` 运行时补丁——技术上可行，**不推荐作为主方案**

SukiSU（KernelSU 系）与 Magisk 同格式支持模块级 `sepolicy.rule`，ksud 在 post-fs-data 阶段把规则经内核接口**实时打补丁进内存中的 policydb**（`kernel/selinux/rules.c` 的 `ksu_allow()` 系列，支持任意 type/class/perm 组合，`ksud sepolicy patch/apply/check` 三个子命令齐全）。neverallow 是编译期断言、不进入运行时二进制，因此运行时 allow 可以生效。

本仓库已有 KSU 模块（`ksu-module/`），理论上加一个 `sepolicy.rule`：

```
allow system_server fuse dir  { search getattr open read write add_name remove_name };
allow system_server fuse file { getattr open read write append create lock };
```

**为什么不推荐**：
1. 明确违背 AOSP 安全设计意图（neverallow 的存在理由：持有外部存储 fd 在存储重挂载/守护进程异常时可被内核杀死 system_server——等于给系统关键进程埋了可重启炸弹）；
2. SELinux 放行 ≠ 成功：FUSE 守护进程还有第二层 uid 级访问控制（1.5），对 uid 1000 直写共享目录无官方保证，需真机验证；
3. 系统更新 / SukiSU 更新 / 安全模式（safe mode 跳过模块加载）后规则重放的鲁棒性不可控；
4. 给 system_server 开无限定的 fuse 读写是全局攻击面扩大（system_server 被任何漏洞攻破后可抹整个共享存储）。

**结论：只作为"如果将来非直写不可"的备选，且落地前必须先真机验证 FUSE 层行为。**

### 2.2 推荐主方案：伴侣 App 侧 root 同步（拉取-推送）

方向反转：**模块继续写权威日志到 `/data/system/hdrfix.log`（现状，已验证可靠），由 App 用 root 把它复制到 sdcard 镜像**。

```
┌─────────────────┐   双写(现状)     ┌──────────────────────┐
│ system_server    │ ───────────────→ │ /data/system/hdrfix.log│ ← 权威日志（SELinux 只许 append，已由 root 预建）
│ (LSPosed 模块)   │ ───────────────→ │ logcat HDRRatioFix     │ ← 诊断通道（v2.0.7 已有抓取）
└─────────────────┘                  └──────────┬───────────┘
                                                │ App(root) cp 同步（本方案新增）
                                                ▼
                              /storage/emulated/0/hdr日志/hdrfix.log ← 用户文件管理器可见
                              /storage/emulated/0/hdr日志/ 目录由 App 安装后 root 预建
```

**为什么可行**：root（`u:r:ksu:s0` 域，SukiSU 全放开）写 FUSE 视图在本机已被验证——v2.0.3 的"一键 HDR 亮度扫描"就是 root 写 `/sdcard/Download/hdrscan.log` 成功落地的。

**同步语义**：全量覆盖 `cp`（日志量级为几十 KB~几 MB，代价可忽略）；App 的 clearLog 同时清两侧文件保持一致。

### 2.3 备选方案

| 备选 | 说明 | 评价 |
|---|---|---|
| B1 前台服务定时同步 | App 常驻前台服务每 N 秒 cp 一次 | 不推荐：常驻耗电+通知栏常挂；Android 13+ 还要先拿 POST_NOTIFICATIONS 动态权限、Android 14+ 前台服务要声明类型。日志是诊断性质，"用户打开 App 时刷新"足够。若确要准实时，FileObserver 监听 sdcard 侧自身写入变化做轮转即可，仍不必常驻 |
| B2 sepolicy.rule 直写 | 见 2.1 | 不推荐，仅存档 |
| B3 logcat 兜底（已有） | v2.0.7 "从 logcat 抓取模块诊断" | 保留：文件通道损坏时的自愈证据源，与本方案互补 |
| B4 App 直接读源文件 | App(非 root) 无法读 /data/system/（system_data_file 对 App 域封死） | 不可行，root 读出内容后由 App 自己落盘 sdcard（变体：`su -c "cat ..."` 取 stdout、App 写 sdcard，文件归 App uid 所有、权限最干净）|

---

## ③ 实现要点

### 3.1 同步命令：必须绕开 `su -c` 重定向陷阱（本机实测 su -c 不拆词）

KernelSU 的 `su` 对 `-c` 有特殊的参数重组逻辑（`userspace/ksud/src/su.rs` L107-143）：`-c` 之后的**全部 argv 被空格 `join(" ")` 拼成单个字符串**再交给 getopt/子进程，与 Magisk 的逐参数透传语义不同；实测本机 `su -c "cat a > b"` 的重定向不可靠。**工程纪律：命令里不出现 `>`/`>>`/`;`/引号嵌套，全部用无歧义单命令 + ProcessBuilder 逐参数传 argv：**

```kotlin
// 目录预建（需求①：App 安装后即可执行，不依赖模块是否已重启生效）
// 注意：目录也可以由 App 用存储权限自己建（不依赖 root），root 建法只是省事
suExec("mkdir -p /storage/emulated/0/hdr日志")

// 日志文件存在性自愈（既有 v2.0.7 逻辑，保持）
suExec("touch /data/system/hdrfix.log")
suExec("chown system:system /data/system/hdrfix.log")
suExec("chmod 666 /data/system/hdrfix.log")
suExec("restorecon /data/system/hdrfix.log")

// 同步：toybox cp 单命令，无重定向、无管道
suExec("cp -f /data/system/hdrfix.log /storage/emulated/0/hdr日志/hdrfix.log")
// 中文路径直接作为单个 argv 传给 ProcessBuilder，天然无 shell 转义问题
```

```kotlin
fun suExec(cmd: String): Boolean {
    return try {
        val proc = ProcessBuilder("su", "-c", cmd)   // cmd 作为完整单个参数
            .redirectErrorStream(true).start()
        val out = proc.inputStream.bufferedReader().readText()
        // su 退出码会说谎（v2.0.7 教训）：必须验证效果而非信任 exit code
        proc.waitFor()
        /* 这里追加效果验证，例如检查目标文件 length() > 0 或与源文件大小一致 */
    } catch (e: Exception) { false }
}
```

**若必须用重定向**（如追加而非覆盖），用双层包装把重定向交给真正的 shell：
`su -c "sh -c 'cat /data/system/hdrfix.log >> /storage/emulated/0/hdr日志/hdrfix.log'"`——但优先用 `cp`（覆盖语义更符合"镜像"定义，也彻底避开引号转义）。

### 3.2 su 授权时机与 UX（需求③）

- **KernelSU 官方设计哲学**（tiann 在 issue #1838 明确回答）：su 对所有 App **默认不可见、无被动弹窗**，"主动授权（用户在管理器超级用户页预先打开）是比被动弹窗更好更安全的方式，我们不会支持弹窗"。管理器里开启某 App 的 root 开关时才有二次确认对话框（commit d41354e）。
- SukiSU-Ultra 及后续 KernelSU-Next 变体在生态里普遍存在"首次调用 su 触发请求弹窗"的体验（国内教程口径一致：第一次调用 su 时在 root 管理工具里选允许），但不同 fork/版本行为不一。**App 侧不要赌弹窗**，按最保守的 KernelSU 原版行为设计：
  1. App 首次启动（首次进入需要 root 的页面或 onCreate 异步初始化）就触发一次 su 探测（如 `su -c "true"` 等价物）；
  2. 失败/超时 → UI 给出引导文案："请打开 SukiSU 管理器 → 超级用户 → 找到本 App 打开授权"，并提供"重试检测"按钮；
  3. 授权状态可缓存（SharedPreference），避免每次进页都空跑 su。
- 本机现状：伴侣 App 已在使用 root（v2.0.7 root 自愈已在跑），说明授权链路已通；需求①的"安装后立即预建"只需把预建命令挪到更早的时机（首次启动异步，不等用户进日志页）。
- POST_NOTIFICATIONS：仅备选 B1（前台服务）需要；主方案不涉及。
- "模块未生效"检测：沿用现有版本对比（App 读取的 hookVersion ≠ App 期望版本 → 提示重启），预建目录不依赖模块生效，两者解耦。

### 3.3 触发时机建议（主方案）

| 时机 | 动作 |
|---|---|
| App 首次启动 | 异步：root 探测 + 预建 sdcard 目录 + 一次性全量同步（需求①） |
| 日志页"刷新" | 同步 + 读取展示（现有 refresh 流程里加一步 cp） |
| App onResume | 节流（距上次同步 >30s 才执行），保证用户切回来看到的就是新日志 |
| clearLog | truncate /data 侧文件 + cp 覆盖 sdcard 侧（保持镜像语义） |

---

## ④ LSPosed 模块日志的行业做法（需求④）

| 代表 | 做法 | 与本项目的对应 |
|---|---|---|
| LSPosed 本体 | 日志写 `/data/adb/lspd/`（普通日志 + verbose 日志两类，root 可读），由 LSPosed 管理器"日志"页查看/导出，**不写 sdcard**；模块日志经 XposedBridge.log 聚合进 modules.log | "私有路径 + 管理器 UI 查看/导出"是标杆模式；我们的 /data/system/hdrfix.log + App 日志页 = 同构 |
| AppErrorsTracking（fankes，知名调试模块） | 明确主打"无法连电脑 ADB 时快速捕获异常"：异常日志持久化 + App 内调试日志界面 + 分享/导出，全程不依赖 sdcard 直写 | 佐证"App UI 展示 + 手动导出"是社区通行解 |
| LSPosed 社区讨论（#2619 等） | "模块日志导出很麻烦"是公认痛点，社区标准答案是用 adb logcat 加 tag 过滤 | 我们已有的 logcat 通道（v2.0.7）正是行业正解之一 |
| AOSP 日志规范 | 系统服务日志走 logcat/事件日志，不落共享存储 | system_server 直写 sdcard 在 AOSP 生态里没有任何先例，与 neverallow 互为印证 |

**行业结论：没有任何知名 LSPosed/Root 模块让注入进程直写 /storage/emulated/0——通行的三角是「私有文件(root 可见) + 前台 App UI 展示 + 用户主动导出」。我们的推荐主方案即此模式的落地。**

---

## ⑤ 风险清单

| # | 风险 | 等级 | 缓解 |
|---|---|---|---|
| R1 | `/data/system/hdrfix.log` 被 rm 后 system_server 无权重建（既有问题，SELinux 只许 append 已存在文件） | 高 | 保留 v2.0.7 root 自愈；预建逻辑前置到 App 首启；每次 refresh 前置存在性检查（已有） |
| R2 | su 授权被用户撤销 / SukiSU 卸载 → 同步失效 | 中 | App 对 su 失败降级：仅显示 /data 侧日志（root 读失败时回落 logcat 通道 v2.0.7），sdcard 镜像显示"上次同步时间" |
| R3 | `su -c` 引号/重定向陷阱（本机 su -c 不拆词） | 中 | 3.1 纪律：只用单命令 cp；禁止 shell 元字符；效果验证不信退出码（v2.0.7 B5 教训） |
| R4 | 中文路径 `hdr日志` 在不同工具链下的编码问题 | 低 | ProcessBuilder argv 直传（不走 shell 字符串）；Android 文件系统 UTF-8 原生支持；v2.0.3 已验证 root 写中文外路径可行（当时是英文路径 Download，需首验一次中文目录名） |
| R5 | cp 覆盖瞬间用户文件管理器读到半个文件 | 低 | 落地改为"cp 到同目录临时名 + mv 原子替换"；或接受诊断日志的低一致性要求 |
| R6 | sdcard 镜像文件归 root/root 0644，第三方文件管理器读取 OK 但某些 App 沙盒（SAF 限制）不可见 | 低 | 文件 0644 world-readable 已满足"用户可见"；如需媒体索引可再发 MEDIA_SCANNER广播（非必需） |
| R7 | 若将来改走 sepolicy.rule 直写：system_server 持外部存储 fd 的内核杀风险 + FUSE 第二层访问未验证 | 高 | 2.1 已列为不推荐；若坚持，先真机验证 FUSE 层并限定最小权限集 |
| R8 | Android 大版本升级（OTA）后 /data/system 下文件与 sdcard 目录可能被清或权限重置 | 中 | App 首启自愈逻辑覆盖（预建 + restorecon），已有同款机制 |

---

## 参考文献

1. [platform/system/sepolicy private/system_server.te (AOSP main)](https://android.googlesource.com/platform/system/sepolicy/+/refs/heads/main/private/system_server.te) —— L1129 allow `{ sdcard_type fuse }:dir { getattr search }`；L1357-1358 neverallow 封死读写
2. [sepolicy 提交 f063f46：relax system_server external storage rules](https://android.googlesource.com/platform/system/sepolicy/+/f063f46%5E%21/) —— neverallow 的历史与"unsafe ejection could cause the kernel to kill the system_server"理由原文
3. [AOSP FUSE passthrough 官方文档](https://source.android.com/docs/core/storage/fuse-passthrough) ｜ [AOSP Scoped storage 官方文档](https://source.android.com/docs/core/storage/scoped) —— Android 11+ /storage/emulated 由 MediaProvider 内 FUSE 守护进程实现、用户空间访问控制
4. [KernelSU 模块指南（sepolicy.rule 与启动流程）](https://kernelsu.org/guide/module.html) ｜ [KernelSU 与 Magisk 差异（sepolicy.rule 完全相同）](https://kernelsu.org/guide/difference-with-magisk.html)
5. [KernelSU kernel/selinux/rules.c（内核态 policydb 补丁实现）](https://github.com/tiann/KernelSU/blob/98c9bd59/kernel/selinux/rules.c) ｜ [ksud module.rs load_sepolicy_rule()](https://github.com/tiann/KernelSU/blob/98c9bd59/userspace/ksud/src/module.rs) ｜ [SukiSU-Ultra rules.c 修复提交](https://github.com/SukiSU-Ultra/SukiSU-Ultra/commit/4a394d03cc1cd0ccba3ed501bb26364e08227ad5)
6. [KernelSU userspace/ksud/src/su.rs（-c 参数 join(" ") 重组逻辑 L107-143）](https://github.com/tiann/KernelSU/blob/main/userspace/ksud/src/su.rs) —— 本机"su -c 不拆词"的源码层解释
7. [tiann/KernelSU issue #1838：su 默认对所有应用不可见，主动授权优于被动弹窗（官方立场）](https://github.com/tiann/KernelSU/issues/1838) ｜ [KernelSU commit d41354e：管理器授权确认对话框](https://git.sim1222.com/sim1222-mirror/KernelSU/commit/d41354e1d717b3ac9d81c893ef769df23b73a820) ｜ [KernelSU App Profile 文档](https://kernelsu.org/guide/app-profile.html)
8. [SukiSU-Ultra 官网/文档](https://sukisu.org/zh/guide/) ｜ [volcengine：应用首次调用 su 弹权限请求的生态通识](https://www.volcengine.com/article/910940)
9. [AppErrorsTracking（LSPosed 模块仓库页：无 ADB 场景的 App 内日志查看/导出标杆）](https://modules.lsposed.org/module/com.fankes.apperrorstracking/) ｜ [LSPosed discussion #2619：模块日志导出痛点与 logcat 过滤惯例](https://github.com/LSPosed/LSPosed/discussions/2619) ｜ [mywalkb/LSPosed_mod Wiki：普通/verbose 两类日志](https://github.com/mywalkb/LSPosed_mod/wiki/CLI) ｜ [xda：LSPosed 日志位于 /data/adb/lspd](https://xdaforums.com/t/lsposed-xposed-framework-8-1-13-0-simple-magisk-module.4228973/page-44)
10. 本地证据：`D:\桌面\pro gt搞机\救砖镜像\解包分析\fw\366_vendor_a.img` 内 `etc/selinux/vendor_sepolicy.cil`（75 条 system_server_34_0 规则无 fuse 写权限）、`plat_pub_versioned.cil`（`(type fuse)` public 声明）、`plat_sepolicy_vers.txt`（34.0）

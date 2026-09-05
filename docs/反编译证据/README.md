# 反编译证据目录

本目录收录 TB710FU 三个固件（331=A15 正常基线 / 354=A15 线末版实测正常 / 366=A16 失效版）services.jar 反编译的**关键证据产物**，是 UltraHDR 不提亮/过曝问题根因链的静态实证基础。行号均可在本目录 smali 文件中直接复核。

- 源固件包：`TB710_ZUXOS_1.1.04.331`、`TB710_ZUXOS_1.1.04.354_Tool`、`TB710_ZUXOS_1.5.04.366_Tool`
- smali 由 baksmali 2.5.2 反汇编；354 为多 dex 结构（classes/classes2/classes3），366/331 单目录
- 完整机制结论见仓库主文档；本目录只回答"证据在哪一行"

## 一、报告文档

| 文件 | 来源固件 | 内容与作用 |
|---|---|---|
| `机制笔记-完整版.md` | 全部 | 主模型推理笔记（2026-09-05）：假说演变、hasSpline 真值终审、A15 闭环模型、`debug.sf.fp16_client_target` 终局突破的完整因果链 |
| `354解包对比报告.md` | 354 vs 331 | 354 与 331 上游 HDR 链（LocalDisplayAdapter 全家/DDC/clamper 62 文件）**逐字节一致**的对比实证 → 354 可作 A15 正常基线等价物，三个回归点全是 A16(366) 引入 |
| `331-366全量diff总报告.md` | 331 vs 366 | 全层 diff 总表（vendor XML/DTB/HWC/SF/libhwui/services.jar/ZUI 私改）：services.jar 门③ 为根因，native 层全部无罪 |
| `366-HdrBrightnessModifier精读报告.md` | 366 | A16 新增 HdrBrightnessModifier 抬亮机制逐行精读：apply 公式、flag 三处消费、DPC 双通道、过曝机制判定与修复点优先级 |
| `vendor-displayconfig-366.xml` | 366（与 331 逐字节一致，md5 645d017f） | 本机面板 displayconfig：`<sdrHdrRatioMap>`（2nits→ratio 8.0、500nits→1.5）证明 hasSpline 数据源存在——门①数据源无罪；brightnessToNitsSpline 30 点表同文件 |

## 二、smali 证据索引

### smali/366/ —— A16 失效版（回归点所在）

说明：366 特有的回归证据。A16 上游重构 + 联想魔改叠加，HDR ratio 写入链在此断/失真。

| 文件 | 证明什么 |
|---|---|
| `LocalDisplayAdapter$LocalDisplayDevice$1.smali:784-791` | handleHdrSdrNitsChanged **唯一调用点**，受 `DDC.hasSdrToHdrRatioSpline()` 门控——A16 新增的第一道门 |
| `…$1.smali:683-704` | `backlightToNits` 双通道取值：:683 主通道→mCurrentNits、:688 sdr 通道→mCurrentSdrNits（抬亮时 mCurrentNits 已是 HDR nits，模块误当 SDR nits 查表的值源失真点） |
| `…$1.smali:753` | `BacklightAdapter.setBacklight(sdrBk, sdrNits, bk, nits)` 五参落盘点 |
| `…$1.smali:365-391` | handle 方法体内第二道门（`mUseSurfaceControlBrightness‖mForceSurfaceControl`）与除式 `ratio=max(1,p1/p2)` |
| `…$1.smali:536-545` | Runnable.run() → setDisplayBrightness(brightnessState, sdrBrightnessState)，LSPosed hook 的系统原生触发点 |
| `LocalDisplayAdapter$LocalDisplayDevice.smali:2882-2888` | `mForceSurfaceControl = !DDC.hasQuirk("canSetBrightnessViaHwc")`——本机老 HWC 无 quirk → 恒 true |
| `…LocalDisplayDevice.smali:3970-4043` | `updateDeviceInfoLocked()` 内联想后门：`persist.sys.lenovo.is_test_mode=true` 时绕过门控直算真除式 ratio（:4032-4043）；:2381-2383 写入 `DisplayDeviceInfo.hdrSdrRatio` |
| `LocalDisplayAdapter$BacklightAdapter.smali:97-140` | setBacklight 分岔：非 SC 通道时 `LogicalLight.setBrightness(p3)` **sdr 值被丢弃**；SC 通道走 SF 五参 |
| `LocalDisplayAdapter.smali` | 与 331/354 逐字节一致的适配器主体（对照基线，变化只在 $1 内部类） |
| `DisplayDeviceConfig.smali:2098-2260` | `getHdrBrightnessFromSdr` 数学子：nits×min(spline,desiredRatio)→hdrNits→反向换算亮度档（:2133-2169/:2226-2240） |
| `DisplayDeviceConfig.smali:2678-2694` | `hasSdrToHdrRatioSpline()` 读 `mHbmData.sdrToHdrRatioSpline`——A16 改读 HBM 子对象（331 读顶层字段），门①判定点 |
| `DisplayDeviceConfig.smali:2934 / :3237 / :1941` | 两条 HBM 数据加载并存：标准链→mHbmData；zuiLoad（读 system/etc/display_hdr.xml）→mHdrBrightnessData（30 点 spline 活数据） |
| `DisplayDeviceConfig.smali:7714-7830` | `zuiLoadHighBrightnessModeData` 联想私有加载，:7816 写 mHdrBrightnessData——HdrBrightnessModifier 运行期第二道门的数据前提 |
| `brightness/clamper/HdrBrightnessModifier.smali:247-327` | **A16 新增抬亮器** apply()：`hdr=getHdrBrightnessFromSdr(sdrBrightness,mMaxDesiredHdrRatio,spline)`→`setHdrBrightness(min(hdr,cap))`（:269-286/:305）；NO_HDR 短路 :251-266 |
| `…HdrBrightnessModifier.smali:1003-1080` | recalculateMode 面积门槛判定（display_hdr.xml 的 ForNbm/ForHbm 双门槛→NO_HDR/NBM_HDR/HBM_HDR） |
| `…HdrBrightnessModifier.smali:897-960` | onHdrInfoChanged：SF 上报的 layers/ratio 写入并触发 DPC 重算 |
| `…HdrBrightnessModifier$1.smali:63-90` | SurfaceControlHdrLayerInfoListener 回调：size/ratio 归一（`max(1.0, ratio)`），post 到 handler |
| `…HdrBrightnessModifier$Injector.smali:78` | 监听器在 display token 级注册（不走 DisplayInfo/EVENT 链） |
| `…HdrBrightnessModifier$Mode.smali` | NO_HDR/NBM_HDR/HBM_HDR 三态枚举定义 |
| `…HdrBrightnessModifier$2.smali` | HDR 配置 SettingsObserver（onChange）——display_hdr.xml 变化时的重载观察者 |
| `…HdrBrightnessModifier$$ExternalSyntheticLambda0/1`、`$1$$ExternalSyntheticLambda0` | 主类引用的合成 lambda（回调转发），保证据完整性随主类归档 |
| `feature/DisplayManagerFlags.smali:2591-2603` | `useNewHdrBrightnessModifier()` flag 定义（编译期 is_fixed_read_only）——一处开关同时决定抬亮器注册、HdrClamper 旁路、HBMC boost 禁用三处消费 |

### smali/331/ —— A15 正常基线（对照物）

说明：A15 闭环自洽的参照系。handle 无门控、抬亮源是 HBMC(STRONG)、**无 HdrBrightnessModifier**（brightness/clamper/ 下仅有 HdrClamper 系，该类 366 才存在，故本目录无 clamper 子目录）。

| 文件 | 证明什么 |
|---|---|
| `LocalDisplayAdapter$LocalDisplayDevice$1.smali:253-334` | A15 handle **无任何门控**：直接 `max(1, hdrNits/sdrNits)` → floatEquals 节流 → mCurrentHdrSdrRatio + updateDeviceInfoLocked 广播——App ratio 与面板抬亮倍数同源同值的闭环实证 |
| `LocalDisplayAdapter$LocalDisplayDevice.smali` | handle 调用方与 updateDeviceInfoLocked 主体（与 354 逐字节一致） |
| `LocalDisplayAdapter$BacklightAdapter.smali` | `mUseSurfaceControlBrightness` 仅作背光通道选择，与 HDR 比值无关（A15 语义） |
| `LocalDisplayAdapter.smali` | 与 354 逐字节一致 |
| `DisplayDeviceConfig.smali` | A15 读顶层 `mSdrToHdrRatioSpline` 字段（loadHighBrightnessModeData 从标准 displayconfig 填充）——与 366 改读 mHbmData 形成对照 |
| `feature/DisplayManagerFlags.smali` | A15 flag 集（含 isHdrClamperEnabled）——无 useNewHdrBrightnessModifier |

### smali/354/ —— A15 线末版、用户实测 HDR 正常（基线等价物）

说明：354 与 331 的上游 HDR 链**逐字节一致**（见 `354解包对比报告.md` 第二节逐类对比表），归档此处作为"正常态快照"。与 331 相同，无 HdrBrightnessModifier（无 clamper 子目录）。354 相对 331 的差异仅限联想私有段（DPC 游戏模式禁 HDR 亮度分支、ZuiDisplayService 白名单扩充）。

| 文件 | 证明什么 |
|---|---|
| 全部 7 个文件 | 与 331 对应文件逐字节一致 → 三个 HDR 回归点（门③门控/spline 改读/HdrBrightnessModifier）全部为 A16(366) 引入，354 无关 |
| `LocalDisplayAdapter$LocalDisplayDevice$1.smali` | 正常态 handle 链实物：无门控、每帧真除式 |

## 三、结论速览（证据链一句话版）

门①数据源存在（XML sdrHdrRatioMap）→ A16 把 spline 读取点改道 mHbmData 并在 handle 唯一调用点加 hasSpline/SC 双门 → 老机型上链路不可达或失真 → A16 又新增 HdrBrightnessModifier 经联想 DPC 直通主背光抬亮 → App ratio 与面板实际抬亮不同源 → 不提亮/过曝；331/354 无此三回归点故正常；`debug.sf.fp16_client_target=true` 修 SF 合成端钳白为终局突破。

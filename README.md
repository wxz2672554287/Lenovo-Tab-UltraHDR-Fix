# Lenovo-Tab-UltraHDR-Fix

修复联想 TB710FU 平板升级 Android 16 之后坏掉的 UltraHDR 图片显示。

英文说明:[README.en.md](README.en.md)

## 这是什么

我有一台联想 TB710FU(SM8650,12.7 寸 LCD)。系统从 ZUI 17.0.04(Android 15)升到 ZUXOS 1.5.04.366(Android 16)之后,相册里的 UltraHDR 照片不再"亮起来"了,高光灰蒙蒙的,和普通 SDR 图看不出区别。奇怪的是 HDR 视频一直正常。

后来把 A15(331/354 两个固件)和 A16(366)的显示栈逐字节对比,又反汇编了 SurfaceFlinger,才把事情拼完整:这不是一个 bug,而是 A15→A16 显示栈大迁移时联想只适配了一半,断了三个环节(下面细讲)。中间还走过一段弯路——最早的修复让照片能提亮了,高光却一片死白(过曝),顺着这条线追下去,才挖到藏在图形合成器里的那个最深的坑。

最终落地的是两个东西的配合:

- **LSPosed 模块**(本仓库的 APK):修"比率没人写"。App 拿不到 HDR/SDR 亮度比,根本不会把照片建成 HDR 层,自然不提亮。
- **KernelSU 模块**(`ksu-fp16-module/`):修"合成时高光被钳白"。设一个 SurfaceFlinger 属性,让 FP16 图层的高光别被压进 8bit 的合成目标里。

两个都装好、重启一次,照片的观感回到和 Android 15 一样:高光正常提亮、渐变完整、不过曝,亮度动画也是平滑的。

## 效果对比

| 状态 | UltraHDR 照片的实际观感 |
|---|---|
| 原生 366(Android 16) | 完全不提亮,和 SDR 图一样 |
| 早期版本(只修了比率) | 能提亮,但高光一片死白,亮度越低越严重 |
| 本仓库最终组合 | 高光正常提亮,渐变完整,过曝消失,HDR 触发平滑无跳变 |

HDR 视频在上面任何一种状态下都正常。这个"对照组"后来成了破案的关键。

## 坏在哪:三个断点

先看 Android 15 上正常的闭环,不然讲不清哪里断了:

```
照片带 gainmap → App 读系统给的 HDR/SDR 亮度比(ratio)
→ ratio > 1 才把照片建成 HDR 层 → 系统按 ratio 抬高面板亮度,同时压暗 SDR 通道
→ ratio 写的值 = 面板此刻实际抬亮的倍数,三边自洽
```

关键在最后一句:ratio 不是凭空配的一个数,它是"面板实际抬了多少"的读数。A16 之后,这条闭环断了三处。

### 断点一:比率没人写了(所以照片不提亮)

A15 的系统会把厂商校准表(`<sdrHdrRatioMap>`,从 2nits 时的 8.0 倍到 500nits 时的 1.5 倍)装载成 spline;亮度每变一次,系统就按"实际抬亮倍数"写一次 ratio。A16 QPR 重构后这段装载链换了入口——XML 还在,解析代码还在,唯独"把解析结果送进去"的那一步没人干了。spline 恒为空,写 ratio 的函数永远等不到调用,字段停在 NaN。

App 读到 NaN,按规矩把 HDR 窗口降级成普通宽色域。没有 HDR 层,系统就不抬亮度;不抬亮度就没有 ratio;没有 ratio 就没有 HDR 层。死锁。

讽刺的是,面板抬亮这条链在 A16 里换了新实现、配了新数据,本身是活的——只是没人把 ratio 告诉 App。

### 断点二:比率修好了,合成端又钳白(所以一度过曝)

这是藏得最深的一个。联想这版 A16 是"新 SurfaceFlinger + 老 QTI 硬件合成器"的组合,SF 里有个编译期开关 `fp16_client_target` 被定死为 false。它管的事恰好是:计算 HDR 亮度比并参与合成编码。false 时这个计算恒返回 1.0,FP16 的 gainmap 图层高光在写进 8bit 合成目标时直接钳白,渐变丢失。

所以早期只修比率的版本,照片能提亮了,但高光全白,而且亮度越低 ratio 越大、死白越狠,和实测完全吻合。

HDR 视频为什么一直正常?视频走的是另一条通道(YUV 10bit + HLG 的 Libtonemap),同一个 ratio 在那条路上被正确使用:实测 HDR 白点 380nits、SDR 压暗 0.398,分毫不差。同一个值,一条路对、一条路错,这一对照直接把断点钉死在了合成端。

### 断点三:硬件合成的色调映射会闪屏

本机 DPU 的色调映射路径处理 gainmap 内容时会闪屏(这也是 AOSP 当年给老 vendor 栈加显示门控的原因)。开机时发一个 SurfaceFlinger 事务强制 GPU 合成即可绕过,代价是一点合成功耗。

## 怎么修

### LSPosed 模块:把 ratio 链接回去

挂钩点选在系统读取显示信息的原生位置(`getDisplayDeviceInfoLocked` 之后),做一个持续转写的"誊写员":

- **值不编造**:借系统自己的亮度换算,把主通道和 SDR 通道的实际亮度(nits)抓下来,按 A15 语义算真除式 `max(1, 主通道 / SDR通道)`。面板抬亮动画进行到哪,ratio 就跟到哪;收敛之后自然等于厂商曲线的终点值。亮度静止时值不变不写,零开销。
- **写完触发系统自己的事件链**:显示信息要靠事件广播刷新三层缓存(DMS / LogicalDisplay / 各 App 进程),只改值不发事件等于白写。
- **边界双重保险**:厂商 30 点校准曲线 + 面板物理峰值 750nits 钳制,任何亮度下 ratio × 当前 SDR 亮度不超过面板真实能力。
- 另有 mode 1(彻底不让面板抬亮、纯靠 App 内提亮的保守选项)、开机 GPU 合成开关和一套运行时 prop(见下表)。

### KSU 模块:让合成端别钳白

核心就是一行:`debug.sf.fp16_client_target=true`。原理:AOSP 的 FlagManager 给每个 SF 开关都留了 prop 覆盖通道,无条件压过编译期定死的值。但它必须在 SF 启动前设置(值在 SF 启动时静态缓存),手动 setprop 还得软重启才生效——所以做成 KSU 模块,借 system.prop 在开机时序里落位,每次开机自动补上。

模块顺手干了一件小事:开机用 root 预建日志文件 `/data/system/hdrfix.log` 并把属主改成 system。这个文件一旦被删,system_server 无权按原属主重建,模块日志就会静默断写——开机预建一次,永绝后患。

### 为什么两个都要装

两个断点在两个进程里,谁也替不了谁:

- 只装 KSU:ratio 还是 NaN,App 还是建不出 HDR 层,照片照旧不提亮。
- 只装 LSPosed:ratio 有了,合成端照旧钳白,过曝回来了。

## 安装

前提:解锁 BL、root(KernelSU / SukiSU / Magisk 均可刷 zip)、LSPosed 正常运行。只在 TB710FU + ZUXOS 1.5.04.366 上验证过,其他版本自担风险。

1. 从 Releases 下载两个文件:KSU 模块 zip 和模块 APK(仓库根目录也有 `TB710FU-HDR-fp16-client-target.zip`;根目录躺着的 v1.0.0~v1.0.4 APK 是历史存档,不要装)。
2. 在 KSU 管理器里刷入 zip。
3. 安装 APK,在 LSPosed 里启用模块,作用域勾选**系统框架(Android)**和**本应用**。
4. **重启一次**。prop 要在 SF 重启后才生效,hook 要装进新的 system_server,一次完整重启全覆盖。

装完打开 App 的"状态"页确认模块已激活、比率不是 NaN 也不是恒 1.5 不动,再到"测试"页看样图提亮。

注意:仓库里的 `ksu-module/`(displayconfig 叠加)是早期尝试的遗留,现在不需要它,也不要再装——它引入的变量会干扰机制验证。

## 常见问题

**过曝又回来了?**
先查 prop:`adb shell getprop debug.sf.fp16_client_target`,应当输出 `true`。不是的话说明 KSU 模块没生效:没刷入、被禁用、或刷完没重启。这个 prop 重启即丢,靠模块的 system.prop 每次开机补上,不要指望手动 setprop 一劳永逸。

**比率数值不动,或者某些 App 读不到?**
打开 App"日志"页看模块日志:有 `INSTALL ... OK` 和 `RATIO` / `AppRead` 行在刷,模块就是活的。酷安读不到值是酷安自己进程内检测严格,显示本身不受影响;判断显示是否正常,以状态页的 dumpsys 数值和测试页样图为准。

**照片还是不提亮?**
按顺序查:LSPosed 作用域是否勾了系统框架和本应用;装完是否重启过;开关页的总闸是否被打开。

## 运行时开关(App 开关页可改,或 setprop)

| 属性 | 默认 | 作用 |
|---|---|---|
| `persist.sys.tb710.hdrfix.mode` | `0` | 0=同源模式(默认);1=禁面板抬亮(保守);2=旧版对照,仅排障用 |
| `persist.sys.tb710.hdrfix.disable` | `0` | 总闸。运行中切 1 即时生效(ratio 写回 NaN);若模块加载前就是 1,钩子不会安装,重新启用需重启 |
| `persist.sys.tb710.hdrfix.gpu` | `1` | 开机强制 GPU 合成,重启生效 |
| `persist.sys.tb710.hdrfix.max` | `0` | ratio 上限,`>1` 才生效,在物理钳制之上再收紧 |
| `persist.sys.tb710.hdrfix.log` | `1` | 详细日志开关;关键诊断不受它控制,永远会写 |

日志主文件在 `/data/system/hdrfix.log`(root 可读,App 日志页可直接查看/导出),并镜像一份到 `/storage/emulated/0/hdr日志/`。

## 卸载

KSU 管理器删除 fp16 模块,LSPosed 停用本模块,重启。两个组件都不改系统分区(prop 随模块删除消失,hook 只存在于内存),卸载即完全回到出厂行为。

## 已知限制

- 酷安读不到 ratio 值(它进程内检测严格)。显示本身正常,系统链路和多数 App 不受影响。
- 高亮度段(约 480nits 以上)高光比厂商标称保守约 6%:钳制用的是 EDID/HWC 实测的物理峰值 750nits,而软件标称 800。宁可欠一点,不过曝。
- GPU 合成默认开。fp16 修复落地后闪屏是否复发还缺长期观察;确认不闪可以关掉省点电,重启生效。
- HDR 视频和照片同屏时,视频的色彩模式会接管全屏,有轻微偏色。与 ratio 无关,不处理。
- 只在 TB710FU + ZUXOS 1.5.04.366 上验证。其他机型的曲线、面板峰值、HWC 行为都不同,比率逻辑可以参考,不保证可用。

## 证据与排查记录

整个排查过程留了完整记录,都在仓库里。想复核机制的话,建议按这个顺序读:

- `SF源码排查-20260905.md` — SF 二进制反汇编:fp16 flag 的消费点,和 false 时恒返 1.0 的路径
- `KSU撬动fp16可行性-20260905.md` — prop 覆盖通道的源码依据与开机时序
- `fp16prop独立验证-20260905.md` — 独立验证报告(其保守结论被实机推翻,留档存照)
- `设备诊断-20260905*/` — 四轮实机 dumpsys/日志采样,含 HDR 视频对照
- `v2.0.10终审-模块.md` / `v2.0.10终审-App.md` — 发版前的两路独立终审
- `v2.0.7审查报告.md` / `v2.0.9审查报告.md` — 过程审查与可重跑的断言复核脚本
- `sdcard日志方案调研.md` — 为什么 system_server 写不了 sdcard,只能由 App 用 root 镜像

## 致谢与参考

- [LSPosed](https://github.com/LSPosed/LSPosed)、[libultrahdr](https://github.com/google/libultrahdr)
- [AOSP: Mixed SDR and HDR composition](https://source.android.com/docs/core/display/mixed-sdr-hdr) / [Tone mapping HDR luminance](https://source.android.com/docs/core/display/tone-mapping) / [Display Ultra HDR images](https://developer.android.com/media/grow/ultrahdr/display)
- 内置测试样图来自 [android/platform-samples](https://github.com/android/platform-samples)(Apache-2.0)
- 界面基于 [Miuix](https://github.com/YuKongA/Miuix)(Apache-2.0)

## License

Apache-2.0,见 [LICENSE](LICENSE)。仅供学习交流,请只在自己合法拥有的设备上使用;root / Xposed 可能导致失去保修、变砖或数据丢失,后果自负。

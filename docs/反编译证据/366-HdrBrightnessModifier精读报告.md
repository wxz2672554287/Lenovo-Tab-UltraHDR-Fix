# 366 (Android 16) HdrBrightnessModifier 过曝机制精读报告

> 子代理 B 报告。基线：`services-smali-366`（A16）vs `services-smali-331`（A15），路径前缀
> `D:\桌面\pro gt搞机\救砖镜像\解包分析\子代理证据\`。
> 标注约定：【实证】=smali 行号可直接复核；【推断】=逻辑推理，建议实机验证。

---

## 0. 一页结论（TL;DR）

1. 366 上新增的 `HdrBrightnessModifier` **不是"限制亮度"，而是"抬升亮度"**：SF 上报 HDR 层后，它按 `hdrBrightness = brightnessToNits(sdr亮度) × min(spline(sdrNits), SF DesiredRatio)` 把面板亮度档位**抬高**，写进 `DisplayBrightnessState.mHdrBrightness`（【实证】HdrBrightnessModifier.smali:247-327）。
2. 联想魔改的 DPC 把这个 hdrBrightness **直接当作动画目标喂给主背光通道**（target=hdrBrightness, sdrTarget=SDR 亮度，DualRampAnimator 双通道）（【实证】DisplayPowerController.smali:12289-12670 + animateScreenBrightness:2022-2120）。
3. 366 同时用 flag `useNewHdrBrightnessModifier()` **关闭了 A15 的两条旧通道**：HdrClamper 钳低（mUseHdrClamper=false）与 HBMC HDR-boost（disableHdrBoost()）（【实证】BrightnessRangeController.smali:62-67, HighBrightnessModeController.smali:672-682）。
4. 过曝的根因是"**面板抬亮 + App 侧 ratio 失真**"的组合：模块 F 写口 `ratio=spline(mCurrentNits)` 在抬亮发生时把 **HDR nits 误当 SDR nits** 查表，且 HDR 层存在期间 `mCurrentNits` 已是抬亮后的值 → App headroom 与面板实际抬亮倍数**不同源**，SDR UI 被面板抬亮 1.59~4 倍而 App/SF 无任何补偿（详见 §D）。v1.1.8 短路系统 handle **没有破坏某个活着的闭环**（若 hasSpline=false 则 handle 本来就永不执行）；真正被短路掉的是 `updateDeviceInfoLocked()` 触发的 `DisplayInfo` 重建广播，而这被模块自己的 getDisplayDeviceInfoLocked 写口部分替代了。
5. 首选修复：**hook `HdrBrightnessModifier.apply()` before 直接 return（禁抬亮）**，让面板永远停在 SDR nits；模块 ratio 写口在"无抬亮"前提下语义自动变正确（mCurrentNits 回归 SDR nits）。次选：hook `DisplayManagerFlags.useNewHdrBrightnessModifier()` 返回 false（整体回退 A15 语义，但注意 366 DPC 已删掉 331 的 HBM-STRONG 抬亮公式，回退后是"无抬亮的安全态"，且需评估 HdrClamper 钳低副作用）。

---

## A. HdrBrightnessModifier（366 新增）完整机制

类：`com/android/server/display/brightness/clamper/HdrBrightnessModifier.smali`（1356 行）

### A1. 启用条件

- 唯一开关：`DisplayManagerFlags.useNewHdrBrightnessModifier()`（【实证】DisplayManagerFlags.smali:2591-2603，内部是 `mNewHdrBrightnessModifier` FlagState，对应 AOSP DeviceConfig flag `com.android.server.display.flags.use_new_hdr_brightness_modifier`，命名出处为 AOSP 源码惯例【推断】）。
- 该 flag 有 **三处** 消费点：
  1. `BrightnessClamperController$Injector.smali:140-153`：为 true 时把 `HdrBrightnessModifier` 加入 modifiers 列表（false 时什么都不加）；
  2. `BrightnessRangeController.smali:62`：`mUseHdrClamper = !useNewHdrBrightnessModifier()`；
  3. `BrightnessRangeController.smali:65-67`：为 true 时调用 `mHbmController.disableHdrBoost()`。
- **运行期第二道门**：`onDisplayChanged()`（HdrBrightnessModifier.smali:775-895）中 `DDC.getHdrBrightnessData()==null` → `unregisterHdrListener()`（:801-804）。即本机必须存在 `/system/etc/display_hdr.xml`（zuiLoadHighBrightnessModeData 解析产物，DisplayDeviceConfig.smali:7714-7830，:7816 写 mHdrBrightnessData）才会注册 SF 监听。dumpsys 已证实 30 点 spline 存在 → 本机该门为真。

### A2. 创建/注册关系

- 创建者：`BrightnessClamperController$Injector`（DPC 持有 `mBrightnessClamperController`，DisplayPowerController.smali:1493-1497）。
- SF 上报入口：`HdrBrightnessModifier$1`（继承 `android.view.SurfaceControlHdrLayerInfoListener`）的 `onHdrInfoChanged(IBinder, int numberOfLayers, int w, int h, int type, float desiredHdrRatio)`（HdrBrightnessModifier$1.smali:63-90）：
  - `hdrLayerSize = (layers>0) ? w*h : -1`；
  - `desiredRatio = max(1.0, p6)`（:80-84 `Math.max(p4, 1.0f)`）；
  - post 到 handler → `HdrBrightnessModifier.onHdrInfoChanged(FF)`。
- 注册 API：`HdrBrightnessModifier$Injector.smali:78` `SurfaceControlHdrLayerInfoListener.register(displayToken)`（SF native 回调，**不经过 DisplayInfo/EVENT 链**，回答 coordinator 问题 4 的注册点部分；另一处注册在 `HighBrightnessModeController$HdrListener`，366 上被 disableHdrBoost 阻断，HighBrightnessModeController.smali:2250-2253 `mHdrBoostDisabled` 直接 return）。
- 与 HdrClamper 的关系：**互斥替代**。flag on → ClamperController 用 HdrBrightnessModifier、BRC 侧 HdrClamper 被旁路（mUseHdrClamper=false）+ HBMC boost 被禁；flag off → 两边都回到 A15 行为。`HdrClamper$HdrLayerInfoListener` 与 HdrBrightnessModifier 无任何代码引用关系，只是同类监听的两套实现。

### A3. 核心公式（逐行）

**① 模式判定** `recalculateMode(HdrBrightnessData)`（:1003-1080）：

| 条件 | 结果 | 行号 |
|---|---|---|
| data==null | NO_HDR | :1006-1011 |
| mHdrLayerSize == -1（无 HDR 层） | NO_HDR | :1015-1026 |
| 低电 && !allowInLowPowerMode | NO_HDR | :1030-1041 |
| size < minimumHdrPercentOfScreenForNbm × 屏幕总像素 | NO_HDR | :1044-1058 |
| size < minimumHdrPercentOfScreenForHbm × 屏幕总像素 | NBM_HDR | :1060-1073 |
| 其余 | HBM_HDR | :1075-1079 |

**② 比率更新** `onHdrInfoChanged(FF)`（:897-960）：`mHdrLayerSize=p1`（:901）、`mMaxDesiredHdrRatio=p2`（:944），mode 或 ratio 变化 → `onChanged()`（:956）触发 DPC 重算亮度。

**③ 抬亮计算** `apply(PowerRequest, DisplayBrightnessState$Builder)`（:247-327）：

```java
// 【实证】:251-255 data==null 或 :259-266 mode==NO_HDR → 直接 return
float sdrBrightness = builder.getBrightness();                    // :273（SDR 主亮度 0~1）
float hdr = DDC.getHdrBrightnessFromSdr(
        sdrBrightness, mMaxDesiredHdrRatio,
        mHdrBrightnessData.sdrToHdrRatioSpline);                  // :269-286
float cap = getMaxBrightness(mMode, mMaxBrightness, data);        // :289-297
//   NBM_HDR → min(hbmTransitionPoint, mMaxBrightness)（:722-733）
//   HBM_HDR → mMaxBrightness（:737-741）
builder.setHdrBrightness(Math.min(hdr, cap));                     // :300-305
builder.setCustomAnimationRate(mTransitionRate);                  // :308-310
builder.getVisibility…addModifier(4)                              // :313-319
```

**④ DDC 数学子** `DisplayDeviceConfig.getHdrBrightnessFromSdr(FFLandroid/util/Spline;)`（DisplayDeviceConfig.smali:2098-2260）：

```
backlight = getBacklightFromBrightness(sdrBrightness)     // :1247(:2133)
nits      = getNitsFromBacklight(backlight)               // :1248(:2141)
if (spline==null || nits==-1) return -1                   // :2100-2116
ratio    = min( spline.interpolate(nits), desiredRatio )  // :1253(:2158-2166)
hdrNits  = nits * ratio                                   // :1254(:2169)
hdrBacklight = clamp( getBacklightFromNits(hdrNits), mBacklightMinimum, mBacklightMaximum ) // :1259-1260
return getBrightnessFromBacklight(hdrBacklight)          // :1261
```

即：**输入是当前 SDR 亮度（0~1），先换算成 nits，查 `mHdrBrightnessData.sdrToHdrRatioSpline`（本机 30 点表：nits=4→ratio 4.0、500→1.585、502.2→1.593，峰值封顶 800nits），输出"把面板背光抬到 sdrNits×ratio"对应的亮度档位**。`mMaxDesiredHdrRatio` 是 SF 上报的期望比率（图片 gainmap headroom 类语义），与 spline 取 min。

**⑤ HDR 层消失回落**：SF 报 layers=0 → `$1.lambda` 得 size=-1 → `onHdrInfoChanged` → `recalculateMode`→NO_HDR → `onChanged` → DPC 重新 clamp；此时 `apply()` 在 :259-266 短路，`DisplayBrightnessState.mHdrBrightness` 回到 Builder 默认 **-1.0f**（【实证】DisplayBrightnessState$Builder.smali:41-46），DPC 不再抬亮，主通道回到 SDR 亮度。

### A4. applyStateChange 的输出无人消费

`applyStateChange()`（:329-364）把 `mMaxDesiredHdrRatio / mSdrHdrRatioSpline / mMaxHdrBrightness` 写进 `BrightnessClamperController$ModifiersAggregatedState`；全 366 树内检索 `getMaxDesiredHdrRatio / getSdrHdrRatioSpline / getMaxHdrBrightness` 的 getter 调用点为 **零**（仅 Controller 内部 needToNotifyExternalListener 做新旧状态比对）。即聚合状态当前是"写而未读"的死数据，HdrBrightnessModifier 对外生效的唯一通道就是 `apply()` 的 `setHdrBrightness`。

---

## B. HdrClamper（331 vs 366）对照

### B1. 331 的 HdrClamper：纯"钳低"

331 文件 850 行（366 为 868 行，diff 见 §B2）。

- **监听**：`HdrClamper$HdrLayerInfoListener`（331 同名内部类）`onHdrInfoChanged` → `hdrVisible = layers>0 && w*h >= mHdrMinPixels`（HdrLayerInfoListener.smali:120-135 lambda；mHdrMinPixels = 宽×高×minimumHdrPercentOfScreen，resetHdrConfig HdrClamper.smali:727-745 `mul-int p2,p3`、`mul-float p2,p4`）。
- **钳低**：`clamp(F)F`（331 HdrClamper.smali:143-154）= `min(brightness, mMaxBrightness)`。
- **上限计算**：`recalculateBrightnessCap(data, lux, hdrVisible)`（:548-644）：`hdrVisible && 自动亮度开` → `mMaxBrightness = findBrightnessLimit(data, ambientLux)`（按 display_hdr.xml 的 maxBrightnessLimits-lux 表查；findBrightnessLimit :385-457）；不满足 → `reset()`（:660-698）把 mMaxBrightness 复位 **1.0f**（即不限制）。
- **宿主**：331 的 `BrightnessRangeController` 持有 mHdrClamper，`mUseHdrClamper = isHdrClamperEnabled()`（331 BRC 构造 :62 附近，flag `DisplayManagerFlags.isHdrClamperEnabled` 331 DisplayManagerFlags.smali:1287）；clamp 的实际调用点在 331 BRC 内（331 BrightnessRangeController.smali:360-366 `if(mUseHdrClamper) brightness=mHdrClamper.clamp(brightness)`）。331 的 `BrightnessClamperController$Injector` **不含任何 HDR 类**（rg 无结果）。

**结论：331 上 HdrClamper 语义 = "HDR 在场时限制亮度上限（向下钳）"，且只在 lux 命中 limit 表时才真的钳；平时恒等 1.0 不起作用。**

### B2. 366 的 HdrClamper：被 flag 旁路的死代码

366 版与 331 的 diff（去除 .line 后）：
- `clamp(F)F` 方法**被删除**（366 无此方法）；
- 新增 `hasBrightnessLimits()`（:477-502）；
- 字段改名（`mMaxBrightnessLimits`→`maxBrightnessLimits` 等）。

366 中 `HdrClamper;->clamp(` 的调用点为零；BRC 只在 `mUseHdrClamper=true` 时才 `resetHdrConfig/getTransitionRate/onAmbientLuxChange`（366 BRC:324-326、524-531、616-659），而 `mUseHdrClamper = !useNewHdrBrightnessModifier()`（:62）= **false**。→ 366 的 HdrClamper 是**文件在、链路断**的死代码。

### B3. 语义差

| | A15 HdrClamper | A16 HdrBrightnessModifier |
|---|---|---|
| 方向 | 限制亮度上限（min） | 计算并写入更高的 HDR 亮度档（抬升） |
| 输出 | 钳制后的主亮度 | 独立的 `state.mHdrBrightness` |
| 生效面 | 自动亮度开 && lux 命中 limit 表 | 只要 SF 报 HDR 层且过面积门槛 |
| 面积门槛来源 | vendor displayconfig 的 `minimumHdrPercentOfScreen` | display_hdr.xml 的 `minimumHdrPercentOfScreenForNbm/ForHbm`（**两个不同文件的两套门槛**） |

---

## C. DPC 侧亮度双通道（决定 nits/sdrNits 语义）

### C1. 366：联想魔改把 hdrBrightness 喂进主背光通道

`updatePowerStateInternal` 尾段（DisplayPowerController.smali:12289-12670）：

```
v2  = clampScreenBrightness(finalBrightness)               // :12289(:1961)
v31 = state.getHdrBrightness()                              // :12306(:1969)
if (v31 != v19)  → 联想 HDR 抬亮分支 (:cond_799)            // v19 恒 -1.0f【实证】10624 行 const/high16 v19,-1.0f
else if (BRC.getHighBrightnessMode()==2 /*STRONG*/
         && (modifier&1)==0 && (modifier&2)==0) → 同上分支   // :12313-12339(:1970-1975)
else → v3 = v2（SDR 亮度），不抬亮 (:cond_794)

联想分支内（:12373-12441, :1978-1991）:
  if (key_smart_mode_switch==1 && persist.sys.ingame=="true")
      → "in Game performance mode, HDR brightness disenable !" : v3 = v2   // 游戏模式豁免
  else if (v2 > 0.03922 /*≈10/255*/) {
      v3 = state.getHdrBrightness();                        // :12441(:1984)
      SystemProperties.set("persist.sys.brightness_hdr","1");
  } else v3 = v2;
  v1 = max(v3, BRC.getHdrTransitionRate());                 // :12452(:1989)
  BrightnessReason.addModifier(4);
...
animateScreenBrightness(v3 /*target*/, v2 /*sdrTarget*/, rate)   // :12646 / :12665
```

`animateScreenBrightness(FFFZ)`（:2022-2120）的 DEBUG 串 `"Animating brightness: target=…, sdrTarget=…, rate=…"`（:2040-2066）直接证明了参数语义，随后 `mScreenBrightnessRampAnimator`（`RampAnimator$DualRampAnimator`）.animateTo(target, sdrTarget, rate)（:2077-2079）。动画双通道经两个 FloatProperty 落到 `DisplayPowerState`：
- `DisplayPowerState$2` → `setScreenBrightness()`（DisplayPowerState.smali:915）→ 主通道；
- `DisplayPowerState$3` → `setSdrScreenBrightness()`（:1037，字段 :55）→ sdr 通道。

最终 `LDA$LocalDisplayDevice$1.run()`（LocalDisplayAdapter$LocalDisplayDevice$1.smali:536-545）以 `setDisplayBrightness(val$brightnessState, val$sdrBrightnessState)` 落盘：

```
v0 = brightnessToBacklight(p1);  v3 = brightnessToBacklight(p2)   // :673-680
v4 = backlightToNits(v0)  → mCurrentNits    = v4                  // :683-704
v5 = backlightToNits(v3)  → mCurrentSdrNits = v5                  // :688-697
BacklightAdapter.setBacklight(v3/*sdrBk*/, v5, v0/*bk*/, v4)      // :753
if (DDC.hasSdrToHdrRatioSpline()) handleHdrSdrNitsChanged(v4,v5)  // :784-791
```

`BacklightAdapter.setBacklight(FFFF)`（LocalDisplayAdapter$BacklightAdapter.smali:97-140）：
- `!mUseSurfaceControlBrightness && !mForceSurfaceControl` → 只 `LogicalLight.setBrightness(p3)`（**只有主通道进物理背光，sdr 值被丢弃**，:104-113）；
- 否则 → `SurfaceControlProxy.setDisplayBrightness(token, sdrBk, sdrNits, bk, nits)` 五参 SF 通道（:126-134）。

`mForceSurfaceControl = !DDC.hasQuirk("canSetBrightnessViaHwc")`（【实证】LocalDisplayAdapter$LocalDisplayDevice.smali:2882-2888）；`setForceSurfaceControl` 全树仅此一处调用。本机老高通 HWC → `mUseSurfaceControlBrightness=false`（背景已证），而 v1.1.7 时代有"每帧写 ratio"现象说明 `SC||force` 门当时是通的（见 §E1d）。

### C2. 331 对照：抬亮源是 HBMC(STRONG) 而非 state

331 DPC 有同构的联想分支（331 DisplayPowerController.smali:11686-11800），差异只有抬亮值的来源：

```
331: gate = BRC.getHighBrightnessMode()==2(STRONG) && modifier 干净 && brightness>0.03922
     target = BRC.getHdrBrightnessValue()                  // :11727
366: gate = state.getHdrBrightness()!=-1（放宽，HBM STRONG 仅作备选）
     target = state.getHdrBrightness()
```

331 的抬亮值：`BRC.getHdrBrightnessValue()` → `HBMC.getHdrBrightnessValue()`（331 HighBrightnessModeController.smali:1453-1490）：

```java
return mHdrBrightnessCfg.getHdrBrightnessFromSdr(mBrightness, mMaxDesiredHdrSdrRatio);
// = DDC.getHdrBrightnessFromSdr(sdr亮度, desiredRatio)（:2074 两参版，用 mHbmData.sdrToHdrRatioSpline）
```

其中 `mMaxDesiredHdrSdrRatio` 由 `HBMC$HdrListener.onHdrInfoChanged` 写入：`mIsHdrLayerPresent = layers>0 && w*h ≥ 屏幕像素×mHbmData.minimumHdrPercentOfScreen`，然后 `mMaxDesiredHdrSdrRatio = max(1, SF上报ratio)`（331 HdrListener.smali:626-629），并触发 `onBrightnessChanged` 重算。HBM 进入 STRONG（HDR boost）后 DPC 才抬亮。

**公式级对照（A15 闭环为什么自洽，回答 D4）**：

```
设 SDR 亮度 b，nits(b) = brightnessToNitsSpline(b)
A15: desired R = max(1, SF_ratio)                       (HdrListener)
     抬亮 target = brightness( nits(b) × min(spline_hbm(nits(b)), R) )   (HBMC.getHdrBrightnessValue→DDC)
     sdrTarget   = b
     面板:  mCurrentNits    = nits(b) × r,  r := min(spline_hbm(nits(b)), R)
            mCurrentSdrNits = nits(b)
     handle: mCurrentHdrSdrRatio = max(1, mCurrentNits/mCurrentSdrNits) = r
             → floatEquals 节流 → updateDeviceInfoLocked → DisplayInfo.hdrSdrRatio = r → App
     ⇒ App 读到的 r 与面板实际抬亮倍数是【同一个 r】（同一条 spline、同一次除式真值），端到端自洽，不过曝。
```

（331 的 handle 无 SC/force 门控，331 LocalDisplayAdapter$LocalDisplayDevice$1.smali:253-334，直接 `max(1,p1/p2)`；366 才加门控。）

### C3. `mCurrentSdrNits≈400 恒定` 的解释

代码层没有任何"0.5×"常量写 sdr 通道（DPC 全文无 `const 0x3f000000` 进 animate 的 sdr 参；`getSdrScreenBrightness` 只被读）。【推断】最可能：dumpsys 采样期间用户手动亮度恰好固定（如 50% 档），`brightnessToNitsSpline(0.5)≈400nits`；双通道动画只在值变化时写，故 sdr 通道静止。若 HDR 抬亮发生，`mCurrentNits` 会跳到 `400×r`，两者出现恒定差——这与"1.734249≈nits/sdrNits"的观测吻合（400×1.734≈694nits，对应约 0.87 的亮度档），但也与 §E1 的模块写口假说兼容，见下。

---

## D. 过曝机制判定（最终结论）

### D1. 酷安 UltraHDR 会不会触发 SF HDR 层 → 抬亮？

会。【实证部分】：三个监听者（HBMC$HdrListener、HdrClamper、HdrBrightnessModifier）全部注册在 **display token 级** `SurfaceControlHdrLayerInfoListener`，SF 汇总的是该 display 上**所有** HDR 数据空间的图层；366 DPC dumpsys 出现过 `reason=temporary[hdr], strat=TemporaryBrightnessStrategy` 亮度事件，说明该机 HDR 层信息确实到达过 framework 并驱动过亮度策略。【推断部分】：A16 hwui 对 UltraHDR 默认以 HDR 数据空间渲染 gainmap 图层，酷安图片区一旦超过面积门槛（display_hdr.xml 的 `minimumHdrPercentOfScreenForNbm`，具体值未知）即触发 `HdrBrightnessModifier`。抬亮倍数 `r = min(spline(sdrNits), SF_desiredRatio)`；App 若从 `Display.getHdrSdrRatio()` 拿到**同一个 r**则自洽，否则失配。

### D2. "任何亮度都过曝"的最可能完整机制链

1. 【实证】366 删除了 331 的 HBM-STRONG 抬亮公式（366 DPC 全文 0 处 `getHdrBrightnessValue`），抬亮唯一来源 = `state.getHdrBrightness()`（HdrBrightnessModifier 产物）。
2. 【实证】HDR 层在场时联想 DPC 把 hdrBrightness 作为**主背光** target（§C1），sdrTarget=SDR 亮度。物理落盘时若 `mUseSurfaceControlBrightness=false && mForceSurfaceControl=true`（本机 quirk 缺失时成立），`setBacklight` 走 SF 五参通道，sdr 压暗依赖 **SF/HWC 的 display-brightness 支持**；老高通 HWC 若实际不支持（或支持但 sdr 通道语义未实现），SDR 内容会跟着面板一起被抬亮 1.59~4 倍 → **整屏过曝**【推断，需 dumpsys SurfaceFlinger 验证 sdr 通道是否生效】。
3. 【实证+推断】用户模块 F 写口 `ratio=min(spline(mCurrentNits), 800/mCurrentNits)`：
   - 无抬亮时 `mCurrentNits`=SDR nits，公式≈331 语义，正确；
   - **抬亮发生时 `mCurrentNits` 已经是抬亮后的 HDR nits**（§C1 主通道即抬亮通道），模块把 HDR nits 误当 SDR nits 查 spline：
     - 低亮（sdrNits≈50）：系统抬到 50×r(r≈2.5~4)≈125~200；模块读 mCurrentNits≈125~200 → spline≈2.2~3.0，且 800/200=4 不封顶 → App headroom≈2.2~3.0 ≠ 面板倍数 → SDR UI 被面板抬 2.5~4 倍，**重度过曝**；
     - 高亮（sdrNits≈600）：面板抬 1.59×→960→backlight clamp 封顶 800；模块读 800 → min(spline(800)外推 1.593, 800/800=1.0)=1.0 → headroom 被钳到 1，gainmap 熄灭倾向 → 抬亮仍在 → SDR 仍 1.59× 过曝，且与 v1.1.8 早前"高亮过曝"观测吻合；
     - 反馈环（coordinator 疑点 2）：抬亮→mCurrentNits↑→模块 ratio↓→App headroom↓→gainmap 减弱，但 **HDR 层判定只看图层数据空间不看亮度**，HDR 层不会因此消失，故不构成完整振荡，而是"抬亮常驻 + ratio 失配"的稳态过曝；只有 ratio 逼近 1 时 gainmap 视觉熄灭、离开又恢复，表现为闪烁感【推断】。
4. 【推断】331 为什么正常：同一张图在 331 上，HBMC 的面积门槛是 **vendor displayconfig 的 `minimumHdrPercentOfScreen`**，而 366 用 **display_hdr.xml 的 ForNbm/ForHbm 双门槛**——两套值不同。若 331 门槛大（小图不触发）或 331 抬亮+真 ratio（§C2 公式）自洽（App r=面板 r），两种原因都能解释"331 不过曝"；从代码看 331 闭环在数学上是严格自洽的，这是最硬的解释。
5. 【判定】"任何亮度都过曝"= 面板抬亮（常驻、被联想 DPC 直通主通道）× App ratio 失真（模块把 HDR nits 当 SDR nits）× sdr 压暗通道可能失效（老 HWC）三者叠加；即使模块 ratio 恰好正确，只要 sdr 压暗不生效，SDR UI 仍会被抬亮——所以"让 ratio 反映真实抬亮"单独不能治愈，**必须先禁抬亮或证实 sdr 通道生效**。

### D3. 候选修复点（按优先级）

| 优先级 | hook 点 | 方式 | 理论依据 | 风险 |
|---|---|---|---|---|
| ★1 | `HdrBrightnessModifier.apply(DisplayPowerRequest, DisplayBrightnessState$Builder)` | **before 直接 return**（不写 setHdrBrightness，state 保持 -1） | 联想 DPC 抬亮分支的唯一触发源就是 `getHdrBrightness()!=-1`（DisplayPowerController.smali:12306,12441）；短路后主通道永远=SDR 亮度，`mCurrentNits==mCurrentSdrNits`，模块 F 写口 `spline(mCurrentNits)` 语义自动修正为 331 近似，系统 handle（若活）也算出 1——三处同时归位 | 户外强光 HBM STRONG 备选门（:12313-12339）进入后 v3=getHdrBrightness()=-1 → isValidBrightnessValue 失败 → 无动画，亮度保持原值，HBM STRONG 抬亮在 366 本来就缺公式（366 无 getHdrBrightnessValue），无额外损失 |
| ★2 | `DisplayManagerFlags.useNewHdrBrightnessModifier()` | before → return false | 一处 hook 同时：ClamperController 不注册 HdrBrightnessModifier（Injector:140）、BRC 恢复 HdrClamper（:62）与 getHdrTransitionRate（:315）、HBMC 不再 disableHdrBoost（:65-67）→ 结构上整体回到 A15 形态 | 366 DPC 已删 331 的 HBM 抬亮公式，回退后是"无抬亮安全态"而非"331 抬亮态"；HdrClamper 若 display_hdr.xml 配了 maxBrightnessLimits+lux 表，可能在 HDR 视频场景钳低亮度（331 同配置正常，风险低）；flag 或有其他消费点（已核实仅 Injector/BRC 两类三处） |
| ★3 | 修正模块 F 写口 + 复刻 A15 handle：hook `LDA$LocalDisplayDevice$1.setDisplayBrightness(FF)` after，读 v4/v5（nits/sdrNits），`ratio=max(1,v4/v5)`，floatEquals 节流后写 `mCurrentHdrSdrRatio` 并调 `updateDeviceInfoLocked()`（即 A15 handle 语义原位复刻，也回答 coordinator 问题 3） | 恢复"抬亮倍数=App ratio"的 A15 式自洽，并恢复 DisplayInfo 重建广播（App/SF/DPC 感知链） | 仅当 sdr 压暗通道（SF 五参）真实生效时才治愈过曝，否则只是让 ratio 正确、SDR 仍被抬亮；EVENT 广播频率需节流（A15 用 floatEquals+syncRoot，照抄即可）；updateDeviceInfoLocked 重建 mInfo 开销为单显示设备对象重建，可接受 |
| ★4 | `DisplayDeviceConfig.getHdrBrightnessFromSdr(FFLandroid/util/Spline;)` | after → return 入参 sdrBrightness（ratio 恒 1） | 抬亮被中和为恒等，HdrBrightnessModifier 链路其余部分保持原样 | 多余；★1 更精准 |
| 不推荐 | hook `DisplayBrightnessState.getHdrBrightness()` after→-1 | 效果同 ★1 但影响所有消费点（DPC:12306/12441 两处之外还有 dump/equals），覆盖过宽 | —— |

另注意：`updateDeviceInfoLocked()`（LocalDisplayAdapter$LocalDisplayDevice.smali:3970-4043）内有联想后门——`persist.sys.lenovo.is_test_mode=true` 时每次重建都执行 `mCurrentHdrSdrRatio = max(1, mCurrentNits/mCurrentSdrNits)`（:4032-4043，**绕过 handle 的 SC/force 门控**），且 :2381-2383 把它写进 `DisplayDeviceInfo.hdrSdrRatio`。若用户可开此属性，等于免费获得"真值 ratio + DisplayInfo 广播"，是零 hook 的官方通道（但 CTS 标记语义与副作用需实机评估）。

### D4. 331 为什么不过曝（公式级，已在 §C2 给出）

331 的自洽闭环：`App ratio = mCurrentHdrSdrRatio = max(1, nits/sdrNits) = min(spline_hbm(sdrNits), SF_desiredRatio) = 面板实际抬亮倍数`，三个量同源同值；SF/OS 端 SDR 白被抬亮倍数精确补偿（或低亮时因面积门槛根本不抬亮）。366 把抬亮源换成 HdrBrightnessModifier 并由联想直通主通道后，若继续用"独立的"模块写口提供 ratio，任何与真抬亮倍数不同源的 ratio 都会造成 SDR/HDR 双重提亮或欠亮——v1.1.8 的 `spline(mCurrentNits)` 因 `mCurrentNits` 在抬亮时已变性（HDR nits）而必然失配。

---

## E. 追加疑点回答（coordinator 补充件）

### E1. 疑点1：v1.1.7 "系统 handle 每帧写 1.734249" 与 hasSpline 的矛盾

- a) **调用点门控**：`$1.setDisplayBrightness` 内 `if (DDC.hasSdrToHdrRatioSpline()) handleHdrSdrNitsChanged(v4,v5)`（LocalDisplayAdapter$LocalDisplayDevice$1.smali:784-791）——这是 handle 的**唯一**调用点，全树无第二处（rg 证实）。hasSpline=false ⇒ handle 永不执行。
- b) **366 谁填 mHbmData.sdrToHdrRatioSpline**：这里必须修正 coordinator 的"静态定案"——366 的 `HighBrightnessModeData.loadHighBrightnessModeData` **仍然解析 sdrHdrRatioMap**：DisplayDeviceConfig.smali:2934 调静态方法后，其内部 `loadSdrHdrRatioMap(HighBrightnessMode)`（config/HighBrightnessModeData.smali:239，方法体 :368-395：`getSdrHdrRatioMap_all()==null → return null`，否则 `DisplayDeviceConfigUtils.createSpline(...)`）的结果经 `move-object/from16 v20, v1`（:305 附近）传入 15 参构造器 `(FFJJJZFLandroid/util/Spline;…)`,构造器 :59 `iput p11 → sdrToHdrRatioSpline`。**"A16 重构版不再解析"不成立于本 ROM**。因此 hasSpline 的真值取决于 vendor displayconfig XML（display_id_4630947039571902851.xml）里 `<high_brightness_mode>` 是否含 `sdr_hdr_ratio_map_all` 子节点——该 XML 不在解包目录，**无法静态定案**。dumpsys 只见 `mHdrBrightnessData` 的 30 点 spline 与 `highestHdrSdrRatio=4.0`（后者来自 `getSdrHdrRatioFromConfig` 标量，HighBrightnessModeData.smali:142 与 toString），未见 mHbmData 的 spline 打印，**弱证据倾向 map_all 缺失 → hasSpline=false**【推断】。实机一验即知：`dumpsys display | grep -A3 "sdrToHdrRatioSpline"` 看 HBM 段，或抓 DisplayDeviceConfig 启动日志。
- c) **1.734249 的语义**：handle 内公式是 `ratio = max(1.0, p1/p2)`（$1.smali:384-391：div-float p1,p2 后 max）——**纯除式，不是查表**。若 1.734249 确系系统 handle 所写，则它=nits/sdrNits 真值（例如 400→693.7nits，对应约 87% 亮度档）。若模块 v1.1.7 无 F 写口，则可反推 hasSpline=true（XML 有 map_all）；若 v1.1.7 已有任何写 mCurrentHdrSdrRatio 的 hook，则该归因不成立。两者必居其一，请以模块 v1.1.7 源码定谳。
- d) **mForceSurfaceControl**：默认由 `!DDC.hasQuirk("canSetBrightnessViaHwc")` 决定（LDD:2882-2888），本机无该 quirk 时恒 true → handle 门控（$1:365-381 `mUseSurfaceControlBrightness||mForceSurfaceControl`）恒满足，NaN 兜底分支不触发。

### E2. 疑点2：反馈环与值源正确性

- a) **抬亮改的是哪个通道**：主背光通道（target）被抬，sdrTarget 保持 SDR 亮度（§C1）。`mCurrentNits`（=主通道 nits）在抬亮期间=抬亮后值——模块 F 写口若以 `mCurrentNits` 为 SDR nits 查表即失真（§D2.3）。
- b) **dumpsys mCurrentNits 在 HDR 前后**：代码上必然跳变（nits=抬亮后 nits，甚至 800 封顶）；建议实机在酷安打开 UltraHDR 图前后各采一次 `dumpsys display | grep mCurrentNits -A2` 验证【待实测】。
- c) **A15 的 sdrBrightness 压暗机制**：A15 331 同样是 DualRampAnimator 双通道（331 DPC:1930 "sdrTarget"、1950-1952 animateTo），抬亮时 target=HDR 值、sdrTarget=SDR 值，**不是除法压暗**，而是"主通道抬、sdr 通道不动"，由 SF 五参 `setDisplayBrightness(token, sdrBk, sdrNits, bk, nits)` 让合成器对 SDR 内容用 sdr 亮度、HDR 内容用全亮度——这正是 A15 不把 SDR UI 一起抬亮的机制前提。366 完全继承该通道（§C1），所以"366 结构上也能自洽"；出问题的是 ratio 值源与（可能的）sdr 通道实效。
- d) **v1.1.8 短路 handle 是否破坏活闭环**：若 hasSpline=false（倾向成立），handle 本来就是死代码，短路无实际作用，也**没有破坏闭环**——闭环本来断在"App 读不到任何 ratio"，模块 F 写口是唯一 ratio 源；真正缺的 `updateDeviceInfoLocked` 广播已由模块 hook `getDisplayDeviceInfoLocked` 后的 `info.hdrSdrRatio` 写入部分替代（该 hook 在 mInfo 每次重建时生效，重建由其它 display 属性变化驱动，频率低于 handle 但可用）。若 hasSpline=true，则短路掉的正是 A15 式真值源，此时 ★3（原位复刻 handle）是最对症的修复。

---

## 关键证据行号速查表

| 结论 | 文件:行号 |
|---|---|
| HdrBrightnessModifier.apply 公式与 setHdrBrightness | brightness/clamper/HdrBrightnessModifier.smali:247-327（:269-286/:305） |
| recalculateMode 面积门槛（ForNbm/ForHbm） | 同上:1003-1080（:1044-1079） |
| SF 回调 size/ratio 归一（max(1,ratio)） | HdrBrightnessModifier$1.smali:63-90 |
| 注册 SurfaceControlHdrLayerInfoListener | HdrBrightnessModifier$Injector.smali:78 |
| flag 三处消费（Injector/BRC×2） | BrightnessClamperController$Injector.smali:140-153；BrightnessRangeController.smali:62-67 |
| disableHdrBoost/监听阻断 | HighBrightnessModeController.smali:672-682；:2250-2253 |
| DPC 抬亮分支（v19=-1、0.03922、ingame 豁免、persist.sys.brightness_hdr） | DisplayPowerController.smali:12289-12520（:1961/:1969-1996 原行号）；v19 赋值 10624 |
| animate 双通道（target/sdrTarget） | DisplayPowerController.smali:2022-2120；调用 :12646/:12665 |
| PowerState 双通道字段 | DisplayPowerState.smali:55/:915/:1037；$3 FloatProperty |
| LDA 落盘与 mCurrentNits/SdrNits | LocalDisplayAdapter$LocalDisplayDevice$1.smali:615-810（:697/:704/:753/:784-791） |
| handle 门控与除式 | 同上:345-450（:365-391/:396/:427/:432） |
| setBacklight 单/双通道分岔 | LocalDisplayAdapter$BacklightAdapter.smali:97-140 |
| mForceSurfaceControl=quirk 反相 | LocalDisplayAdapter$LocalDisplayDevice.smali:2882-2888 |
| is_test_mode 后门（真除式 ratio） | LocalDisplayAdapter$LocalDisplayDevice.smali:3970-4043；info.hdrSdrRatio :2381-2383 |
| getHdrBrightnessFromSdr 数学子 | DisplayDeviceConfig.smali:2098-2260（:2133-2169/:2226-2240） |
| hasSdrToHdrRatioSpline | DisplayDeviceConfig.smali:2678-2694 |
| 两条 HBM 数据加载都跑 | DisplayDeviceConfig.smali:2934（标准→mHbmData）与 :3237/:1941（zui→mHdrBrightnessData） |
| 366 仍解析 map_all（修正定案） | config/HighBrightnessModeData.smali:104-330（:239/:305/:59） |
| 331 无抬亮旁路（对照） | 331 HdrClamper.smali:143-154/:548-644/:727-800；331 BRC:360-366 |
| 331 抬亮公式（HBMC→DDC） | 331 HighBrightnessModeController.smali:1453-1490；331 DPC:11727 |
| 331 HdrListener ratio 写入 | 331 HighBrightnessModeController$HdrListener.smali:610-640 |
| 331 handle 无门控（对照） | 331 LocalDisplayAdapter$LocalDisplayDevice$1.smali:253-334 |
| 366 DPC 无 getHdrBrightnessValue（删 331 公式） | rg 计数 366=0 / 331=1 |

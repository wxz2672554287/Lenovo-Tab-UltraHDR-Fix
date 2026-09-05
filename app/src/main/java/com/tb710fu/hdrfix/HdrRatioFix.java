package com.tb710fu.hdrfix;

import android.os.IBinder;
import android.os.Parcel;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import de.robv.android.xposed.IXposedHookLoadPackage;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;
import de.robv.android.xposed.callbacks.XC_LoadPackage;

/**
 * HDR Ratio Fix v2.0 — LSPosed module for the Lenovo TB710FU tablet (SM8650, LCD 800nits).
 *
 * === v2.0 机制定案(基于 354/331/366 三镜像反编译 + AOSP 源码全链核实) ===
 *
 * Android 16 (ZUXOS 1.5.04.366) 上 UltraHDR 断链与过曝的真实机制:
 *
 *  1. 系统的 A15 ratio 链在 366 上【其实是活的】:
 *     - vendor displayconfig XML 含 <sdrHdrRatioMap>(2nits→8.0, 500nits→1.5),
 *       366 的 HighBrightnessMode 解析器仍读同名元素(config/HighBrightnessMode.smali:237)
 *       → mHbmData.sdrToHdrRatioSpline 非 null → hasSdrToHdrRatioSpline()==true
 *     - 门控 mUseSurfaceControlBrightness(false) || mForceSurfaceControl(恒 true,
 *       = !hasQuirk("canSetBrightnessViaHwc")) 满足
 *     - setDisplayBrightness 每次运行(亮度/抬亮动画)时 handleHdrSdrNitsChanged 写入
 *       真除式 ratio = max(1, mCurrentNits/mCurrentSdrNits) = 面板实际抬亮倍数
 *     (v1.1.7 观察到的 1.734249 = 693.7nits/400nits 真除式,归因正确;
 *      v1.1.1 "从未被调"是亮度静止时 setDisplayBrightness 不运行的假象)
 *
 *  2. 出厂态死锁(鸡生蛋): 无 HDR 层 → ratio=1/NaN(亮度静止时停在初值 NaN)
 *     → ViewRootImpl 把 HDR 窗口降级为宽色域 → 永远没有 HDR 层 → 图片不提亮。
 *
 *  3. v1.1.7/v1.1.8 的错误: 短路系统 handle(砍死真值源)+ hasSpline 强制 false,
 *     让 F 写口的失真值独裁 —— F 写口用【抬亮后的 mCurrentNits】(主通道=HDR nits)
 *     查 spline,把 HDR nits 当 SDR nits,低亮失配 2.5~4 倍、高亮被 800/nits 钳到 1
 *     → "任何亮度都过曝"(时间线与 v1.1.7 引入完全吻合)。
 *
 * === v2.0 修复策略(三模式, persist.sys.tb710.hdrfix.mode 切换,免重启动态生效) ===
 *
 *  mode 0【同源模式,默认】—— 复刻 A15 三量同源自洽:
 *   - 不再短路系统 handle(改为只读观察日志),不再干预 hasSpline
 *   - F 写口(getDisplayDeviceInfoLocked after)只做【破冰引导】:
 *       系统 mCurrentHdrSdrRatio 语义值(info.hdrSdrRatio) NaN 或 <=1.0 时
 *       → 写引导值 r = clamp( min(oemSpline(sdrNits), 800/sdrNits), 1.0, userMax )
 *       其中 sdrNits 优先取 adapter.mCurrentSdrNits(SDR 通道,不受抬亮影响)
 *       否则(系统值 >1.0,即 DPC 抬亮正在进行)→ 完全让位,只记日志
 *   - 只写 info 返回值,【绝不写 mCurrentHdrSdrRatio 字段】→ 单一写入者(系统),
 *     零竞争;引导后 App 建 HDR 层 → SF 上报 desired → DPC(HdrBrightnessModifier,
 *     30 点 OEM spline)抬亮 → 系统 handle 写真值 → 我们让位 → 三量同源闭环。
 *
 *  mode 1【禁抬亮模式】—— 面板亮度永不抬升,App-only boost:
 *   - 在 mode 0 之上,hook HdrBrightnessModifier.apply before-setResult(null)
 *     (签名: apply(DisplayManagerInternal$DisplayPowerRequest,
 *                  DisplayBrightnessState$Builder)V)
 *     → state.mHdrBrightness 恒 -1 → 联想 DPC 直通分支永不进 → 面板恒 SDR nits
 *   → mCurrentNits==mCurrentSdrNits,系统 handle 恒写 1,F 恒引导(值恰好无失真)
 *   → SDR UI 绝不被拖亮(过曝绝迹),HDR 提亮由 gainmap+SF tone map 承担(部分压缩)。
 *
 *  mode 2【旧版对照】—— v1.1.8 原行为(handle 短路 + hasSpline 强制 false + F 双写),
 *     仅用于 A/B 对照,不建议日常使用。
 *
 * 其他保留: GPU 合成(SF tx1008, DPU 路径处理 gainmap 异常已证)、双路径落盘日志、
 * prop 总开关/日志开关/上限/GPU 开关。
 */
public class HdrRatioFix implements IXposedHookLoadPackage {

    private static final String TAG = "[HDRRatioFix] ";
    private static final String VERSION = "1.0.0-20260905";

    private static final String PROP_DISABLE = "persist.sys.tb710.hdrfix.disable";
    private static final String PROP_LOG = "persist.sys.tb710.hdrfix.log";
    private static final String PROP_MAX = "persist.sys.tb710.hdrfix.max";
    private static final String PROP_GPU = "persist.sys.tb710.hdrfix.gpu";
    private static final String PROP_MODE = "persist.sys.tb710.hdrfix.mode";
    private static final String PROP_HOOKED = "persist.sys.tb710.hdrfix.hooked";
    private static final String PROP_VERSION = "persist.sys.tb710.hdrfix.version";

    private static final long LOG_THROTTLE_MS = 1000L;

    private static volatile long sLastLogObsMs = 0L;
    private static volatile int sLastMode = -1;
    // 500 ms prop cache for the hot path (getDisplayDeviceInfoLocked fires on
    // every binder display query; uncached reflective prop reads there showed
    // up as measurable overhead during brightness ramps).
    private static volatile long sPropCacheMs = 0L;
    private static volatile boolean sCachedDisabled = false;
    private static volatile int sCachedMode = 0;
    private static volatile float sCachedUserMax = 0f;
    private static volatile long sLastApplyObsMs = 0L;
    // B4: in-flight dedup for fullBootstrap — prevents nested/concurrent
    // duplicate field writes + events when the observed nits change while a
    // bootstrap (and its synchronous rebuild path) is still on the stack.
    private static final java.util.concurrent.atomic.AtomicBoolean sBootstrapInFlight =
            new java.util.concurrent.atomic.AtomicBoolean(false);
    // B2: previous disable state, to detect the rising edge.
    private static volatile boolean sWasDisabled = false;

    @Override
    public void handleLoadPackage(XC_LoadPackage.LoadPackageParam lpparam) {
        try {
            // Companion-app self hook: leaves a live activation marker in the
            // app's own SharedPreferences (best practice per rovo89/XposedBridge#64).
            if ("com.tb710fu.hdrfix".equals(lpparam.packageName)) {
                XposedHelpers.findAndHookMethod("com.tb710fu.hdrfix.App",
                        lpparam.classLoader, "onCreate", new XC_MethodHook() {
                            @Override
                            protected void afterHookedMethod(MethodHookParam param) {
                                try {
                                    android.content.Context ctx =
                                            (android.content.Context) param.thisObject;
                                    ctx.getSharedPreferences("hook_status", 0).edit()
                                            .putBoolean("module_hooked", true)
                                            .putLong("hook_time", System.currentTimeMillis())
                                            .putString("hook_version", VERSION)
                                            .apply();
                                } catch (Throwable ignored) {
                                }
                            }
                        });
                return;
            }
            if (!"android".equals(lpparam.packageName)) {
                return;
            }
            SysProps.set(PROP_HOOKED, "1");
            SysProps.set(PROP_VERSION, VERSION);
            // v2.0.5: the log on/off prop may have been left OFF by an earlier
            // toggle in the companion app (it is persist.*), which silently
            // swallowed ALL diagnostics — including the FileLog writer itself,
            // so the log file never appeared. Critical diagnostics now bypass
            // the switch (logAlways); report the switch state at load.
            logAlways("loaded v" + VERSION + ", PROP_LOG="
                    + SysProps.getBoolean(PROP_LOG, true)
                    + " (critical diagnostics bypass this switch)");
            // NOTE: if disabled AT LOAD TIME no hooks are installed at all;
            // re-enabling afterwards still requires a reboot (known limit).
            if (SysProps.getBoolean(PROP_DISABLE, false)) {
                logAlways("disabled by prop at load, skip (re-enable needs reboot)");
                return;
            }
            final Class<?> deviceClass = Class.forName(
                    "com.android.server.display.LocalDisplayAdapter$LocalDisplayDevice",
                    false, lpparam.classLoader);
            Class<?> listenerClass = Class.forName(
                    "com.android.server.display.LocalDisplayAdapter$LocalDisplayDevice$1",
                    false, lpparam.classLoader);
            Class<?> ddcClass = Class.forName(
                    "com.android.server.display.DisplayDeviceConfig",
                    false, lpparam.classLoader);

            // =================================================================
            // HOOK 1 — handleHdrSdrNitsChanged:只观察(mode 2 才短路)。
            //
            // v2.0 认知:366 上系统 handle 链是活的(hasSpline=true,门控满足),
            // 它写的 max(1, nits/sdrNits) 是"面板实际抬亮倍数"真值 —— 这正是
            // A15 三量同源闭环的核心,必须让它继续跑。我们只在 after 读一眼
            // 系统写了什么(诊断日志),绝不干预。
            // mode 2(旧版对照)时恢复 v1.1.8 的 before-setResult(null) 短路。
            // =================================================================
            try {
                XposedHelpers.findAndHookMethod(listenerClass, "handleHdrSdrNitsChanged",
                        float.class, float.class, new XC_MethodHook() {
                            @Override
                            protected void beforeHookedMethod(MethodHookParam param) {
                                if (isDisabledCached()) {
                                    return; // master switch: no interference
                                }
                                if (currentMode() == 2) {
                                    param.setResult(null); // v1.1.8 legacy path
                                }
                            }

                            @Override
                            protected void afterHookedMethod(MethodHookParam param) {
                                if (currentMode() == 2) {
                                    return; // short-circuited, nothing to observe
                                }
                                try {
                                    float nits = (Float) param.args[0];
                                    float sdr = (Float) param.args[1];
                                    // handleHdrSdrNitsChanged lives on the anonymous
                                    // inner class $1; the ratio field lives on the
                                    // outer LocalDisplayDevice reachable via this$1.
                                    Object device = XposedHelpers.getObjectField(
                                            param.thisObject, "this$1");
                                    float written = XposedHelpers.getFloatField(
                                            device, "mCurrentHdrSdrRatio");
                                    long now = System.currentTimeMillis();
                                    if (now - sLastLogObsMs >= LOG_THROTTLE_MS) {
                                        sLastLogObsMs = now;
                                        log("SYSTEM handle nits=" + nits + " sdr=" + sdr
                                                + " -> mCurrentHdrSdrRatio=" + written);
                                    }
                                } catch (Throwable ignored) {
                                }
                            }
                        });
                logAlways("INSTALL hook handleHdrSdrNitsChanged(observe): OK");
            } catch (Throwable t) {
                logAlways("INSTALL handleHdrSdrNitsChanged FAIL: " + t);
            }

            // =================================================================
            // HOOK 2 — hasSdrToHdrRatioSpline:mode 2 才强制 false(旧版对照)。
            // v2.0: 366 原生即 true(XML sdrHdrRatioMap 被解析),不再干预。
            // =================================================================
            try {
                XposedHelpers.findAndHookMethod(ddcClass, "hasSdrToHdrRatioSpline",
                        new XC_MethodHook() {
                            @Override
                            protected void beforeHookedMethod(MethodHookParam param) {
                                if (isDisabledCached()) {
                                    return; // master switch: no interference
                                }
                                if (currentMode() == 2) {
                                    param.setResult(Boolean.FALSE);
                                }
                            }
                        });
                logAlways("INSTALL hook hasSdrToHdrRatioSpline(mode2-only): OK");
            } catch (Throwable t) {
                logAlways("INSTALL hasSdrToHdrRatioSpline FAIL: " + t);
            }

            // =================================================================
            // HOOK 3 — HdrBrightnessModifier.apply:mode 1 时短路(禁抬亮)。
            //
            // 366 新增(A15 只有 HdrClamper):SF 上报 HDR 层后,
            //   hdrBrightness = brightness( nits × min(oemSpline(nits), SF_desired) )
            // 由联想魔改 DPC 直通主背光通道(抬亮)。mode 1 下我们让 apply 直接
            // return → state.mHdrBrightness 恒 -1 → 面板永停 SDR nits → SDR UI
            // 绝不被拖亮。hook 无条件安装,运行时按 mode 动态生效(免重启切换)。
            // =================================================================
            try {
                Class<?> reqClass = Class.forName(
                        "android.hardware.display.DisplayManagerInternal$DisplayPowerRequest",
                        false, lpparam.classLoader);
                Class<?> builderClass = Class.forName(
                        "com.android.server.display.brightness.DisplayBrightnessState$Builder",
                        false, lpparam.classLoader);
                Class<?> modifierClass = Class.forName(
                        "com.android.server.display.brightness.clamper.HdrBrightnessModifier",
                        false, lpparam.classLoader);
                XposedHelpers.findAndHookMethod(modifierClass, "apply",
                        reqClass, builderClass, new XC_MethodHook() {
                            @Override
                            protected void beforeHookedMethod(MethodHookParam param) {
                                // v2.0.5 read-only observation: if this line
                                // appears in the log, the A16 HDR-boost chain is
                                // ENABLED on this build (flag on). Its absence
                                // during HDR playback means the panel boost
                                // never runs — which would explain why the
                                // system handle never writes a truth >1.
                                long now = System.currentTimeMillis();
                                if (now - sLastApplyObsMs >= 2000L) {
                                    sLastApplyObsMs = now;
                                    float desired = Float.NaN;
                                    try {
                                        desired = XposedHelpers.getFloatField(
                                                param.thisObject, "mMaxDesiredHdrRatio");
                                    } catch (Throwable ignored) {
                                    }
                                    log("HdrBrightnessModifier.apply CALLED"
                                            + " desired=" + desired
                                            + " (panel-boost chain ENABLED)");
                                }
                                if (currentMode() == 1 && !isDisabledCached()) {
                                    // Suppress the panel HDR boost entirely;
                                    // DisplayBrightnessState.mHdrBrightness stays -1.
                                    // (Skipped while the master disable switch is on.)
                                    param.setResult(null);
                                }
                            }
                        });
                logAlways("INSTALL hook HdrBrightnessModifier.apply(mode1+observe): OK");
            } catch (Throwable t) {
                // Class may be absent on future OTAs; non-fatal.
                logAlways("INSTALL HdrBrightnessModifier.apply FAIL (non-fatal): " + t);
            }

            // =================================================================
            // HOOK 4 — F 写口 getDisplayDeviceInfoLocked after:持续写入者。
            //
            // v2.0.7 定案(用户 LSPosed 日志截图实证):
            //  * hasSdrToHdrRatioSpline() 运行时 = FALSE —— 尽管静态看 XML
            //    有数据且解析器读同名元素,实际运行时 mHbmData.sdrToHdrRatioSpline
            //    并未被填充(推断:366 的加载链没把 vendor XML 的 map 送进
            //    HighBrightnessModeData 构造器)。=> 系统 handle 永不被调,
            //    mCurrentHdrSdrRatio 字段没有别的活写入者。
            //  * DPC 抬亮链活着:nitsCapture(main=755 sdr=542) 实证双通道
            //    分离 —— HdrBrightnessModifier 的 flag 是开的,SF 上报
            //    desired=5.0 驱动抬亮,面板真的在抬。
            //  * 文件日志双路径 EACCES(root 建的文件被 rm 后 system_server
            //    无权重建)—— logcat/LSPosed 日志通道才是可靠诊断出口。
            //
            // 结论:整条链上唯一的断点就是 hasSpline→handle→ratio 数字链。
            // 因此 v2.0.7 删除 v2.0.1 的"让位"逻辑(那是为"handle 活着"设计
            // 的,handle 死了让位只会让字段冻结在旧值):本 hook 现在是字段
            // 的持续写入者 —— 每次读取时用 nitsCapture 捕获的 SDR 通道 nits
            // 计算 ratio = clamp(min(oemSpline(sdrNits), 800/sdrNits)),值变
            // 化才写字段+发事件(floatDiffers 节流,亮度静止时零开销)。
            // 这正是 A15 语义的稳态值:A15 上抬亮后 nits=spline(sdr)×sdr,
            // 真除式 ratio=spline(sdr) 恒定 —— 我们写的值与 A15 收敛值同式,
            // 且与 HdrBrightnessModifier 的抬亮公式(min(spline,desired)=
            // spline(desired 恒 5.0>spline 上限 4.0))同源同步。
            //
            // mode 2:v1.1.8 原行为对照用。
            // =================================================================
            XposedHelpers.findAndHookMethod(deviceClass, "getDisplayDeviceInfoLocked",
                    new XC_MethodHook() {
                        @Override
                        protected void afterHookedMethod(MethodHookParam param) {
                            try {
                                Object info = param.getResult();
                                if (info == null) {
                                    return;
                                }
                                if (!isFirstDisplay(param.thisObject)) {
                                    return;
                                }
                                float existing;
                                try {
                                    existing = XposedHelpers.getFloatField(info, "hdrSdrRatio");
                                } catch (Throwable e) {
                                    logAlways("FIELD hdrSdrRatio FAIL: " + e);
                                    return;
                                }

                                // Dynamic disable check (v2.0.6+): read on
                                // every callback so the app switch truly works
                                // without a reboot. On the rising edge we reset
                                // the field to NaN (stock behaviour) + notify,
                                // because we are the only live writer — just
                                // stopping writes would freeze the last value.
                                boolean disabledNow = isDisabledCached();
                                if (disabledNow && !sWasDisabled) {
                                    sWasDisabled = true;
                                    XposedHelpers.setFloatField(info, "hdrSdrRatio", Float.NaN);
                                    fullBootstrap(param.thisObject, Float.NaN);
                                    log("DISABLED -> field reset to NaN +EVENT");
                                    return;
                                }
                                sWasDisabled = disabledNow;
                                if (disabledNow) {
                                    return;
                                }
                                int mode = currentMode();
                                if (mode == 2) {
                                    legacyWrite(param.thisObject, info, existing);
                                    return;
                                }

                                // ---- mode 0/1: continuous writer ----
                                // The system handle never runs (hasSpline is
                                // false at runtime), so we are the only live
                                // writer of mCurrentHdrSdrRatio. Keep the
                                // field/DisplayInfo in lockstep with the panel's
                                // actual SDR white point captured at
                                // setDisplayBrightness time.
                                float fieldVal;
                                try {
                                    fieldVal = XposedHelpers.getFloatField(
                                            param.thisObject, "mCurrentHdrSdrRatio");
                                } catch (Throwable e) {
                                    fieldVal = existing;
                                }
                                float target = bootstrapRatio(param.thisObject);
                                if (!Float.isNaN(target) && target >= 1.0f) {
                                    if (floatDiffers(fieldVal, target)
                                            && sBootstrapInFlight.compareAndSet(false, true)) {
                                        try {
                                        XposedHelpers.setFloatField(info, "hdrSdrRatio", target);
                                        sLastGoodRatio = target > 1.0f ? target : sLastGoodRatio;
                                        fullBootstrap(param.thisObject, target);
                                        log("RATIO field " + val(fieldVal)
                                                + " -> " + target
                                                + " (sdr=" + sLastSdrNits
                                                + " mode=" + mode + " +EVENT)");
                                        } finally {
                                            sBootstrapInFlight.set(false);
                                        }
                                    } else if (Float.isNaN(existing)
                                            || Math.abs(existing - target) >= 0.005f) {
                                        // Field already current (rebuild path);
                                        // only heal the returned info.
                                        XposedHelpers.setFloatField(info, "hdrSdrRatio", target);
                                    }
                                    long now = System.currentTimeMillis();
                                    if (now - sLastLogObsMs >= LOG_THROTTLE_MS) {
                                        sLastLogObsMs = now;
                                        log("AppRead hdrSdrRatio=" + val(existing)
                                                + " target=" + target);
                                    }
                                }
                            } catch (Throwable t) {
                                logAlways("hookObs err: " + t);
                            }
                        }
                    });
            logAlways("INSTALL hook getDisplayDeviceInfoLocked(continuous): OK");

            // Optional observation: confirm the system's own nits/sdr values via
            // setDisplayBrightness (throttled to 1/s so it stays cheap).
            // v2.0.5 nits capture — COMPUTE FROM ARGS, don't read fields:
            // brightnessToBacklight(F)F and backlightToNits(F)F are public
            // final methods on this very $1 class ($1.smali:302 etc.), and the
            // args (brightness, sdrBrightness) are the DPC's two channels. We
            // reflectively call the system's own converters on the args — no
            // field reads, no call-order pairing, cannot desync.
            try {
                XposedHelpers.findAndHookMethod(listenerClass, "setDisplayBrightness",
                        float.class, float.class, new XC_MethodHook() {
                            @Override
                            protected void beforeHookedMethod(MethodHookParam param) {
                                float b = (Float) param.args[0];
                                float s = (Float) param.args[1];
                                if (!Float.isNaN(b) && !Float.isNaN(s)) {
                                    try {
                                        if (sB2BMethod == null || sB2NMethod == null) {
                                            sB2BMethod = param.thisObject.getClass()
                                                    .getMethod("brightnessToBacklight", float.class);
                                            sB2NMethod = param.thisObject.getClass()
                                                    .getMethod("backlightToNits", float.class);
                                            sB2BMethod.setAccessible(true);
                                            sB2NMethod.setAccessible(true);
                                        }
                                        float bkMain = (Float) sB2BMethod.invoke(param.thisObject, b);
                                        float nitsMain = (Float) sB2NMethod.invoke(param.thisObject, bkMain);
                                        float bkSdr = (Float) sB2BMethod.invoke(param.thisObject, s);
                                        float nitsSdr = (Float) sB2NMethod.invoke(param.thisObject, bkSdr);
                                        boolean changed = nitsMain != sObservedMainNits
                                                || nitsSdr != sObservedSdrNits;
                                        sObservedMainNits = nitsMain;
                                        sObservedSdrNits = nitsSdr;
                                        sObservedAtMs = System.currentTimeMillis();
                                        if (changed) {
                                            log("nitsCapture(main=" + nitsMain
                                                    + " sdr=" + nitsSdr + ") from args b="
                                                    + b + " s=" + s);
                                        }
                                    } catch (Throwable t) {
                                        logAlways("nitsCompute FAIL: " + t);
                                    }
                                }
                                long now = System.currentTimeMillis();
                                if (now - sLastLogObsMs < LOG_THROTTLE_MS) {
                                    return;
                                }
                                sLastLogObsMs = now;
                                log("setDisplayBrightness CALL brightness=" + b
                                        + " sdrBrightness=" + s
                                        + " | " + (Float.isNaN(b) || Float.isNaN(s)
                                        ? "=> EARLY RETURN (NaN arg)"
                                        : (b > s + 0.0001f
                                        ? "=> HDR boost in progress"
                                        : "=> equal (no boost)")));
                            }
                        });
                logAlways("INSTALL hook setDisplayBrightness(arg-nits): OK");
            } catch (Throwable t) {
                logAlways("INSTALL setDisplayBrightness FAIL: " + t);
            }

            logAlways("hooks installed in system_server (v" + VERSION
                    + ", mode=" + currentMode() + ") — observe+bootstrap+mode1-suppressor");

            if (SysProps.getBoolean(PROP_GPU, true)) {
                Thread t = new Thread(() -> {
                    try {
                        Thread.sleep(15000);
                        forceGpuComposition();
                    } catch (Throwable e) {
                        logAlways("gpu thread err: " + e);
                    }
                }, "hdrfix-gpu");
                t.setDaemon(true);
                t.start();
            }
        } catch (Throwable t) {
            logAlways("init failed (module inactive): " + t);
        }
    }

    // ---- mode ----------------------------------------------------------------

    /** 0 = same-source bootstrap (default), 1 = suppress panel boost, 2 = v1.1.8 legacy. */
    private static void refreshPropCache() {
        long now = System.currentTimeMillis();
        if (now - sPropCacheMs < 500L) {
            return;
        }
        sPropCacheMs = now;
        sCachedDisabled = SysProps.getBoolean(PROP_DISABLE, false);
        int m = (int) SysProps.getLong(PROP_MODE, 0L);
        sCachedMode = (m < 0 || m > 2) ? 0 : m;
        sCachedUserMax = SysProps.getFloat(PROP_MAX, 0f);
    }

    private static boolean isDisabledCached() {
        refreshPropCache();
        return sCachedDisabled;
    }

    private static int currentMode() {
        refreshPropCache();
        int m = sCachedMode;
        if (m < 0 || m > 2) {
            m = 0;
        }
        if (m != sLastMode) {
            logAlways("MODE -> " + m + (m == 0 ? " (same-source bootstrap)"
                    : m == 1 ? " (suppress HDR panel boost)" : " (v1.1.8 legacy)"));
            sLastMode = m;
        }
        return m;
    }

    // ---- value source ---------------------------------------------------------

    private static volatile float sLastSdrNits = Float.NaN;
    private static volatile float sLastGoodRatio = Float.NaN;
    // Cached reflective Methods for the per-frame nits computation (4 calls
    // per setDisplayBrightness during ramps; uncached getMethod each time was
    // the single largest hook overhead).
    private static volatile Method sB2BMethod;
    private static volatile Method sB2NMethod;

    // Observed nits captured at setDisplayBrightness time (freshest possible).
    private static volatile float sObservedMainNits = Float.NaN;
    private static volatile float sObservedSdrNits = Float.NaN;
    private static volatile long sObservedAtMs = 0L;
    private static volatile long sLastDiagMs = 0L;

    /**
     * Ratio source (A15 true-division, gradual):
     *
     *   1. observed channels at setDisplayBrightness time (< 10 s fresh):
     *        ratio = max(1, mainNits / sdrNits)
     *      This REPORTS what the panel is actually doing. During the DPC boost
     *      ramp main climbs frame by frame, so the ratio follows the animation
     *      gradually — exactly the A15 behaviour (v2.0.7-v2.0.10 wrote the
     *      spline endpoint instead, which made HDR kick in as one jarring
     *      jump + a hiccup from the big single-step event). After the ramp
     *      settles, main = sdr × min(spline30(sdr), desired) so the converged
     *      ratio equals the spline endpoint — same math, smooth process.
     *   2. only-sdr observed or fields: spline30(sdr) endpoint + 750 cap
     *      (stable fallback when brightness is static).
     *   3. lastGoodRatio().
     *
     * userMax (ratio cap) is applied on every path.
     */
    private static float bootstrapRatio(Object device) {
        long now = System.currentTimeMillis();
        boolean obsFresh = now - sObservedAtMs < 10_000L;
        // A15 true-division first: report the panel's ACTUAL boost, which
        // follows the DPC ramp frame by frame (gradual HDR kick-in / release).
        if (obsFresh && nitsValid(sObservedMainNits) && nitsValid(sObservedSdrNits)
                && sObservedSdrNits > 0.0f) {
            float live = Math.max(1.0f, sObservedMainNits / sObservedSdrNits);
            sLastSdrNits = sObservedSdrNits;
            refreshPropCache();
            float userMax0 = sCachedUserMax;
            if (userMax0 > 1.0f && live > userMax0) {
                live = userMax0;
            }
            if (now - sLastDiagMs >= 60_000L) {
                sLastDiagMs = now;
                log("bootstrapDiag src=liveDiv main=" + sObservedMainNits
                        + " sdr=" + sObservedSdrNits + " -> ratio=" + live
                        + " userMax=" + userMax0);
            }
            return live;
        }
        float sdrNits = Float.NaN;
        String source = null;
        if (obsFresh && nitsValid(sObservedSdrNits)) {
            sdrNits = sObservedSdrNits;
            source = "obsSdr";
        } else if (obsFresh && nitsValid(sObservedMainNits)) {
            sdrNits = sObservedMainNits;
            source = "obsMain";
        } else {
            Object adapter = null;
            try {
                adapter = XposedHelpers.getObjectField(device, "this$0");
            } catch (Throwable t) {
                if (now - sLastDiagMs >= 60_000L) {
                    sLastDiagMs = now;
                    log("bootstrapDiag adapter FAIL: " + t);
                }
            }
            if (adapter != null) {
                try {
                    float sdr = XposedHelpers.getFloatField(adapter, "mCurrentSdrNits");
                    if (nitsValid(sdr)) {
                        sdrNits = sdr;
                        source = "fieldSdr";
                    }
                } catch (Throwable t) {
                    if (now - sLastDiagMs >= 60_000L) {
                        sLastDiagMs = now;
                        log("bootstrapDiag fieldSdr FAIL: " + t);
                    }
                }
                if (!nitsValid(sdrNits)) {
                    try {
                        float main = XposedHelpers.getFloatField(adapter, "mCurrentNits");
                        if (nitsValid(main)) {
                            sdrNits = main;
                            source = "fieldMain";
                        }
                    } catch (Throwable t) {
                        if (now - sLastDiagMs >= 60_000L) {
                            sLastDiagMs = now;
                            log("bootstrapDiag fieldMain FAIL: " + t);
                        }
                    }
                }
            }
        }
        if (!nitsValid(sdrNits)) {
            sLastSdrNits = Float.NaN;
            if (now - sLastDiagMs >= 60_000L) {
                sLastDiagMs = now;
                log("bootstrapDiag NO nits source (obs=" + sObservedMainNits
                        + "/" + sObservedSdrNits + " age=" + (now - sObservedAtMs)
                        + "ms) -> fallback");
            }
            return lastGoodRatio();
        }
        sLastSdrNits = sdrNits;
        float mapRatio = interp(SPLINE_NITS, SPLINE_RATIO, sdrNits);
        float physicalCap = PEAK_NITS / sdrNits;
        float ratio = Math.min(mapRatio, physicalCap);
        refreshPropCache();
        float userMax = sCachedUserMax;
        if (userMax > 1.0f && ratio > userMax) {
            ratio = userMax;
        }
        if (ratio < 1.0f) {
            ratio = 1.0f;
        }
        if (now - sLastDiagMs >= 60_000L) {
            sLastDiagMs = now;
            log("bootstrapDiag src=" + source + " sdrNits=" + sdrNits
                    + " -> ratio=" + ratio
                    + " userMax=" + sCachedUserMax);
        }
        return ratio;
    }

    private static float lastGoodRatio() {
        if (nitsValid(sLastGoodRatio) && sLastGoodRatio > 1.0f) {
            return sLastGoodRatio;
        }
        return 1.5f; // the map's 500-nit design point, safe fallback
    }

    /**
     * Replicates the tail of the A15 system handle: write the field, then call
     * {@code updateDeviceInfoLocked()} inside the adapter sync root so that
     * mInfo is rebuilt from the new field value and EVENT_DEVICE_INFO_ADJUSTED
     * is dispatched — this is what refreshes the DMS / LogicalDisplay / app
     * DisplayInfo caches. Without the event, apps never observe the bootstrap
     * value (their DisplayInfo is event-driven).
     */
    private static void fullBootstrap(Object device, float target) {
        try {
            Object syncRoot = null;
            try {
                Object adapter = XposedHelpers.getObjectField(device, "this$0");
                syncRoot = XposedHelpers.callMethod(adapter, "getSyncRoot");
            } catch (Throwable ignored) {
            }
            final Object dev = device;
            Runnable body = () -> {
                try {
                    // B4: re-check inside the lock — a concurrent writer (or a
                    // nested rebuild) may already have stored this exact value.
                    float cur = XposedHelpers.getFloatField(dev, "mCurrentHdrSdrRatio");
                    if (!floatDiffers(cur, target)) {
                        return;
                    }
                    XposedHelpers.setFloatField(dev, "mCurrentHdrSdrRatio", target);
                } catch (Throwable e) {
                    logAlways("fullBootstrap FIELD FAIL: " + e);
                    return;
                }
                try {
                    Method m = dev.getClass().getMethod("updateDeviceInfoLocked");
                    m.setAccessible(true);
                    m.invoke(dev);
                } catch (Throwable e) {
                    logAlways("fullBootstrap updateDeviceInfoLocked FAIL: " + e);
                }
            };
            if (syncRoot != null) {
                // Same lock the system handle uses; reentrant if the caller
                // already holds it (getDisplayDeviceInfoLocked callers do).
                synchronized (syncRoot) {
                    body.run();
                }
            } else {
                body.run();
            }
        } catch (Throwable t) {
            logAlways("fullBootstrap err: " + t);
        }
    }

    private static boolean floatDiffers(float a, float b) {
        if (Float.isNaN(a) != Float.isNaN(b)) {
            return true;
        }
        return Math.abs(a - b) >= 0.005f;
    }

    // ---- legacy (mode 2, v1.1.8 behaviour) ------------------------------------

    private static void legacyWrite(Object device, Object info, float existing) {
        Object adapter = null;
        try {
            adapter = XposedHelpers.getObjectField(device, "this$0");
        } catch (Throwable ignored) {
        }
        float nits = Float.NaN;
        if (adapter != null) {
            try {
                nits = XposedHelpers.getFloatField(adapter, "mCurrentNits");
            } catch (Throwable ignored) {
            }
        }
        float targetRatio = Float.NaN;
        if (nitsValid(nits)) {
            targetRatio = interp(SPLINE_NITS, SPLINE_RATIO, nits);
            float cap = PEAK_NITS / nits;
            targetRatio = Math.min(targetRatio, cap);
            refreshPropCache();
        float userMax = sCachedUserMax;
            if (userMax > 1.0f && targetRatio > userMax) {
                targetRatio = userMax;
            }
            if (targetRatio < 1.0f) {
                targetRatio = 1.0f;
            }
        }
        if (Float.isNaN(targetRatio)) {
            targetRatio = lastGoodRatio();
        }
        if (!Float.isNaN(targetRatio) && targetRatio >= 1.0f) {
            XposedHelpers.setFloatField(info, "hdrSdrRatio", targetRatio);
            try {
                XposedHelpers.setFloatField(device, "mCurrentHdrSdrRatio", targetRatio);
            } catch (Throwable e) {
                logAlways("legacyWrite FIELD mCurrentHdrSdrRatio FAIL: " + e);
            }
            if (Float.isNaN(existing) || Math.abs(existing - targetRatio) >= 0.005f) {
                logAlways("[legacy] Set info.hdrSdrRatio " + val(existing) + " -> " + targetRatio
                        + " (nits=" + nits + ")");
            }
            sLastGoodRatio = targetRatio;
        }
    }

    // ---- helpers ---------------------------------------------------------

    private static String val(float f) {
        return Float.isNaN(f) ? "NaN" : String.valueOf(f);
    }

    private static boolean nitsValid(float nits) {
        return nits > 0.0f && !Float.isNaN(nits) && !Float.isInfinite(nits);
    }

    // TRUE OEM sdrHdrRatioSpline (extracted verbatim from on-device dumpsys):
    // (4,4.0)...(500,1.585)...(502,1.593). Vendor-calibrated "SDR nits -> headroom".
    private static final float[] SPLINE_NITS = {
            4.0f, 75.0f, 78.859f, 82.717f, 86.576f, 98.152f, 105.869f, 113.586f,
            125.162f, 136.737f, 148.313f, 159.889f, 175.323f, 194.616f, 213.909f,
            229.343f, 244.778f, 264.071f, 287.222f, 306.515f, 325.808f, 341.242f,
            360.535f, 379.828f, 402.980f, 426.131f, 445.424f, 464.526f, 487.105f,
            502.158f, 502.197f
    };
    private static final float[] SPLINE_RATIO = {
            4.0f, 3.995f, 3.851f, 3.721f, 3.602f, 3.301f, 3.137f, 2.996f,
            2.816f, 2.667f, 2.541f, 2.433f, 2.312f, 2.187f, 2.084f,
            2.015f, 1.954f, 1.888f, 1.821f, 1.773f, 1.730f, 1.699f,
            1.665f, 1.634f, 1.600f, 1.571f, 1.548f, 1.545f, 1.570f,
            1.585f, 1.593f
    };
    // Panel physical peak: EDID/HWC mMaxLuminance = 750 nits (on-device
    // verified). The OEM spline's 502→1.593 extrapolation would allow
    // 800+, but the panel clamps at 750 — capping here keeps the written
    // ratio inside the physically realizable headroom.
    private static final float PEAK_NITS = 750.0f;

    private static float interp(float[] xs, float[] ys, float x) {
        if (x <= xs[0]) return ys[0];
        int n = xs.length;
        if (x >= xs[n - 1]) return ys[n - 1];
        for (int i = 1; i < n; i++) {
            if (x <= xs[i]) {
                float t = (x - xs[i - 1]) / (xs[i] - xs[i - 1]);
                return ys[i - 1] + t * (ys[i] - ys[i - 1]);
            }
        }
        return ys[n - 1];
    }

    private static boolean isFirstDisplay(Object device) {
        try {
            return XposedHelpers.getBooleanField(device, "mIsFirstDisplay");
        } catch (Throwable t) {
            return true;
        }
    }

    // ---- GPU composition ----------------------------------------------------

    /** Equivalent of {@code service call SurfaceFlinger 1008 i32 1}. */
    private static void forceGpuComposition() {
        try {
            Class<?> smClass = Class.forName("android.os.ServiceManager");
            IBinder sf = (IBinder) smClass
                    .getMethod("getService", String.class).invoke(null, "SurfaceFlinger");
            if (sf == null) {
                log("SurfaceFlinger binder null, skip gpu force");
                return;
            }
            Parcel data = Parcel.obtain();
            Parcel reply = Parcel.obtain();
            data.writeInterfaceToken(sf.getInterfaceDescriptor());
            data.writeInt(1);
            boolean ok = sf.transact(1008, data, reply, 0);
            data.recycle();
            reply.recycle();
            logAlways("force GPU composition (tx1008) -> " + ok);
        } catch (Throwable t) {
            log("forceGpuComposition err: " + t);
        }
    }

    // ---- logging ------------------------------------------------------------

    /**
     * Unconditional logging for critical diagnostics — INSTALL results, mode
     * switches, bootstrap decisions, capture failures. Deliberately bypasses
     * the PROP_LOG switch: that persist prop may have been left OFF by an
     * earlier toggle in the companion app, which silently swallowed every
     * diagnostic (and made the log file never appear).
     */
    private static void logAlways(String msg) {
        XposedBridge.log(TAG + msg);
        FileLog.write(msg);
    }

    private static void log(String msg) {
        if (!SysProps.getBoolean(PROP_LOG, true)) {
            return;
        }
        XposedBridge.log(TAG + msg);
        FileLog.write(msg);
    }

    // ---- helpers ------------------------------------------------------------

    /** SystemProperties reflection (system_server process). */
    static class SysProps {
        private static Method sGetBoolean;
        private static Method sGetLong;
        private static Method sGetStr;
        private static Method sSet;

        static boolean getBoolean(String key, boolean def) {
            try {
                if (sGetBoolean == null) {
                    sGetBoolean = Class.forName("android.os.SystemProperties")
                            .getMethod("getBoolean", String.class, boolean.class);
                }
                return (Boolean) sGetBoolean.invoke(null, key, def);
            } catch (Throwable t) {
                return def;
            }
        }

        static float getFloat(String key, float def) {
            // NOTE: SystemProperties.getFloat(String,float) DOES NOT EXIST in
            // AOSP (only getInt/getLong/getBoolean) — the old reflection threw
            // NoSuchMethodException which was silently swallowed, returning the
            // default forever: the user-ratio-cap was dead code from v1.x until
            // this fix. Parse via get(String,String) instead, and never fail
            // silently again.
            try {
                if (sGetStr == null) {
                    sGetStr = Class.forName("android.os.SystemProperties")
                            .getMethod("get", String.class, String.class);
                }
                String v = (String) sGetStr.invoke(null, key, Float.toString(def));
                return Float.parseFloat(v.trim());
            } catch (NumberFormatException t) {
                logAlways("SysProps.getFloat BAD VALUE key=" + key);
                return def;
            } catch (Throwable t) {
                logAlways("SysProps.getFloat FAIL key=" + key + ": " + t);
                return def;
            }
        }

        static long getLong(String key, long def) {
            try {
                if (sGetLong == null) {
                    sGetLong = Class.forName("android.os.SystemProperties")
                            .getMethod("getLong", String.class, long.class);
                }
                return (Long) sGetLong.invoke(null, key, def);
            } catch (Throwable t) {
                return def;
            }
        }

        static void set(String key, String value) {
            try {
                if (sSet == null) {
                    sSet = Class.forName("android.os.SystemProperties")
                            .getMethod("set", String.class, String.class);
                }
                sSet.invoke(null, key, value);
            } catch (Throwable ignored) {
            }
        }
    }

    /**
     * Always-on disk mirror so the user can read logs directly in a file manager.
     * The preferred path is the public SD card folder (/storage/emulated/0/hdr日志);
     * that path is only writable by system_server if the KSU module's service.sh
     * created it and chown'd it to system. If that write fails (EACCES), we fall
     * back to /data/system/hdrfix.log (system-owned) so we are never silent, and we
     * always surface any failure to logcat.
     */
    static class FileLog {
        // /data/system FIRST: system_server (uid 1000) can ALWAYS write here —
        // logs are guaranteed even if the sdcard path is blocked by FUSE/SELinux.
        // The sdcard copy is a convenience mirror for the user's file manager.
        private static final String[] PATHS = {
                "/data/system/hdrfix.log",
                "/storage/emulated/0/hdr日志/hdrfix.log"
        };
        private static final long MAX_BYTES = 128 * 1024; // 128 KiB rotate
        // One writer per path, cached; independent so one path failing never
        // blocks the other.
        private static final BufferedWriter[] sWriters =
                new BufferedWriter[PATHS.length];

        static synchronized void write(String msg) {
            long now = System.currentTimeMillis();
            String line = new SimpleDateFormat("MM-dd HH:mm:ss", Locale.US)
                    .format(new Date(now)) + " " + msg;
            // Heartbeat every 5 min so the user can always tell whether the
            // log writer is actually alive (diagnoses "log not written").
            if (now - sLastHeartbeatMs >= 300_000L) {
                sLastHeartbeatMs = now;
                line = line + "  [heartbeat writersAlive="
                        + (sWriters[0] != null) + "," + (sWriters[1] != null) + "]";
            }
            // Self-heal (v2.0.1): the companion app's "clear" deletes the file
            // while our writers keep the old handle — on Windows the writes go
            // to an orphaned handle and the log silently stops. Detect a
            // vanished file (throttled stat) and reopen.
            if (now - sLastStatMs >= 2000L) {
                sLastStatMs = now;
                for (int i = 0; i < PATHS.length; i++) {
                    if (sWriters[i] != null && !new File(PATHS[i]).exists()) {
                        try {
                            sWriters[i].close();
                        } catch (Throwable ignored) {
                        }
                        sWriters[i] = null;
                        XposedBridge.log("[HDRRatioFix] FileLog: file vanished, reopening: "
                                + PATHS[i]);
                    }
                }
            }
            boolean anyWritten = false;
            for (int i = 0; i < PATHS.length; i++) {
                try {
                    File f = new File(PATHS[i]);
                    // Rotate whenever oversize — including while the writer is
                    // alive (the old check only ran on reopen, so a long-lived
                    // writer could grow the file unbounded; 128 KiB + .old cap
                    // keeps /data/system usage negligible forever).
                    if (f.exists() && f.length() > MAX_BYTES) {
                        File old = new File(PATHS[i] + ".old");
                        if (old.exists()) old.delete();
                        f.renameTo(old);
                        f = new File(PATHS[i]);
                        if (sWriters[i] != null) {
                            try { sWriters[i].close(); } catch (Throwable ignored) { }
                            sWriters[i] = null;
                        }
                    }
                    if (sWriters[i] == null) {
                        sWriters[i] = new BufferedWriter(new FileWriter(f, true), 8192);
                        // Report exactly what succeeded and where, with size.
                        XposedBridge.log("[HDRRatioFix] FileLog opened: " + PATHS[i]
                                + " size=" + (f.exists() ? f.length() : 0));
                    }
                    sWriters[i].write(line);
                    sWriters[i].newLine();
                    sWriters[i].flush();
                    anyWritten = true;
                } catch (Throwable t) {
                    String err = t instanceof java.io.FileNotFoundException
                            ? "FileNotFound"
                            : t.getClass().getSimpleName();
                    XposedBridge.log("[HDRRatioFix] FileLog FAIL path=" + PATHS[i]
                            + " err=" + err + " (" + t.getMessage() + ")");
                    if (sWriters[i] != null) {
                        try { sWriters[i].close(); } catch (Throwable ignored) {}
                        sWriters[i] = null;
                    }
                }
            }
            if (!anyWritten && diagFailedOnce()) {
                XposedBridge.log("[HDRRatioFix] FileLog: ALL PATHS failed — check /data/system writable + sdcard chown");
            }
        }

        private static boolean sDiagFileFailed = false;
        private static long sLastStatMs = 0L;
        private static long sLastHeartbeatMs = 0L;

        private static synchronized boolean diagFailedOnce() {
            if (sDiagFileFailed) return false;
            sDiagFileFailed = true;
            return true;
        }
    }
}

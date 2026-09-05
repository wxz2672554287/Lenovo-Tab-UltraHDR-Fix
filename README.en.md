# Lenovo-Tab-UltraHDR-Fix

Fixing broken UltraHDR photo display on the Lenovo TB710FU tablet after its Android 16 update.

中文说明:[README.md](README.md)

## What this is

I have a Lenovo TB710FU (SM8650, 12.7-inch LCD). After the OTA from ZUI 17.0.04 (Android 15) to ZUXOS 1.5.04.366 (Android 16), UltraHDR photos stopped brightening — highlights stayed dull, as if the gain map wasn't there. HDR video kept working the whole time, which turned out to be the first clue.

A few days of byte-comparing the display stack across three firmware images (331/354 on Android 15 versus 366 on Android 16), plus disassembling SurfaceFlinger, gave the full picture: this is not one bug but three broken handoffs in the A15-to-A16 display stack migration, which Lenovo only half-finished. The road there wasn't straight, either. My first fix made photos boost again, but the highlights clipped to pure white, and chasing that regression led to the deepest find of the whole investigation, inside the compositor.

The fix that stuck is two pieces working together:

- **An LSPosed module** (the APK in this repo) repairs the ratio chain. Until it does, apps never read an HDR/SDR ratio, so they never promote photo windows to HDR layers in the first place.
- **A KernelSU module** (`ksu-fp16-module/`) repairs the compositor, with a single SurfaceFlinger property, so FP16 gain-map layers stop having their highlights crushed into an 8-bit render target.

With both installed and one reboot, photos look the way they did on Android 15: highlights lift, gradients survive, no clipping, and HDR kicks in smoothly as brightness changes.

## Before and after

| State | What UltraHDR photos actually look like |
|---|---|
| Stock 366 (Android 16) | No boost at all; indistinguishable from SDR |
| Early builds (ratio only) | Photos boost, but highlights clip to white — worse at low brightness |
| Final combo from this repo | Highlights lift properly, gradients survive, no clipping, smooth HDR engagement |

HDR video was fine in every one of these states. That control group ended up cracking the case.

## What broke: three breakpoints

First, the loop as it worked on Android 15, because the breakpoints make no sense without it:

```
photo carries a gain map → app reads the system's HDR/SDR brightness ratio
→ ratio > 1 means the app builds an HDR layer → the system raises panel
brightness by that ratio while dimming the SDR channel
→ the written ratio equals the boost the panel is actually applying —
three sides in sync
```

The point of the last line: the ratio is not an arbitrary setting, it is a reading of what the panel is really doing. After the A16 update, this loop broke in three places.

### Breakpoint one: nobody writes the ratio anymore (no boost)

On Android 15, the vendor-calibrated map (`<sdrHdrRatioMap>`, from 8.0x at 2 nits down to 1.5x at 500 nits) is loaded as a spline, and every brightness change makes the system write the ratio as the panel's actual boost factor. The A16 QPR refactor moved that loading code to a new entry point — the XML is still there, the parser is still there, but nobody delivers the parsed result anymore. The spline stays empty, the ratio-writing function is never called, and the field stays NaN.

An app that reads NaN downgrades its HDR window to plain wide-gamut. No HDR layer means the system never boosts; no boost means no ratio; no ratio means no HDR layer. Deadlock.

The irony: the panel-boost chain itself was rewritten for A16 with its own new data and is alive and well. It's only the ratio reporting that nobody picked up.

### Breakpoint two: fix the ratio and the compositor clamps it (the overexposure era)

This was the best-hidden one. Lenovo's A16 pairs a brand-new SurfaceFlinger with the ancient QTI hardware composer, and in this build the SF compile-time flag `fp16_client_target` is hardcoded false. What that flag gates is precisely the SF computation of the HDR brightness ratio used during composition. When false, the computation always returns 1.0 — so when RenderEngine writes an FP16 gain-map layer into the 8-bit client target, the highlights clamp to white and the gradients are gone.

That's why the ratio-only builds boosted photos but blew out the highlights, worst at low brightness where the ratio is largest. The measurements matched this exactly.

Why was HDR video always fine? Video goes through a different path — YUV 10-bit with HLG, handled by Libtonemap — and that path uses the very same ratio correctly: measured HDR white point 380 nits, SDR dimming 0.398, exactly as intended. Same value, one path right and one path wrong. That comparison pinned the breakpoint to the compositor.

### Breakpoint three: the DPU flickers on gain-map content

This device's display processing unit tone-maps gain-map content badly in the hardware composition path — flicker (the same problem an old AOSP gate was added to avoid on legacy vendor stacks). Forcing GPU composition once at boot via a SurfaceFlinger transaction works around it, at a small power cost.

## How it's fixed

### The LSPosed module: reconnect the ratio chain

The hook sits at the framework's native display-info read point (after `getDisplayDeviceInfoLocked`), acting as a continuous transcriber:

- **No invented numbers.** It uses the system's own brightness converters to capture both channels — the main (boosted) nits and the SDR nits — at the moment the system sets brightness, and computes the A15 true division `max(1, main / sdr)`. The ratio follows the boost animation frame by frame, and after it settles it converges to the vendor curve's endpoint. When brightness is static, nothing is written and the cost is zero.
- **Writing a value is not enough.** Display info caches are refreshed through an event chain across three layers (DMS / LogicalDisplay / each app's process). The module replays the system's own tail: write the field, rebuild the info, fire the event.
- **Two safety rails.** The vendor's 30-point calibration curve, plus a clamp to the panel's measured physical peak of 750 nits — at any brightness, ratio × current SDR nits never exceeds what the panel can actually do.
- There's also a mode 1 (suppress the panel boost entirely and let the app-side boost carry HDR — the conservative option), a boot-time GPU composition switch, and a set of runtime props (table below).

### The KSU module: stop the compositor from clamping

The core is one line: `debug.sf.fp16_client_target=true`. AOSP's FlagManager exposes a property override for every SurfaceFlinger flag, which unconditionally beats the compiled-in value. The catch is timing: the value is cached statically when SF starts, so the property must be set before that — and a manual `setprop` only takes effect after a soft reboot. Packaging it as a KSU module puts it in the boot timeline via `system.prop`, and it survives every reboot.

The module also does one small chore: at boot it pre-creates `/data/system/hdrfix.log` as root and chowns it to system. If that file is ever deleted, system_server cannot recreate it with the right owner, and the module's file logging silently dies. Pre-creating it once at boot closes that hole for good.

### Why you need both

The two breakpoints live in two different processes; neither fix can cover for the other:

- KSU module only: the ratio is still NaN, apps still build no HDR layer, photos still don't boost.
- LSPosed module only: the ratio is there, the compositor still clamps, and the overexposure is back.

## Install

Requirements: unlocked bootloader, root (KernelSU / SukiSU / Magisk all work for flashing the zip), LSPosed. Verified only on a TB710FU running ZUXOS 1.5.04.366 — anything else is untested.

1. Grab the two files from Releases: the KSU module zip and the module APK (the repo also carries `TB710FU-HDR-fp16-client-target.zip` at its root; the v1.0.0–v1.0.4 APKs sitting in the repo root are historical archives — don't install those).
2. Flash the zip in your KSU manager.
3. Install the APK, enable the module in LSPosed, and tick the scopes: **Android (system framework)** and **this app**.
4. **Reboot once.** The property only lands after SF restarts and the hooks only load into a fresh system_server; one full reboot covers both.

Then check the app's Status page: the module should show active and the ratio should be neither NaN nor stuck at 1.5. The Test page has sample images to eyeball the boost.

Note: `ksu-module/` in this repo (the displayconfig overlay) is an early experiment. It is no longer needed, and installing it actively interferes with mechanism verification — leave it alone.

## Troubleshooting

**Overexposure is back?**
Check the property first: `adb shell getprop debug.sf.fp16_client_target` should print `true`. If not, the KSU module isn't taking effect — not flashed, disabled, or no reboot after flashing. The property is lost on every reboot; the module's `system.prop` re-applies it at each boot, so don't rely on a one-time manual `setprop`.

**The ratio won't move, or some apps can't read it?**
Open the Logs page and look for `INSTALL ... OK` plus fresh `RATIO` / `AppRead` lines — if they're there, the module is alive. Coolapk in particular can't read the value because of its own strict in-process detection; the display itself is unaffected. Judge the display by the Status page's dumpsys value and the sample images, not by Coolapk.

**Photos still don't boost?**
In order: LSPosed scopes (system framework + this app); did you reboot after installing; is the master switch in Controls turned on by accident.

## Runtime switches (via the app's Controls page, or setprop)

| Property | Default | Effect |
|---|---|---|
| `persist.sys.tb710.hdrfix.mode` | `0` | 0 = same-source mode (default); 1 = suppress panel boost (conservative); 2 = legacy comparison, debugging only |
| `persist.sys.tb710.hdrfix.disable` | `0` | Master switch. Turning it on while running takes effect immediately (ratio resets to NaN); if it is 1 at module load time, no hooks are installed and re-enabling needs a reboot |
| `persist.sys.tb710.hdrfix.gpu` | `1` | Force GPU composition at boot; reboot to apply |
| `persist.sys.tb710.hdrfix.max` | `0` | Ratio cap, only acts when `>1`, on top of the physical clamp |
| `persist.sys.tb710.hdrfix.log` | `1` | Verbose logging; critical diagnostics ignore this switch and are always written |

The primary log file is `/data/system/hdrfix.log` (root-readable; the app's Logs page can read and export it), mirrored to `/storage/emulated/0/hdr日志/`.

## Uninstall

Delete the fp16 module in your KSU manager and disable this module in LSPosed, then reboot. Neither component touches system partitions — the property disappears with the module and the hooks live only in memory — so uninstalling returns the device to stock behavior completely.

## Known limitations

- Coolapk can't read the ratio value (strict in-process detection on their side). Display itself is fine, and the system chain plus most apps are unaffected.
- In the high-brightness range (roughly above 480 nits) highlights run about 6% more conservative than the vendor's nominal figure: the clamp uses the EDID/HWC-measured physical peak of 750 nits while the software claims 800. Undershooting beats clipping.
- GPU composition is on by default. Whether flicker can still recur after the fp16 fix needs longer observation; if you never see it, turning the switch off saves a little power (reboot to apply).
- When HDR video and a photo share the screen, the video's color mode takes over the whole display with a slight tint. Unrelated to the ratio; not addressed.
- Verified only on TB710FU + ZUXOS 1.5.04.366. Other devices have different curves, panel peaks and HWC behavior — the ratio logic may transfer, but nothing is guaranteed.

## Evidence and investigation notes

The whole investigation left a paper trail, all in this repo. If you want to verify the mechanism, read in this order:

- `SF源码排查-20260905.md` — SF binary disassembly: the fp16 flag's consumer and the constant-1.0 path when false
- `KSU撬动fp16可行性-20260905.md` — source-level basis for the property override channel and boot timing
- `fp16prop独立验证-20260905.md` — the independent verification report (its cautious "probably won't work" was disproven on real hardware; kept for the record)
- `设备诊断-20260905*/` — four rounds of on-device dumpsys/log sampling, including the HDR video comparison
- `v2.0.10终审-模块.md` / `v2.0.10终审-App.md` — dual independent pre-release reviews
- `v2.0.7审查报告.md` / `v2.0.9审查报告.md` — process reviews with re-runnable assertion scripts
- `sdcard日志方案调研.md` — why system_server can't write to sdcard, and why the app mirrors logs via root instead

## Credits and references

- [LSPosed](https://github.com/LSPosed/LSPosed), [libultrahdr](https://github.com/google/libultrahdr)
- [AOSP: Mixed SDR and HDR composition](https://source.android.com/docs/core/display/mixed-sdr-hdr) / [Tone mapping HDR luminance](https://source.android.com/docs/core/display/tone-mapping) / [Display Ultra HDR images](https://developer.android.com/media/grow/ultrahdr/display)
- Bundled sample images from [android/platform-samples](https://github.com/android/platform-samples) (Apache-2.0)
- UI built on [Miuix](https://github.com/YuKongA/Miuix) (Apache-2.0)

## License

Apache-2.0, see [LICENSE](LICENSE). For learning and research only; use on devices you lawfully own. Rooting and Xposed may void your warranty, brick your device or lose your data — you're on your own.

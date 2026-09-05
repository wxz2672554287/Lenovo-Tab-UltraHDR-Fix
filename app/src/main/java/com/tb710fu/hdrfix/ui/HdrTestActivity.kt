package com.tb710fu.hdrfix.ui

import android.content.Context
import android.content.Intent
import android.content.pm.ActivityInfo
import android.graphics.BitmapFactory
import android.os.Build
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.tb710fu.hdrfix.R
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.NonCancellable
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import top.yukonga.miuix.kmp.basic.BasicComponent
import top.yukonga.miuix.kmp.basic.Card
import top.yukonga.miuix.kmp.basic.SmallTitle
import top.yukonga.miuix.kmp.preference.SwitchPreference
import java.io.File
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

/**
 * Dedicated, full-screen UltraHDR test window. Because it is a separate
 * Activity, its own window color mode never leaks into the main app — fixes
 * "HDR mode active outside the test page".
 */
class HdrTestActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContent {
            AppTheme {
                HdrTestScreen()
            }
        }
    }

    @Composable
    private fun HdrTestScreen() {
        var hdrMode by remember { mutableStateOf(true) }
        var imageIdx by remember { mutableIntStateOf(0) }
        val assetNames = listOf("gainmaps/lamps.jpg", "gainmaps/night_highrise.jpg")
        val assets = resources.assets
        val bitmap = remember(imageIdx) {
            runCatching {
                assets.open(assetNames[imageIdx]).use { BitmapFactory.decodeStream(it) }
            }.getOrNull()
        }
        val hasGainmap = bitmap != null && Build.VERSION.SDK_INT >= 34 && bitmap.hasGainmap()

        LaunchedEffect(hdrMode, hasGainmap) {
            window.colorMode = if (hdrMode && hasGainmap) ActivityInfo.COLOR_MODE_HDR
            else ActivityInfo.COLOR_MODE_DEFAULT
        }
        DisposableEffect(Unit) {
            onDispose { window.colorMode = ActivityInfo.COLOR_MODE_DEFAULT }
        }

        val display = display
        val caps = display?.hdrCapabilities
        val typeNames = caps?.supportedHdrTypes?.map {
            when (it) {
                1 -> "HLG"; 2 -> "PQ (HDR10)"; 3 -> "HDR10+"; 4 -> "Dolby Vision"; else -> "Type$it"
            }
        } ?: emptyList()
        val ratio = if (Build.VERSION.SDK_INT >= 34) display?.hdrSdrRatio ?: Float.NaN else Float.NaN
        val highest = if (Build.VERSION.SDK_INT >= 34) display?.highestHdrSdrRatio ?: Float.NaN else Float.NaN

        // ---- brightness sweep state ----
        val scope = rememberCoroutineScope()
        var scanning by remember { mutableStateOf(false) }
        var progress by remember { mutableStateOf("") }
        var scanResult by remember { mutableStateOf("") }

        Column(modifier = Modifier.fillMaxSize().verticalScroll(rememberScrollState())) {
            SmallTitle(
                text = stringResource(R.string.tab_test),
                modifier = Modifier.padding(start = 24.dp, top = 16.dp, bottom = 8.dp),
            )
            Card(modifier = Modifier.padding(horizontal = 12.dp)) {
                SwitchPreference(
                    title = stringResource(R.string.test_hdr_mode),
                    summary = stringResource(R.string.test_hdr_mode_summary),
                    checked = hdrMode,
                    onCheckedChange = { hdrMode = it },
                )
                BasicComponent(
                    title = stringResource(R.string.test_switch_image),
                    summary = assetNames[imageIdx].substringAfterLast('/'),
                    onClick = { imageIdx = (imageIdx + 1) % assetNames.size },
                )
                BasicComponent(
                    title = stringResource(R.string.test_gainmap) + ": " +
                            if (hasGainmap) "✓" else "✗",
                    onClick = { },
                )
                BasicComponent(
                    title = if (scanning) {
                        stringResource(R.string.test_scan_running, progress)
                    } else {
                        stringResource(R.string.test_scan)
                    },
                    summary = stringResource(R.string.test_scan_summary),
                    onClick = {
                        if (!scanning) {
                            scanning = true
                            scanResult = ""
                            runBrightnessSweep(
                                scope,
                                onProgress = { progress = it },
                                onDone = { scanning = false; scanResult = it },
                                onError = { scanning = false; scanResult = it },
                            )
                        }
                    },
                )
            }
            if (bitmap != null) {
                Image(
                    bitmap = bitmap.asImageBitmap(),
                    contentDescription = null,
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(horizontal = 12.dp)
                        .background(Color.Black),
                )
            }
            Spacer(modifier = Modifier.height(12.dp))
            Card(modifier = Modifier.padding(horizontal = 12.dp)) {
                BasicComponent(
                    title = stringResource(R.string.test_types),
                    summary = typeNames.joinToString(", ").ifEmpty { "-" },
                )
                BasicComponent(
                    title = stringResource(R.string.status_ratio),
                    summary = if (ratio.isNaN()) "NaN" else "%.2f".format(ratio),
                )
                BasicComponent(
                    title = stringResource(R.string.test_highest),
                    summary = if (highest.isNaN()) "NaN" else "%.2f".format(highest),
                )
                BasicComponent(
                    title = stringResource(R.string.test_luminance),
                    summary = if (Build.VERSION.SDK_INT >= 33) {
                        caps?.desiredMaxLuminance?.let { "%.0f cd/m²".format(it) } ?: "-"
                    } else "-",
                )
            }
            if (scanResult.isNotBlank()) {
                Spacer(modifier = Modifier.height(12.dp))
                Card(modifier = Modifier.padding(horizontal = 12.dp)) {
                    androidx.compose.foundation.text.BasicText(
                        text = scanResult,
                        modifier = Modifier.padding(12.dp),
                        style = androidx.compose.ui.text.TextStyle(
                            fontFamily = FontFamily.Monospace,
                            fontSize = 10.sp,
                        ),
                    )
                }
            }
            Spacer(modifier = Modifier.height(12.dp))
        }
    }

    /**
     * One-tap HDR brightness sweep, fully automated diagnostic:
     *
     *  1. Saves brightness mode/value, disables auto-brightness.
     *  2. Ramps through 30% / 60% / 100% via
     *     `settings put system screen_brightness` — the framework's own
     *     DualRampAnimator performs the smooth transition, and during the
     *     ramp setDisplayBrightness fires every frame, so the LSPosed module's
     *     observation logs (SYSTEM handle / setDisplayBrightness trace) light
     *     up in lockstep in /data/system/hdrfix.log.
     *  3. At each step samples BOTH channels:
     *       - app channel: Display.getHdrSdrRatio() (same as third-party apps)
     *       - root channel: dumpsys display (hdrSdrRatio / mCurrentNits /
     *         mCurrentSdrNits) + dumpsys SurfaceFlinger (numHdrLayers /
     *         desiredRatio) — the system-internal truth.
     *  4. Restores the original brightness (smoothly) and brightness mode.
     *  5. Writes the full transcript to /sdcard/Download/hdrscan.log via root,
     *     so it can be shared directly.
     *
     * Keep the HDR switch ON so the gainmap stays on screen during the sweep.
     */
    private fun runBrightnessSweep(
        scope: kotlinx.coroutines.CoroutineScope,
        onProgress: (String) -> Unit,
        onDone: (String) -> Unit,
        onError: (String) -> Unit,
    ) {
        val activity = this
        scope.launch(Dispatchers.IO) {
            val sb = StringBuilder()
            // Saved values are read before the first suspension point and kept
            // OUTSIDE the try so the restore helper can always see them, no
            // matter where the sweep was interrupted.
            var savedMode = ""
            var savedBr = ""

            // Restore must also run when the coroutine has been cancelled
            // (user leaves the page mid-sweep): in the cancelled state every
            // plain `withContext` throws CancellationException and would skip
            // the restore entirely. `NonCancellable` keeps this block alive.
            suspend fun restoreBrightness(): String = withContext(NonCancellable) {
                if (savedBr.toIntOrNull() != null) {
                    Shell.su("settings", "put", "system", "screen_brightness", savedBr)
                    Thread.sleep(1500)
                    if (savedMode != "0") {
                        Shell.su("settings", "put", "system", "screen_brightness_mode", savedMode)
                    }
                    "restored brightness=$savedBr mode=$savedMode"
                } else {
                    "(could not read original brightness — not restored)"
                }
            }

            try {
                val ts = SimpleDateFormat("MM-dd HH:mm:ss", Locale.US).format(Date())
                sb.appendLine("=== HDR brightness sweep $ts ===")
                savedMode = Shell.su("settings", "get", "system", "screen_brightness_mode")
                    ?.trim().orEmpty().ifEmpty { "?" }
                savedBr = Shell.su("settings", "get", "system", "screen_brightness")
                    ?.trim().orEmpty().ifEmpty { "?" }
                sb.appendLine("module=${Shell.getProp("persist.sys.tb710.hdrfix.version")} " +
                        "hdrfix.mode=${Shell.getProp("persist.sys.tb710.hdrfix.mode")} " +
                        "saved brightness=$savedBr mode=$savedMode")
                Shell.su("settings", "put", "system", "screen_brightness_mode", "0")

                for (pct in intArrayOf(30, 60, 100)) {
                    val v = (255 * pct / 100).coerceIn(1, 255)
                    withContext(Dispatchers.Main) { onProgress("$pct%") }
                    val putOk = Shell.su("settings", "put", "system",
                        "screen_brightness", v.toString()) != null
                    if (!putOk) {
                        sb.appendLine("(settings put FAILED at $pct%)")
                    }
                    // Ramp animation (~1-2 s) + settle + event/cache propagation.
                    Thread.sleep(3500)
                    withContext(Dispatchers.Main) { onProgress("$pct% (sampling)") }

                    // App channel (same path a third-party app takes).
                    val d = activity.display
                    val appRatio = if (Build.VERSION.SDK_INT >= 34) {
                        d?.hdrSdrRatio ?: Float.NaN
                    } else Float.NaN

                    // Root channel: system-internal truth.
                    val dumpD = Shell.su("dumpsys", "display").orEmpty()
                    val linesD = dumpD.lineSequence()
                        .filter {
                            it.contains("hdrSdrRatio", true)
                                    || it.contains("mCurrentNits")
                                    || it.contains("mCurrentSdrNits")
                        }
                        .map { it.trim() }
                        .take(14)
                        .toList()
                    val dumpSf = Shell.su("dumpsys", "SurfaceFlinger").orEmpty()
                    val linesF = dumpSf.lineSequence()
                        .filter {
                            it.contains("numHdrLayers")
                                    || it.contains("desiredRatio", true)
                                    || it.contains("hdrLayerInfo", true)
                        }
                        .map { it.trim() }
                        .take(8)
                        .toList()

                    sb.appendLine()
                    sb.appendLine("--- brightness $pct% (settings=$v) ---")
                    sb.appendLine("app-read hdrSdrRatio=" +
                            if (appRatio.isNaN()) "NaN" else "%.3f".format(appRatio))
                    linesD.forEach { sb.appendLine("display: $it") }
                    linesF.forEach { sb.appendLine("sf: $it") }
                }

                // Restore (ramps back smoothly) — restoreBrightness() itself
                // checks that a sane saved value was read earlier.
                sb.appendLine()
                sb.appendLine(restoreBrightness())

                // Persist the transcript to Download via root (same channel as
                // the existing log export). The saved-marker goes into the file
                // BEFORE copy so the exported copy is complete; the copy result
                // itself is only reported in-app.
                val tmp = File(cacheDir, "hdrscan.log")
                sb.appendLine("transcript -> /sdcard/Download/hdrscan.log")
                tmp.writeText(sb.toString())
                val copied = Shell.su("cp", tmp.absolutePath, "/sdcard/Download/hdrscan.log") != null
                if (!copied) {
                    sb.appendLine("(copy to Download failed — result shown in-app only)")
                }

                withContext(Dispatchers.Main) { onDone(sb.toString()) }
            } catch (t: Throwable) {
                // Cancelled mid-sweep (user left the page) or failed: restore
                // brightness FIRST — NonCancellable guarantees the block runs
                // even in the cancelled state. Reporting is wrapped the same
                // way: a plain withContext(Main) would immediately re-throw
                // CancellationException while cancelled and never run.
                sb.appendLine()
                sb.appendLine(restoreBrightness())
                withContext(NonCancellable + Dispatchers.Main) {
                    onError("sweep failed: ${t.message ?: t.toString()}")
                }
            }
        }
    }
}

fun openHdrTest(context: Context) {
    context.startActivity(Intent(context, HdrTestActivity::class.java))
}

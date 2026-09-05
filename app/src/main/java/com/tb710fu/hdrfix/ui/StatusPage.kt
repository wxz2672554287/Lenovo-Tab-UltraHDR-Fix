package com.tb710fu.hdrfix.ui

import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import com.tb710fu.hdrfix.R
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import top.yukonga.miuix.kmp.basic.BasicComponent
import top.yukonga.miuix.kmp.basic.Card
import top.yukonga.miuix.kmp.basic.SmallTitle

private data class StatusState(
    val hooked: Boolean = false,
    val hookVersion: String = "-",
    val ratio: String? = null,
    val gpu: Boolean = true,
    val mode: Int = 0,
    val disabled: Boolean = false,
    val rooted: Boolean = false,
)

@Composable
fun StatusPage() {
    val context = androidx.compose.ui.platform.LocalContext.current
    var state by remember { mutableStateOf(StatusState()) }
    val scope = rememberCoroutineScope()

    fun refresh() {
        scope.launch {
            state = withContext(Dispatchers.IO) {
                // Root-free activation marker written by the module's self hook,
                // plus a root-readable prop as a fallback (the self hook may not
                // run if the app itself is not in the LSPosed scope).
                val sp = context.getSharedPreferences("hook_status", 0)
                val selfMarker = sp.getBoolean("module_hooked", false)
                val propMarker = Shell.getProp(Props.HOOKED) == "1"
                StatusState(
                    hooked = selfMarker || propMarker,
                    hookVersion = sp.getString("hook_version", null)
                        ?: Shell.getProp(Props.VERSION).ifEmpty { "-" },
                    ratio = Shell.currentRatio(),
                    gpu = Shell.getProp(Props.GPU) != "false",
                    mode = Shell.getProp(Props.MODE).toIntOrNull() ?: 0,
                    disabled = Shell.getProp(Props.DISABLE) == "1",
                    rooted = Shell.hasRoot(),
                )
            }
        }
    }

    androidx.compose.runtime.LaunchedEffect(Unit) { refresh() }

    LazyColumn(modifier = Modifier.fillMaxSize()) {
        item {
            SmallTitle(
                text = stringResource(R.string.tab_status),
                modifier = Modifier.padding(start = 24.dp, top = 16.dp, bottom = 8.dp),
            )
        }
        item {
            Card(modifier = Modifier.padding(horizontal = 12.dp)) {
                BasicComponent(
                    title = if (state.hooked) {
                        stringResource(R.string.status_hook_active)
                    } else {
                        stringResource(R.string.status_hook_inactive)
                    },
                    summary = "v" + state.hookVersion,
                )
                // The module writes its version prop at system_server load;
                // a mismatch means the freshly installed APK has not been
                // reloaded yet (needs a reboot).
                if (state.hookVersion != "-" && state.hookVersion != Props.APP_VERSION) {
                    BasicComponent(
                        title = stringResource(R.string.status_reboot_hint),
                        summary = "module v" + state.hookVersion + " != app v" + Props.APP_VERSION,
                    )
                }
                BasicComponent(
                    title = stringResource(R.string.status_mode),
                    summary = when (state.mode) {
                        1 -> stringResource(R.string.ctl_mode_1)
                        2 -> stringResource(R.string.ctl_mode_2)
                        else -> stringResource(R.string.ctl_mode_0)
                    } + if (state.disabled) " · " + stringResource(R.string.status_disabled) else "",
                )
                BasicComponent(
                    title = stringResource(R.string.status_ratio),
                    summary = state.ratio ?: stringResource(R.string.status_ratio_unknown),
                )
                BasicComponent(
                    title = stringResource(R.string.status_root),
                    summary = if (state.rooted) {
                        stringResource(R.string.status_root_ok)
                    } else {
                        stringResource(R.string.status_root_missing)
                    },
                )
                BasicComponent(
                    title = stringResource(R.string.status_gpu),
                    summary = stringResource(if (state.gpu) R.string.status_on else R.string.status_off),
                )
                BasicComponent(
                    title = stringResource(R.string.status_panel_peak),
                    // Must match the module's PEAK_NITS (HdrRatioFix.java):
                    // the EDID/HWC mMaxLuminance measured value that the
                    // ratio math is clamped to (was wrongly shown as 800).
                    summary = "750 cd/m²",
                )
                BasicComponent(
                    title = stringResource(R.string.refresh),
                    onClick = { refresh() },
                )
            }
            Spacer(modifier = Modifier.height(12.dp))
        }
    }
}

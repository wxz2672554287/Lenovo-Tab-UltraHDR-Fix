package com.tb710fu.hdrfix.ui

import android.widget.Toast
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import com.tb710fu.hdrfix.R
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import top.yukonga.miuix.kmp.basic.Card
import top.yukonga.miuix.kmp.basic.SmallTitle
import top.yukonga.miuix.kmp.preference.OverlayDropdownPreference
import top.yukonga.miuix.kmp.preference.SwitchPreference

// "8.0" removed: the module's write path caps the ratio at
// min(spline ceiling 4.0, 750/sdrNits), so any value above 4.0
// could never take effect anyway.
private val MAX_OPTIONS = listOf("0", "1.2", "1.5", "2.0", "2.5", "3.0", "4.0")

@Composable
fun ControlsPage() {
    val context = LocalContext.current
    val scope = rememberCoroutineScope()
    var disable by remember { mutableStateOf(false) }
    var disableArmed by remember { mutableStateOf(false) }
    var gpu by remember { mutableStateOf(true) }
    // Module default for the log switch is ON (unset -> true), so an unset
    // prop must display as ON too — matching `!= "0"` semantics.
    var log by remember { mutableStateOf(true) }
    var modeIdx by remember { mutableIntStateOf(0) }
    var maxIdx by remember { mutableIntStateOf(0) }
    var loaded by remember { mutableStateOf(false) }

    fun toast(res: Int) = Toast.makeText(context, res, Toast.LENGTH_SHORT).show()

    fun apply(key: String, value: String, okRes: Int = R.string.exec_ok) {
        scope.launch {
            val ok = withContext(Dispatchers.IO) { Shell.setProp(key, value) }
            toast(if (ok) okRes else R.string.exec_fail)
        }
    }

    androidx.compose.runtime.LaunchedEffect(Unit) {
        withContext(Dispatchers.IO) {
            disable = Props.bool(Props.DISABLE)
            gpu = Shell.getProp(Props.GPU) != "false"
            log = Shell.getProp(Props.LOG) != "0"
            val m = Shell.getProp(Props.MODE).toIntOrNull() ?: 0
            // The UI only offers modes 0/1 now. A hand-set out-of-range value
            // (e.g. legacy mode 2 via setprop) displays as 0 — the prop itself
            // is left untouched, the module still honours what is set.
            modeIdx = if (m in 0..1) m else 0
            val cur = Shell.getProp(Props.MAX)
            maxIdx = MAX_OPTIONS.indexOf(cur).coerceAtLeast(0)
        }
        loaded = true
    }

    // W4: the armed confirmation must never linger — auto-reset 5 s after the
    // first tap. Re-composed when disableArmed flips, so confirming (or any
    // reset) cancels the pending timer.
    LaunchedEffect(disableArmed) {
        if (disableArmed) {
            delay(5000)
            disableArmed = false
        }
    }

    LazyColumn(modifier = Modifier.fillMaxSize()) {
        item {
            SmallTitle(
                text = stringResource(R.string.tab_controls),
                modifier = Modifier.padding(start = 24.dp, top = 16.dp, bottom = 8.dp),
            )
        }
        item {
            Card(modifier = Modifier.padding(horizontal = 12.dp)) {
                OverlayDropdownPreference(
                    title = stringResource(R.string.ctl_mode_title),
                    summary = stringResource(R.string.ctl_mode_summary),
                    items = listOf(
                        stringResource(R.string.ctl_mode_0),
                        stringResource(R.string.ctl_mode_1),
                    ),
                    selectedIndex = modeIdx,
                    onSelectedIndexChange = { idx ->
                        modeIdx = idx
                        // Mode is read dynamically by every module callback —
                        // switching takes effect immediately, no reboot.
                        apply(Props.MODE, idx.toString())
                    },
                )
                SwitchPreference(
                    title = stringResource(R.string.ctl_disable_title),
                    summary = if (disableArmed) {
                        stringResource(R.string.confirm_disable_message)
                    } else {
                        stringResource(R.string.ctl_disable_summary)
                    },
                    checked = disable,
                    onCheckedChange = { want ->
                        if (want && !disableArmed) {
                            // First tap only arms the confirmation — give
                            // immediate feedback so it does not look broken.
                            disableArmed = true
                            toast(R.string.disable_armed_toast)
                            return@SwitchPreference
                        }
                        disableArmed = false
                        disable = want
                        apply(Props.DISABLE, if (want) "1" else "0")
                    },
                )
                SwitchPreference(
                    title = stringResource(R.string.ctl_gpu_title),
                    summary = stringResource(R.string.ctl_gpu_summary),
                    checked = gpu,
                    onCheckedChange = {
                        gpu = it
                        apply(Props.GPU, if (it) "1" else "0")
                    },
                )
                SwitchPreference(
                    title = stringResource(R.string.ctl_log_title),
                    summary = stringResource(R.string.ctl_log_summary),
                    checked = log,
                    onCheckedChange = {
                        log = it
                        apply(Props.LOG, if (it) "1" else "0")
                    },
                )
                OverlayDropdownPreference(
                    title = stringResource(R.string.ctl_max_title),
                    summary = stringResource(R.string.ctl_max_summary),
                    items = MAX_OPTIONS.map {
                        if (it == "0") stringResource(R.string.ctl_max_unlimited) else it
                    },
                    selectedIndex = maxIdx,
                    onSelectedIndexChange = { idx ->
                        maxIdx = idx
                        apply(Props.MAX, MAX_OPTIONS[idx])
                    },
                )
            }
            Spacer(modifier = Modifier.height(12.dp))
        }
        item {
            SmallTitle(
                text = stringResource(R.string.ctl_theme_title),
                modifier = Modifier.padding(start = 24.dp, top = 8.dp, bottom = 8.dp),
            )
        }
        item {
            Card(modifier = Modifier.padding(horizontal = 12.dp)) {
                OverlayDropdownPreference(
                    title = stringResource(R.string.ctl_theme_mode),
                    summary = stringResource(R.string.ctl_theme_mode_summary),
                    items = listOf(
                        stringResource(R.string.theme_system),
                        stringResource(R.string.theme_light),
                        stringResource(R.string.theme_dark),
                    ),
                    selectedIndex = ThemePrefs.mode,
                    onSelectedIndexChange = { idx ->
                        ThemePrefs.setMode(context, idx)
                    },
                )
                SwitchPreference(
                    title = stringResource(R.string.ctl_theme_monet),
                    summary = stringResource(R.string.ctl_theme_monet_summary),
                    checked = ThemePrefs.monet,
                    onCheckedChange = { ThemePrefs.setMonet(context, it) },
                )
            }
            Spacer(modifier = Modifier.height(12.dp))
        }
        item {
            Card(modifier = Modifier.padding(horizontal = 12.dp)) {
                top.yukonga.miuix.kmp.preference.ArrowPreference(
                    title = stringResource(R.string.reset_defaults),
                    onClick = {
                        scope.launch {
                            withContext(Dispatchers.IO) {
                                Shell.setProp(Props.MODE, "0")
                                Shell.setProp(Props.DISABLE, "0")
                                Shell.setProp(Props.GPU, "1")
                                // LOG defaults to ON in the module; never
                                // write "0" here — a historical build did and
                                // the persist prop silently killed all logging.
                                Shell.setProp(Props.LOG, "1")
                                Shell.setProp(Props.MAX, "0")
                            }
                            modeIdx = 0; disable = false; gpu = true
                            log = true; maxIdx = 0
                            ThemePrefs.setMode(context, 0)
                            ThemePrefs.setMonet(context, true)
                            toast(R.string.exec_ok)
                        }
                    },
                )
            }
            Spacer(modifier = Modifier.height(12.dp))
        }
    }
}

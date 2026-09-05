package com.tb710fu.hdrfix.ui

import android.content.ClipData
import android.content.ClipboardManager
import android.content.Context
import android.content.Intent
import android.widget.Toast
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
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.tb710fu.hdrfix.R
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import top.yukonga.miuix.kmp.basic.BasicComponent
import top.yukonga.miuix.kmp.basic.Card
import top.yukonga.miuix.kmp.basic.SmallTitle
import top.yukonga.miuix.kmp.basic.Text

@Composable
fun LogsPage() {
    val context = LocalContext.current
    val scope = rememberCoroutineScope()
    var content by remember { mutableStateOf("") }
    var logPath by remember { mutableStateOf("") }
    var logcatContent by remember { mutableStateOf("") }

    fun refresh() {
        scope.launch {
            // Self-heal before reading: the primary log file may be missing
            // (it was rm'ed once and system_server cannot re-create it due
            // to SELinux), and the sdcard mirror folder may never have
            // existed. Both are rebuilt as root on every refresh; only a
            // failed primary repair is surfaced to the user.
            val repairFailed = withContext(Dispatchers.IO) {
                var failed = false
                if (!Shell.logExists(Props.LOG_PATH_FALLBACK) && !Shell.repairLogFile()) {
                    failed = true
                }
                if (!Shell.pathExists(Props.LOG_PATH.substringBeforeLast('/'))) {
                    Shell.repairSdcardLog()
                }
                // Same order as readLog: /data/system is the file the
                // module actually writes; the sdcard file may be an empty
                // root-created placeholder that this app itself just healed.
                logPath = if (Shell.logExists(Props.LOG_PATH_FALLBACK)) {
                    Props.LOG_PATH_FALLBACK
                } else {
                    Props.LOG_PATH
                }
                failed
            }
            if (repairFailed) {
                Toast.makeText(context, R.string.log_repair_fail, Toast.LENGTH_SHORT).show()
            }
            content = withContext(Dispatchers.IO) { Props.readLog() }
            // Mirror to the user-visible folder so everything lives under
            // /storage/emulated/0/hdr日志/ (best effort; the module cannot
            // write there itself — SELinux neverallow).
            withContext(Dispatchers.IO) { runCatching { Shell.syncLogToSdcard() } }
        }
    }

    androidx.compose.runtime.LaunchedEffect(Unit) { refresh() }

    LazyColumn(modifier = Modifier.fillMaxSize()) {
        item {
            SmallTitle(
                text = stringResource(R.string.tab_logs),
                modifier = Modifier.padding(start = 24.dp, top = 16.dp, bottom = 8.dp),
            )
        }
        item {
            Text(
                text = if (logPath.isEmpty()) "" else "${stringResource(R.string.log_active_path)}: $logPath",
                modifier = Modifier.padding(start = 24.dp, bottom = 4.dp),
                fontSize = 11.sp,
            )
        }
        item {
            Card(modifier = Modifier.padding(horizontal = 12.dp)) {
                BasicComponent(
                    title = stringResource(R.string.log_refresh),
                    onClick = { refresh() },
                )
                BasicComponent(
                    title = stringResource(R.string.log_clear),
                    onClick = {
                        scope.launch {
                            withContext(Dispatchers.IO) {
                                Shell.clearLog(Props.LOG_PATH)
                                Shell.clearLog(Props.LOG_PATH_FALLBACK)
                            }
                            content = ""
                            Toast.makeText(context, R.string.log_cleared, Toast.LENGTH_SHORT).show()
                        }
                    },
                )
                BasicComponent(
                    title = stringResource(R.string.log_copy),
                    onClick = {
                        val cm = context.getSystemService(Context.CLIPBOARD_SERVICE) as ClipboardManager
                        cm.setPrimaryClip(ClipData.newPlainText("hdrfix-log", content))
                        Toast.makeText(context, R.string.copied, Toast.LENGTH_SHORT).show()
                    },
                )
                BasicComponent(
                    title = stringResource(R.string.log_share),
                    onClick = {
                        context.startActivity(
                            Intent(Intent.ACTION_SEND).setType("text/plain")
                                .putExtra(Intent.EXTRA_TEXT, content)
                        )
                    },
                )
                BasicComponent(
                    title = stringResource(R.string.log_export),
                    onClick = {
                        scope.launch {
                            val ok = withContext(Dispatchers.IO) {
                                // Same order as readLog — never export the
                                // possibly-empty sdcard placeholder.
                                val src = if (Shell.logExists(Props.LOG_PATH_FALLBACK)) {
                                    Props.LOG_PATH_FALLBACK
                                } else {
                                    Props.LOG_PATH
                                }
                                Shell.su(
                                    "cp", "-f", src,
                                    "/sdcard/Download/hdrfix.log",
                                ) != null
                            }
                            Toast.makeText(
                                context,
                                if (ok) R.string.exported else R.string.exec_fail,
                                Toast.LENGTH_SHORT,
                            ).show()
                        }
                    },
                )
                BasicComponent(
                    title = stringResource(R.string.log_capture_logcat),
                    onClick = {
                        scope.launch {
                            // XposedBridge.log output (tag LSPosed) is the
                            // only 100%-reliable channel on this setup, so
                            // grab the full buffer and filter in-process.
                            val text = withContext(Dispatchers.IO) {
                                Shell.captureModuleLogcat()
                            }
                            if (text.isBlank()) {
                                Toast.makeText(
                                    context,
                                    R.string.log_capture_empty,
                                    Toast.LENGTH_SHORT,
                                ).show()
                            } else {
                                logcatContent = text
                            }
                        }
                    },
                )
            }
            Spacer(modifier = Modifier.height(12.dp))
        }
        item {
            Card(modifier = Modifier.padding(horizontal = 12.dp, vertical = 4.dp)) {
                if (content.isBlank()) {
                    Text(
                        text = stringResource(R.string.log_empty),
                        modifier = Modifier.padding(16.dp),
                        fontSize = 13.sp,
                    )
                } else {
                    Text(
                        text = content,
                        modifier = Modifier.padding(16.dp),
                        fontFamily = FontFamily.Monospace,
                        fontSize = 11.sp,
                    )
                }
            }
            Spacer(modifier = Modifier.height(12.dp))
        }
        item {
            // Appended below the file log card — never replaces it.
            if (logcatContent.isNotBlank()) {
                SmallTitle(
                    text = stringResource(R.string.log_logcat_section),
                    modifier = Modifier.padding(start = 24.dp, top = 4.dp, bottom = 8.dp),
                )
                Card(modifier = Modifier.padding(horizontal = 12.dp, vertical = 4.dp)) {
                    Text(
                        text = logcatContent,
                        modifier = Modifier.padding(16.dp),
                        fontFamily = FontFamily.Monospace,
                        fontSize = 11.sp,
                    )
                }
                Spacer(modifier = Modifier.height(12.dp))
            }
        }
    }
}

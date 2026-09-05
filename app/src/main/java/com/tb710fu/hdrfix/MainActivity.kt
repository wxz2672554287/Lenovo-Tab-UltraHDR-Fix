package com.tb710fu.hdrfix

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.pager.HorizontalPager
import androidx.compose.foundation.pager.rememberPagerState
import androidx.compose.runtime.Composable
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.core.content.ContextCompat
import com.tb710fu.hdrfix.ui.AboutPage
import com.tb710fu.hdrfix.ui.AppTheme
import com.tb710fu.hdrfix.ui.ControlsPage
import com.tb710fu.hdrfix.ui.LogsPage
import com.tb710fu.hdrfix.ui.StatusPage
import com.tb710fu.hdrfix.ui.TestPage
import kotlinx.coroutines.launch
import top.yukonga.miuix.kmp.basic.NavigationBar
import top.yukonga.miuix.kmp.basic.NavigationBarItem
import top.yukonga.miuix.kmp.basic.Scaffold
import top.yukonga.miuix.kmp.icon.MiuixIcons
import top.yukonga.miuix.kmp.icon.extended.Edit
import top.yukonga.miuix.kmp.icon.extended.Home
import top.yukonga.miuix.kmp.icon.extended.Image
import top.yukonga.miuix.kmp.icon.extended.Settings
import top.yukonga.miuix.kmp.icon.extended.Tune

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContent {
            AppTheme {
                val prefs = remember { getSharedPreferences("eula", MODE_PRIVATE) }
                var accepted by remember {
                    mutableStateOf(prefs.getBoolean("accepted", false))
                }
                if (!accepted) {
                    com.tb710fu.hdrfix.ui.EulaScreen(
                        onAccept = {
                            prefs.edit().putBoolean("accepted", true).apply()
                            accepted = true
                        },
                        onDecline = { finish() },
                    )
                } else {
                    // First-frame async init: probe root — NOTE this ROM's
                    // manager shows NO passive grant dialog (denied instantly
                    // until the user grants in the SukiSU manager; StatusPage
                    // carries the guidance). Once granted: pre-create the log
                    // folder/file and mirror the log into
                    // /storage/emulated/0/hdr日志/ right away — the module
                    // itself can never write there (SELinux neverallow).
                    androidx.compose.runtime.LaunchedEffect(Unit) {
                        kotlinx.coroutines.withContext(kotlinx.coroutines.Dispatchers.IO) {
                            if (com.tb710fu.hdrfix.ui.Shell.hasRoot()) {
                                if (!com.tb710fu.hdrfix.ui.Shell.pathExists(
                                        com.tb710fu.hdrfix.ui.Props.LOG_PATH.substringBeforeLast('/'))) {
                                    com.tb710fu.hdrfix.ui.Shell.repairSdcardLog()
                                }
                                if (!com.tb710fu.hdrfix.ui.Shell.logExists(
                                        com.tb710fu.hdrfix.ui.Props.LOG_PATH_FALLBACK)) {
                                    com.tb710fu.hdrfix.ui.Shell.repairLogFile()
                                }
                                runCatching {
                                    com.tb710fu.hdrfix.ui.Shell.syncLogToSdcard()
                                }
                            }
                        }
                    }
                    MainScreen()
                }
            }
        }
    }
}

@Composable
private fun MainScreen() {
    val scope = rememberCoroutineScope()
    val pagerState = rememberPagerState(pageCount = { 5 })
    val titles = listOf(
        androidx.compose.ui.res.stringResource(R.string.tab_status),
        androidx.compose.ui.res.stringResource(R.string.tab_test),
        androidx.compose.ui.res.stringResource(R.string.tab_controls),
        androidx.compose.ui.res.stringResource(R.string.tab_logs),
        androidx.compose.ui.res.stringResource(R.string.tab_about),
    )
    val icons = listOf(
        MiuixIcons.Home,
        MiuixIcons.Image,
        MiuixIcons.Tune,
        MiuixIcons.Edit,
        MiuixIcons.Settings,
    )
    Scaffold(
        bottomBar = {
            NavigationBar {
                repeat(5) { index ->
                    NavigationBarItem(
                        selected = pagerState.currentPage == index,
                        onClick = {
                            scope.launch { pagerState.animateScrollToPage(index) }
                        },
                        icon = icons[index],
                        label = titles[index],
                    )
                }
            }
        },
    ) { innerPadding ->
        HorizontalPager(
            state = pagerState,
            modifier = Modifier.padding(innerPadding),
        ) { page ->
            when (page) {
                0 -> StatusPage()
                1 -> TestPage()
                2 -> ControlsPage()
                3 -> LogsPage()
                else -> AboutPage()
            }
        }
    }
}

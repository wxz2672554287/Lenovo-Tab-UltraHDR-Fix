package com.tb710fu.hdrfix.ui

import android.content.Intent
import android.net.Uri
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import androidx.compose.ui.res.stringResource
import com.tb710fu.hdrfix.R
import top.yukonga.miuix.kmp.basic.BasicComponent
import top.yukonga.miuix.kmp.basic.Card
import top.yukonga.miuix.kmp.basic.SmallTitle

/**
 * HDR test entry page. The actual full-screen sample rendering lives in a
 * dedicated [HdrTestActivity] so the window color mode never leaks into the
 * rest of the app.
 */
@Composable
fun TestPage() {
    val context = androidx.compose.ui.platform.LocalContext.current
    LazyColumn(modifier = Modifier.fillMaxSize()) {
        item {
            SmallTitle(
                text = stringResource(R.string.tab_test),
                modifier = Modifier.padding(start = 24.dp, top = 16.dp, bottom = 8.dp),
            )
        }
        item {
            Card(modifier = Modifier.padding(horizontal = 12.dp)) {
                BasicComponent(
                    title = stringResource(R.string.test_open_fullscreen),
                    summary = stringResource(R.string.test_open_fullscreen_summary),
                    onClick = { openHdrTest(context) },
                )
                BasicComponent(
                    title = stringResource(R.string.test_open_browser),
                    summary = stringResource(R.string.test_open_browser_summary),
                    onClick = {
                        context.startActivity(
                            Intent(Intent.ACTION_VIEW, Uri.parse("https://zyyme.com/hdr-test.html"))
                        )
                    },
                )
            }
            Spacer(modifier = Modifier.height(12.dp))
        }
    }
}

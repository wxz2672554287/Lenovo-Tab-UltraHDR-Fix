package com.tb710fu.hdrfix.ui

import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalUriHandler
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import com.tb710fu.hdrfix.BuildConfig
import com.tb710fu.hdrfix.R
import top.yukonga.miuix.kmp.basic.Card
import top.yukonga.miuix.kmp.basic.SmallTitle
import top.yukonga.miuix.kmp.preference.ArrowPreference

// The "check for updates" button and the GitHub repository entry were removed:
// the manifest never declared INTERNET so the check failed 100% of the time,
// and the repository is private now (both would only mislead users).

@Composable
fun AboutPage() {
    val uriHandler = LocalUriHandler.current

    LazyColumn(modifier = Modifier.fillMaxSize()) {
        item {
            SmallTitle(
                text = stringResource(R.string.tab_about),
                modifier = Modifier.padding(start = 24.dp, top = 16.dp, bottom = 8.dp),
            )
        }
        item {
            Card(modifier = Modifier.padding(horizontal = 12.dp)) {
                ArrowPreference(
                    title = stringResource(R.string.about_version),
                    summary = "v" + BuildConfig.VERSION_NAME,
                    onClick = { },
                )
                ArrowPreference(
                    title = stringResource(R.string.about_license),
                    onClick = {
                        uriHandler.openUri("https://www.apache.org/licenses/LICENSE-2.0")
                    },
                )
            }
            Spacer(modifier = Modifier.height(12.dp))
        }
        item {
            Card(modifier = Modifier.padding(horizontal = 12.dp)) {
                ArrowPreference(
                    title = stringResource(R.string.about_device),
                    summary = stringResource(R.string.about_disclaimer),
                    onClick = { },
                )
            }
            Spacer(modifier = Modifier.height(12.dp))
        }
    }
}

package com.tb710fu.hdrfix.ui

import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.Button
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.runtime.snapshotFlow
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.tb710fu.hdrfix.R
import top.yukonga.miuix.kmp.basic.SmallTitle
import top.yukonga.miuix.kmp.basic.Text

@Composable
fun EulaScreen(onAccept: () -> Unit, onDecline: () -> Unit) {
    val context = LocalContext.current
    val eulaText = remember {
        val zh = context.resources.configuration.locales.get(0).language.startsWith("zh")
        val id = if (zh) R.raw.eula_zh else R.raw.eula_en
        context.resources.openRawResource(id).bufferedReader().readText()
    }
    val scrollState = rememberScrollState()
    var reachedBottom by remember { mutableStateOf(false) }

    LaunchedEffect(scrollState) {
        snapshotFlow { scrollState.value to scrollState.maxValue }
            .collect { (value, max) ->
                if (max > 0 && value >= max - 8) reachedBottom = true
            }
    }

    Column(modifier = Modifier.fillMaxSize()) {
        SmallTitle(
            text = stringResource(R.string.eula_title),
            modifier = Modifier.padding(start = 24.dp, top = 24.dp, bottom = 8.dp),
        )
        if (!reachedBottom) {
            Text(
                text = stringResource(R.string.eula_scroll_hint),
                modifier = Modifier.padding(start = 24.dp, bottom = 8.dp),
                fontSize = 12.sp,
            )
        }
        Column(
            modifier = Modifier
                .weight(1f)
                .verticalScroll(scrollState)
                .padding(horizontal = 20.dp),
        ) {
            Text(text = eulaText, fontSize = 14.sp, lineHeight = 24.sp)
        }
        Row(modifier = Modifier.fillMaxWidth().padding(16.dp)) {
            TextButton(onClick = onDecline, modifier = Modifier.weight(1f)) {
                androidx.compose.material3.Text(stringResource(R.string.eula_decline))
            }
            Button(
                onClick = onAccept,
                enabled = reachedBottom,
                modifier = Modifier.weight(1f),
            ) {
                androidx.compose.material3.Text(stringResource(R.string.eula_agree))
            }
        }
    }
}

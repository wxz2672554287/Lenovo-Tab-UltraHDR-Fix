package com.tb710fu.hdrfix.ui

import android.content.Context
import androidx.compose.foundation.isSystemInDarkTheme
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.graphics.Color
import top.yukonga.miuix.kmp.theme.ColorSchemeMode
import top.yukonga.miuix.kmp.theme.MiuixTheme
import top.yukonga.miuix.kmp.theme.ThemeController
import top.yukonga.miuix.kmp.theme.darkColorScheme
import top.yukonga.miuix.kmp.theme.lightColorScheme

/** Theme preferences: mode (0 system, 1 light, 2 dark) + Monet dynamic color. */
object ThemePrefs {
    private const val SP = "theme"
    private const val KEY_MODE = "mode"
    private const val KEY_MONET = "monet"

    var mode by mutableIntStateOf(0)
        private set
    var monet by mutableStateOf(true)
        private set
    private var loaded = false

    fun load(context: Context) {
        if (loaded) return
        loaded = true
        val p = context.getSharedPreferences(SP, 0)
        mode = p.getInt(KEY_MODE, 0)
        monet = p.getBoolean(KEY_MONET, true)
    }

    fun setMode(context: Context, value: Int) {
        mode = value
        context.getSharedPreferences(SP, 0).edit().putInt(KEY_MODE, value).apply()
    }

    fun setMonet(context: Context, value: Boolean) {
        monet = value
        context.getSharedPreferences(SP, 0).edit().putBoolean(KEY_MONET, value).apply()
    }
}

@Composable
fun AppTheme(content: @Composable () -> Unit) {
    val context = androidx.compose.ui.platform.LocalContext.current
    ThemePrefs.load(context)
    val mode = ThemePrefs.mode
    val monet = ThemePrefs.monet
    val dark = when (mode) {
        1 -> false
        2 -> true
        else -> isSystemInDarkTheme()
    }
    val controller = remember(mode) {
        ThemeController(
            when (mode) {
                1 -> ColorSchemeMode.MonetLight
                2 -> ColorSchemeMode.MonetDark
                else -> ColorSchemeMode.MonetSystem
            },
            keyColor = Color(0xFFFF8A3D),
        )
    }
    if (monet) {
        MiuixTheme(controller = controller, content = content)
    } else {
        MiuixTheme(
            colors = if (dark) darkColorScheme() else lightColorScheme(),
            content = content,
        )
    }
}

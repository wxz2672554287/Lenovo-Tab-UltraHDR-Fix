package com.tb710fu.hdrfix.ui

import java.io.File

/**
 * Root shell + property helpers. All calls are one-shot (no polling, no
 * background threads) so the companion app stays power-cheap.
 */
object Shell {

    /**
     * Like [su] but with stderr draining and a timeout — required for large
     * outputs (e.g. `logcat -d` can be megabytes; an undrained stderr pipe
     * would deadlock readText) and for commands that may hang on a root
     * authorization prompt.
     */
    fun suTimed(timeoutMs: Long, vararg args: String): String? = try {
        val process = Runtime.getRuntime().exec(arrayOf("su", "0", *args))
        var output: String? = null
        val reader = Thread {
            output = runCatching {
                process.inputStream.bufferedReader().readText()
            }.getOrNull()
        }.also { it.isDaemon = true; it.start() }
        val errDrainer = Thread {
            runCatching { process.errorStream.readBytes() }
        }.also { it.isDaemon = true; it.start() }
        val finished = process.waitFor(timeoutMs, java.util.concurrent.TimeUnit.MILLISECONDS)
        if (!finished) {
            runCatching { process.destroyForcibly() }
            null
        } else {
            reader.join(5000)
            output
        }
    } catch (t: Throwable) {
        null
    }

    /** Runs a command as uid 0 via `su 0 ...`; returns stdout or null on failure. */
    fun su(vararg args: String): String? = try {
        val process = Runtime.getRuntime().exec(arrayOf("su", "0", *args))
        val out = process.inputStream.bufferedReader().readText()
        val ok = process.waitFor() == 0
        if (ok) out else null
    } catch (t: Throwable) {
        null
    }

    fun setProp(key: String, value: String): Boolean =
        su("setprop", key, value) != null

    fun getProp(key: String): String =
        su("getprop", key)?.trim() ?: ""

    /** Current hdrSdrRatio as reported to apps (NaN until the module patches it). */
    fun currentRatio(): String? {
        val dump = su("dumpsys", "display") ?: return null
        val line = dump.lineSequence()
            .firstOrNull { it.contains("hdrSdrRatio", ignoreCase = true) }
            ?: return null
        return line.substringAfter("hdrSdrRatio", "").trim()
            .removePrefix("=").trim().takeIf { it.isNotEmpty() }
    }

    fun readLog(path: String): String =
        su("cat", path)?.takeIf { it.isNotBlank() } ?: ""

    fun clearLog(path: String): Boolean {
        // Rotate file can be removed (no active handle on it).
        su("rm", "-f", "$path.old")
        // Truncate IN PLACE. NEVER rm the live file: the system_server-side
        // writer holds an open O_APPEND handle — deleting it sends all
        // subsequent writes to an orphaned inode and the log silently stops.
        // If truncate fails (e.g. file absent) we simply do nothing; the
        // module-side writer will (re)create the file on the next event.
        return su("toybox", "truncate", "-s", "0", path) != null
    }

    /** True when `su 0` works (the manager granted us root). Timed so a
     *  wedged manager can never hang a caller. */
    fun hasRoot(): Boolean = suTimed(5_000L, "id") != null

    /**
     * Mirrors the authoritative /data/system log into the user-visible
     * sdcard folder. The module itself CANNOT write /storage (AOSP SELinux
     * neverallow: system_server has no rw perms on fuse/sdcard_type — see
     * sdcard日志方案调研.md), so this root copy is the only sanctioned way
     * to keep everything under /storage/emulated/0/hdr日志/.
     * Single command, no shell metacharacters (this ROM's su re-joins args).
     */
    fun syncLogToSdcard(): Boolean {
        val ok = su("cp", "-f", Props.LOG_PATH_FALLBACK, Props.LOG_PATH) != null
        return ok && pathExists(Props.LOG_PATH)
    }

    fun pathExists(path: String): Boolean = su("ls", path) != null

    fun logExists(path: String): Boolean = pathExists(path)

    /**
     * Re-creates the primary log file as root. The file was once removed by
     * root and system_server cannot re-create it (SELinux), leaving the
     * module-side writer with EACCES forever: touch as root, hand the file
     * back to system:system and open it up for every writer. Returns the
     * outcome of the final chmod.
     */
    fun repairLogFile(): Boolean {
        val path = Props.LOG_PATH_FALLBACK
        su("touch", path)
        su("chown", "system:system", path)
        su("chmod", "666", path)
        // Restore the SELinux context explicitly (the file may have been
        // created with a context system_server cannot append to).
        su("restorecon", path)
        // The exit codes lie under root — verify by existence instead.
        return pathExists(path)
    }

    /**
     * Best-effort re-creation of the sdcard mirror (folder + writable log
     * file). Once the folder exists the module recreates the file itself,
     * so failures here never block the caller.
     */
    fun repairSdcardLog(): Boolean {
        val dir = Props.LOG_PATH.substringBeforeLast('/')
        su("mkdir", "-p", dir)
        su("chmod", "777", dir)
        su("touch", Props.LOG_PATH)
        return su("chmod", "666", Props.LOG_PATH) != null
    }

    /**
     * Dumps the whole logcat buffer and keeps every line that mentions the
     * module tag — XposedBridge.log output always carries the
     * "[HDRRatioFix] " prefix, so this is the 100%-reliable diagnostics
     * channel. Filtering happens here in-process because this ROM's su
     * cannot run piped commands ("su -c" does not split words).
     * Returns an empty string when the dump itself fails.
     */
    fun captureModuleLogcat(): String {
        // suTimed: megabyte buffers deadlock without stderr draining, and a
        // root-authorization prompt must not hang the caller forever.
        val dump = suTimed(20_000L, "logcat", "-d") ?: return ""
        val lines = dump.lineSequence()
            .filter { it.contains("HDRRatioFix") }
            .toList()
        // UI sanity cap: keep the newest 400 lines (append-ordered — the
        // tail is the fresh diagnostics).
        return (if (lines.size > 400) lines.takeLast(400) else lines)
            .joinToString("\n")
    }
}

object Props {
    /** Must match HdrRatioFix.VERSION / build.gradle versionName (kept in
     *  sync by release checklist; used for the "module not reloaded" hint). */
    const val APP_VERSION = "1.0.0-20260905"
    const val DISABLE = "persist.sys.tb710.hdrfix.disable"
    const val LOG = "persist.sys.tb710.hdrfix.log"
    const val MAX = "persist.sys.tb710.hdrfix.max"
    const val GPU = "persist.sys.tb710.hdrfix.gpu"
    const val MODE = "persist.sys.tb710.hdrfix.mode"
    const val HOOKED = "persist.sys.tb710.hdrfix.hooked"
    const val VERSION = "persist.sys.tb710.hdrfix.version"
    const val LOG_PATH = "/storage/emulated/0/hdr日志/hdrfix.log"
    const val LOG_PATH_FALLBACK = "/data/system/hdrfix.log"

    fun bool(key: String): Boolean = Shell.getProp(key) == "true" || Shell.getProp(key) == "1"

    // Read order matches the module's WRITE order: /data/system is the
    // always-writable primary, the sdcard folder is a mirror that may not
    // exist on this device. Reading sdcard first would surface only the boot
    // seed line on half-working setups and hide the real log.
    fun readLog(): String {
        val p = Shell.readLog(LOG_PATH_FALLBACK)
        return if (p.isNotEmpty()) p else Shell.readLog(LOG_PATH)
    }
}

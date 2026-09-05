#!/system/bin/sh
# Runs at boot (KernelSU / Magisk late_start service), as root.
#
# Goal: every log written by the LSPosed module (running in system_server) must
# be readable by you in a file manager WITHOUT touching the shell.
#
# system_server (uid 1000) cannot always write /storage/emulated/0 (FUSE +
# SELinux may refuse even after chown - FUSE remaps ownership). The ALWAYS-SAFE
# storage is /data/system/hdrfix.log. This script therefore ALSO creates the
# sdcard folder + a seed file and gives it a fuse context, so the module's
# dual-path writer (sdcard primary, /data/system fallback) gets the best chance
# on your device.

# --- 1. sdcard folder (best effort; may fail on some ROMs, that's OK) -------
SDIR="/storage/emulated/0/hdr日志"
mkdir -p "$SDIR" 2>/dev/null
chmod 0777 "$SDIR" 2>/dev/null
chcon u:object_r:fuse:s0 "$SDIR" 2>/dev/null
# Seed a comma so the folder + file appear in the file manager.
LOG="$SDIR/hdrfix.log"
[ -f "$LOG" ] || (echo "boot seed $(date +%s)" > "$LOG" 2>/dev/null)
chmod 0666 "$LOG" 2>/dev/null

# --- 2. /data/system guaranteed-writable log (module always writes here too) --
SL="/data/system/hdrfix.log"
[ -f "$SL" ] || (echo "boot seed $(date +%s)" > "$SL" 2>/dev/null)
chown system:system "$SL" 2>/dev/null
chmod 0666 "$SL" 2>/dev/null

exit 0

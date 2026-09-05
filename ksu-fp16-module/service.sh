# KSU 模块 service.sh — 开机预建日志文件(root),修复 system_server 的 EACCES
# 背景:/data/system/hdrfix.log 曾被 rm,system_server 无权重建(SELinux 只允许
# append 已存在文件);root 预建+chown system 后 LSPosed 模块即可正常写入。
# sdcard 目录尽力而为(模块自身写不了 sdcard——SELinux neverallow;App 负责镜像)。

SL="/data/system/hdrfix.log"
[ -f "$SL" ] || echo "boot seed $(date +%s)" > "$SL" 2>/dev/null
chown system:system "$SL" 2>/dev/null
chmod 666 "$SL" 2>/dev/null
restorecon "$SL" 2>/dev/null

SDIR="/storage/emulated/0/hdr日志"
mkdir -p "$SDIR" 2>/dev/null
chmod 777 "$SDIR" 2>/dev/null
[ -f "$SDIR/hdrfix.log" ] || echo "boot seed $(date +%s)" > "$SDIR/hdrfix.log" 2>/dev/null
chmod 666 "$SDIR/hdrfix.log" 2>/dev/null

exit 0

#!/sbin/sh
# KernelSU / Magisk module installer.
# The module simply overlays /vendor/etc/displayconfig/default.xml; Magisk/KSU
# merge it automatically, so no bind-mount script is needed.
ui_print "*******************************"
ui_print " TB710FU HDR displayconfig fix"
ui_print "*******************************"
ui_print "叠加 default.xml (screenBrightnessMap + sdrHdrRatioMap + HBM)"
ui_print "重启后生效"

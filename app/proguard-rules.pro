# Keep the companion UI small; the Xposed hook entry class must survive.
-keep class com.tb710fu.hdrfix.HdrRatioFix { *; }
-keep class com.tb710fu.hdrfix.HdrRatioFix$* { *; }
-dontwarn de.robv.android.xposed.**

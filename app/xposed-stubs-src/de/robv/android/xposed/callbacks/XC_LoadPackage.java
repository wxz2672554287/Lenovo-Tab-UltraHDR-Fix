package de.robv.android.xposed.callbacks;

public abstract class XC_LoadPackage {
    public static class LoadPackageParam {
        public String processName;
        public String packageName;
        public ClassLoader classLoader;
    }
}

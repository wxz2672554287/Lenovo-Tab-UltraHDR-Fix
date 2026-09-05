package de.robv.android.xposed;

public final class XposedHelpers {
    public static XC_MethodHook.Unhook findAndHookMethod(Class<?> clazz, String methodName, Object... parameterTypesAndCallback) {
        return null;
    }

    public static XC_MethodHook.Unhook findAndHookMethod(String className, ClassLoader classLoader, String methodName, Object... parameterTypesAndCallback) {
        return null;
    }

    public static Class<?> findClass(String className, ClassLoader classLoader) {
        return null;
    }

    public static Object getObjectField(Object obj, String fieldName) {
        return null;
    }

    public static float getFloatField(Object obj, String fieldName) {
        return 0;
    }

    public static boolean getBooleanField(Object obj, String fieldName) {
        return false;
    }

    public static void setFloatField(Object obj, String fieldName, float value) {
    }

    public static Object callMethod(Object obj, String methodName, Object... args) {
        return null;
    }

    public static Object callStaticMethod(Class<?> clazz, String methodName, Object... args) {
        return null;
    }
}

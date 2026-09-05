package com.tb710fu.hdrfix

import android.app.Application

/**
 * The LSPosed module hooks this class (see HdrRatioFix) to leave a live
 * "module is active" marker in the app's own SharedPreferences — the
 * community-recommended activation check (rovo89/XposedBridge#64): no root
 * needed to read, no stale marker after uninstall.
 */
class App : Application()

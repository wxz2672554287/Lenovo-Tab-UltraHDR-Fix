.class public final Lcom/android/server/display/LocalDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "LocalDisplayAdapter.java"


# static fields
.field public static final DEBUG_DESKTOP:Z

.field public static FIXED_PHYSICAL_PCMODE_DISPLAY_ID:I


# instance fields
.field public mActiveDisplayMode:I

.field public mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

.field public final mDevices:Landroid/util/LongSparseArray;

.field public final mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

.field public mEvenDimmerStrength:I

.field public final mInjector:Lcom/android/server/display/LocalDisplayAdapter$Injector;

.field public final mIsBootDisplayModeSupported:Z

.field public final mIsCliSupported:Z

.field public mOverlayContext:Landroid/content/Context;

.field public final mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

.field public mStoredDefaultPhysicalDisplayId:J

.field public final mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmActiveDisplayMode(Lcom/android/server/display/LocalDisplayAdapter;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mActiveDisplayMode:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCdsi(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDevices(Lcom/android/server/display/LocalDisplayAdapter;)Landroid/util/LongSparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayNotificationManager(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/notifications/DisplayNotificationManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEvenDimmerStrength(Lcom/android/server/display/LocalDisplayAdapter;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mEvenDimmerStrength:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/LocalDisplayAdapter$Injector;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mInjector:Lcom/android/server/display/LocalDisplayAdapter$Injector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsBootDisplayModeSupported(Lcom/android/server/display/LocalDisplayAdapter;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mIsBootDisplayModeSupported:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPersistentDataStore(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSurfaceControlProxy(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmActiveDisplayMode(Lcom/android/server/display/LocalDisplayAdapter;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mActiveDisplayMode:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCdsi(Lcom/android/server/display/LocalDisplayAdapter;Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEvenDimmerStrength(Lcom/android/server/display/LocalDisplayAdapter;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mEvenDimmerStrength:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetFontScale(Lcom/android/server/display/LocalDisplayAdapter;)F
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter;->getFontScale()F

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhdrTypesEqual(Lcom/android/server/display/LocalDisplayAdapter;[I[I)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter;->hdrTypesEqual([I[I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mtryConnectDisplayLocked(Lcom/android/server/display/LocalDisplayAdapter;JZ)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/LocalDisplayAdapter;->tryConnectDisplayLocked(JZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtryDisconnectDisplayLocked(Lcom/android/server/display/LocalDisplayAdapter;J)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter;->tryDisconnectDisplayLocked(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG_DESKTOP()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/android/server/display/LocalDisplayAdapter;->DEBUG_DESKTOP:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 90
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/display/LocalDisplayAdapter;->DEBUG_DESKTOP:Z

    const/16 v0, 0x2710

    .line 2070
    sput v0, Lcom/android/server/display/LocalDisplayAdapter;->FIXED_PHYSICAL_PCMODE_DISPLAY_ID:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/notifications/DisplayNotificationManager;Lcom/android/server/display/LocalDisplayAdapter$Injector;)V
    .registers 17

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 131
    invoke-direct/range {v0 .. v8}, Lcom/android/server/display/LocalDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/notifications/DisplayNotificationManager;Lcom/android/server/display/LocalDisplayAdapter$Injector;Lcom/android/server/display/PersistentDataStore;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/notifications/DisplayNotificationManager;Lcom/android/server/display/LocalDisplayAdapter$Injector;Lcom/android/server/display/PersistentDataStore;)V
    .registers 16

    .line 138
    const-string v5, "LocalDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    .line 100
    new-instance p1, Landroid/util/LongSparseArray;

    invoke-direct {p1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    const/4 p1, -0x1

    .line 114
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mEvenDimmerStrength:I

    const-wide/16 p1, -0x1

    .line 2071
    iput-wide p1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mStoredDefaultPhysicalDisplayId:J

    .line 139
    iput-object p6, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

    if-eqz p7, :cond_1e

    goto :goto_23

    .line 140
    :cond_1e
    new-instance p7, Lcom/android/server/display/LocalDisplayAdapter$Injector;

    invoke-direct {p7}, Lcom/android/server/display/LocalDisplayAdapter$Injector;-><init>()V

    :goto_23
    iput-object p7, p0, Lcom/android/server/display/LocalDisplayAdapter;->mInjector:Lcom/android/server/display/LocalDisplayAdapter$Injector;

    .line 141
    invoke-virtual {p7}, Lcom/android/server/display/LocalDisplayAdapter$Injector;->getSurfaceControlProxy()Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    .line 142
    invoke-virtual {p1}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->getBootDisplayModeSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mIsBootDisplayModeSupported:Z

    .line 143
    iput-object p8, p0, Lcom/android/server/display/LocalDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    const/4 p1, 0x0

    .line 144
    iput-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mIsCliSupported:Z

    return-void
.end method

.method public static getPowerModeForState(I)I
    .registers 4

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_11

    const/4 v1, 0x6

    const/4 v2, 0x4

    if-eq p0, v1, :cond_10

    const/4 v1, 0x3

    if-eq p0, v1, :cond_f

    if-eq p0, v2, :cond_e

    const/4 p0, 0x2

    return p0

    :cond_e
    return v1

    :cond_f
    return v0

    :cond_10
    return v2

    :cond_11
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public enterPcDesktopMode()V
    .registers 4

    .line 2074
    const-string v0, "LocalDisplayAdapter"

    const-string v1, "ZuiDesktop: enterPcDesktopMode, tryConnectDisplayLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    sget v0, Lcom/android/server/display/LocalDisplayAdapter;->FIXED_PHYSICAL_PCMODE_DISPLAY_ID:I

    int-to-long v0, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/display/LocalDisplayAdapter;->tryConnectDisplayLocked(JZ)V

    return-void
.end method

.method public exitPcDesktopMode()V
    .registers 5

    .line 2079
    const-string v0, "ZuiDesktop: exitPcDesktopMode, tryDisconnectDisplayLocked"

    const-string v1, "LocalDisplayAdapter"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    sget v0, Lcom/android/server/display/LocalDisplayAdapter;->FIXED_PHYSICAL_PCMODE_DISPLAY_ID:I

    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/display/LocalDisplayAdapter;->tryDisconnectDisplayLocked(J)V

    .line 2083
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZuiDesktop: exitPcDesktopMode back connect to id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/display/LocalDisplayAdapter;->mStoredDefaultPhysicalDisplayId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    iget-wide v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mStoredDefaultPhysicalDisplayId:J

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/display/LocalDisplayAdapter;->tryConnectDisplayLocked(JZ)V

    const-wide/16 v0, -0x1

    .line 2086
    iput-wide v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mStoredDefaultPhysicalDisplayId:J

    return-void
.end method

.method public final getFontScale()F
    .registers 4

    .line 2103
    const-string/jumbo p0, "persist.desktop.font_size_scale"

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2104
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    .line 2103
    invoke-static {p0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2107
    :try_start_d
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_11} :catch_12

    goto :goto_28

    .line 2109
    :catch_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid font scale string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "LocalDisplayAdapter"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_28
    return v0
.end method

.method public getOverlayContext()Landroid/content/Context;
    .registers 2

    .line 1744
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mOverlayContext:Landroid/content/Context;

    if-nez v0, :cond_e

    .line 1745
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mOverlayContext:Landroid/content/Context;

    .line 1747
    :cond_e
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mOverlayContext:Landroid/content/Context;

    return-object p0
.end method

.method public final hdrTypesEqual([I[I)Z
    .registers 3

    .line 1736
    array-length p0, p1

    invoke-static {p1, p0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    .line 1737
    invoke-static {p0}, Ljava/util/Arrays;->sort([I)V

    .line 1739
    invoke-static {p0, p2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    return p0
.end method

.method public registerLocked()V
    .registers 7

    .line 151
    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    .line 153
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mInjector:Lcom/android/server/display/LocalDisplayAdapter$Injector;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;-><init>(Lcom/android/server/display/LocalDisplayAdapter;Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener-IA;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/LocalDisplayAdapter$Injector;->setDisplayEventListenerLocked(Landroid/os/Looper;Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;)V

    .line 156
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    invoke-virtual {v0}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->getPhysicalDisplayIds()[J

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1f
    if-ge v3, v1, :cond_29

    aget-wide v4, v0, v3

    .line 157
    invoke-virtual {p0, v4, v5, v2}, Lcom/android/server/display/LocalDisplayAdapter;->tryConnectDisplayLocked(JZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_29
    return-void
.end method

.method public final tryConnectDisplayLocked(JZ)V
    .registers 19

    move-object v10, p0

    move-wide/from16 v11, p1

    .line 168
    iget-object v0, v10, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    .line 169
    invoke-virtual {v0, v11, v12}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->getPhysicalDisplayToken(J)Landroid/os/IBinder;

    move-result-object v0

    .line 170
    invoke-static {}, Lcom/android/server/wm/OVDesktopController;->isPcDesktopFeatureEnabled()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v13, 0x1

    const-string v3, "LocalDisplayAdapter"

    if-eqz v1, :cond_66

    .line 171
    sget v1, Lcom/android/server/display/LocalDisplayAdapter;->FIXED_PHYSICAL_PCMODE_DISPLAY_ID:I

    int-to-long v4, v1

    cmp-long v1, v4, v11

    if-nez v1, :cond_66

    .line 172
    iget-object v1, v10, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    invoke-virtual {v1}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->getPhysicalDisplayIds()[J

    move-result-object v1

    array-length v4, v1

    move v5, v2

    :goto_22
    if-ge v5, v4, :cond_66

    aget-wide v6, v1, v5

    .line 173
    iget-object v0, v10, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    invoke-virtual {v0, v6, v7}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->getPhysicalDisplayToken(J)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_68

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ZuiDesktop: tryConnectDisplayLocked, get id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ,displayToken="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-wide v4, v10, Lcom/android/server/display/LocalDisplayAdapter;->mStoredDefaultPhysicalDisplayId:J

    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-gez v1, :cond_66

    .line 177
    iput-wide v6, v10, Lcom/android/server/display/LocalDisplayAdapter;->mStoredDefaultPhysicalDisplayId:J

    .line 179
    iget-object v1, v10, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    if-eqz v1, :cond_66

    .line 181
    const-string v4, "ZuiDesktop: set NoSwitchFlag"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {v1, v13}, Lcom/android/server/display/DisplayDevice;->setNoSwitchFlag(Z)V

    :cond_66
    move-object v4, v0

    goto :goto_6b

    :cond_68
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    :goto_6b
    if-eqz v4, :cond_1d6

    .line 194
    iget-object v0, v10, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    .line 195
    invoke-virtual {v0, v11, v12}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->getStaticDisplayInfo(J)Landroid/view/SurfaceControl$StaticDisplayInfo;

    move-result-object v0

    if-nez v0, :cond_90

    .line 197
    sget v1, Lcom/android/server/display/LocalDisplayAdapter;->FIXED_PHYSICAL_PCMODE_DISPLAY_ID:I

    int-to-long v5, v1

    cmp-long v1, v5, v11

    if-nez v1, :cond_90

    .line 199
    invoke-static {}, Lcom/android/server/wm/OVDesktopController;->isPcDesktopFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_90

    .line 200
    invoke-static {}, Lcom/android/server/wm/OVDesktopController;->isUnderPcDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_90

    .line 201
    iget-object v0, v10, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    iget-wide v5, v10, Lcom/android/server/display/LocalDisplayAdapter;->mStoredDefaultPhysicalDisplayId:J

    invoke-virtual {v0, v5, v6}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->getStaticDisplayInfo(J)Landroid/view/SurfaceControl$StaticDisplayInfo;

    move-result-object v0

    :cond_90
    move-object v5, v0

    if-nez v5, :cond_a8

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No valid static info found for display device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 208
    :cond_a8
    iget-object v0, v10, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    .line 209
    invoke-virtual {v0, v11, v12}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->getDynamicDisplayInfo(J)Landroid/view/SurfaceControl$DynamicDisplayInfo;

    move-result-object v0

    if-nez v0, :cond_cb

    .line 211
    sget v1, Lcom/android/server/display/LocalDisplayAdapter;->FIXED_PHYSICAL_PCMODE_DISPLAY_ID:I

    int-to-long v6, v1

    cmp-long v1, v6, v11

    if-nez v1, :cond_cb

    .line 213
    invoke-static {}, Lcom/android/server/wm/OVDesktopController;->isPcDesktopFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_cb

    .line 214
    invoke-static {}, Lcom/android/server/wm/OVDesktopController;->isUnderPcDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_cb

    .line 215
    iget-object v0, v10, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    iget-wide v6, v10, Lcom/android/server/display/LocalDisplayAdapter;->mStoredDefaultPhysicalDisplayId:J

    invoke-virtual {v0, v6, v7}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->getDynamicDisplayInfo(J)Landroid/view/SurfaceControl$DynamicDisplayInfo;

    move-result-object v0

    :cond_cb
    move-object v6, v0

    if-nez v6, :cond_e3

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No valid dynamic info found for display device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 222
    :cond_e3
    iget-object v0, v6, Landroid/view/SurfaceControl$DynamicDisplayInfo;->supportedDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    if-nez v0, :cond_fc

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No valid modes found for display device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 227
    :cond_fc
    iget v0, v6, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeDisplayModeId:I

    if-gez v0, :cond_115

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No valid active mode found for display device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 234
    :cond_115
    iget-boolean v0, v5, Landroid/view/SurfaceControl$StaticDisplayInfo;->isInternal:Z

    if-nez v0, :cond_150

    iget-boolean v0, v10, Lcom/android/server/display/LocalDisplayAdapter;->mIsCliSupported:Z

    if-eqz v0, :cond_125

    iget-object v0, v10, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    .line 235
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-eq v0, v13, :cond_150

    .line 237
    :cond_125
    invoke-virtual {p0}, Lcom/android/server/display/DisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v5, Landroid/view/SurfaceControl$StaticDisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    .line 236
    invoke-static {v0, v1}, Lcom/motorola/internal/app/MotoDesktopManager;->isBlackListDisplay(Landroid/content/Context;Landroid/hardware/display/DeviceProductInfo;)Z

    move-result v0

    if-nez v0, :cond_150

    iget-object v0, v10, Lcom/android/server/display/LocalDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    if-eqz v0, :cond_150

    .line 239
    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->getReadyforShieldMode()I

    move-result v0

    if-nez v0, :cond_150

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disabled by Think Shield for display device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 246
    :cond_150
    iget v0, v6, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeColorMode:I

    if-gez v0, :cond_16b

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No valid active color mode for display device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 251
    iput v0, v6, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeColorMode:I

    .line 253
    :cond_16b
    iget-object v0, v10, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    .line 254
    invoke-virtual {v0, v4}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->getDesiredDisplayModeSpecs(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    move-result-object v7

    if-nez v7, :cond_179

    .line 258
    const-string v0, "Desired display mode specs from SurfaceFlinger are null"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 261
    :cond_179
    iget-object v0, v10, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v11, v12}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    if-nez v0, :cond_1a3

    .line 264
    iget-object v0, v10, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-nez v0, :cond_18d

    move v8, v13

    goto :goto_18e

    :cond_18d
    move v8, v2

    .line 265
    :goto_18e
    new-instance v14, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    move-object v0, v14

    move-object v1, p0

    move-object v2, v4

    move-wide/from16 v3, p1

    move/from16 v9, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;-><init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/IBinder;JLandroid/view/SurfaceControl$StaticDisplayInfo;Landroid/view/SurfaceControl$DynamicDisplayInfo;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;ZZ)V

    .line 267
    iget-object v0, v10, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v11, v12, v14}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 268
    invoke-virtual {p0, v14, v13}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    goto :goto_1d6

    .line 272
    :cond_1a3
    iget-wide v8, v10, Lcom/android/server/display/LocalDisplayAdapter;->mStoredDefaultPhysicalDisplayId:J

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fgetmPhysicalDisplayId(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)J

    move-result-wide v11

    cmp-long v1, v8, v11

    if-nez v1, :cond_1cc

    .line 273
    invoke-static {}, Lcom/android/server/wm/OVDesktopController;->isPcDesktopFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_1d6

    .line 274
    const-string v1, "ZuiDesktop: clear NoSwitchFlag"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayDevice;->setNoSwitchFlag(Z)V

    .line 276
    const-string v1, "ZuiDesktop: set ForceSwitchFlag"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {v0, v13}, Lcom/android/server/display/DisplayDevice;->setForceSwitchFlag(Z)V

    .line 278
    const-string v0, "ZuiDesktop: restore default display layerstack and projection by sendTraversalRequestLocked"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {p0}, Lcom/android/server/display/DisplayAdapter;->sendTraversalRequestLocked()V

    goto :goto_1d6

    .line 282
    :cond_1cc
    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDisplayPropertiesLocked(Landroid/view/SurfaceControl$StaticDisplayInfo;Landroid/view/SurfaceControl$DynamicDisplayInfo;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z

    move-result v1

    if-eqz v1, :cond_1d6

    const/4 v1, 0x2

    .line 284
    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    :cond_1d6
    :goto_1d6
    return-void
.end method

.method public final tryDisconnectDisplayLocked(J)V
    .registers 5

    .line 294
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    if-eqz v0, :cond_13

    .line 297
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    const/4 p1, 0x3

    .line 298
    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    :cond_13
    return-void
.end method

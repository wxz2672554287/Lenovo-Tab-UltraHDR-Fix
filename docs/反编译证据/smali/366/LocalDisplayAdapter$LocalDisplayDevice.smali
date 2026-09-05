.class public final Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "LocalDisplayAdapter.java"


# instance fields
.field public mActiveColorMode:I

.field public final mActiveDisplayMode:I

.field public mActiveModeId:I

.field public mActiveRenderFrameRate:F

.field public mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

.field public mActiveSfDisplayModeAtStartId:I

.field public mAllmRequested:Z

.field public mAllmSupported:Z

.field public final mBacklightAdapter:Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;

.field public mBrightnessState:F

.field public mCommittedState:I

.field public mConnectedHdcpLevel:I

.field public mCurrentHdrSdrRatio:F

.field public mDefaultModeGroup:I

.field public mDefaultModeId:I

.field public final mDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

.field public mDisplayModeSpecsInvalid:Z

.field public mFrameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

.field public mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

.field public mGameContentTypeRequested:Z

.field public mGameContentTypeSupported:Z

.field public mHasArrSupport:Z

.field public mHavePendingChanges:Z

.field public mHdrCapabilities:Landroid/view/Display$HdrCapabilities;

.field public mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field public final mIsFirstDisplay:Z

.field public final mPhysicalDisplayId:J

.field public mSdrBrightnessState:F

.field public mSfDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

.field public mSidekickActive:Z

.field public final mSidekickInternal:Landroid/hardware/sidekick/SidekickInternal;

.field public mState:I

.field public mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

.field public final mSupportedColorModes:Ljava/util/ArrayList;

.field public final mSupportedModes:Landroid/util/SparseArray;

.field public mSupportedRefreshRates:[F

.field public mSystemPreferredModeId:I

.field public mUserPreferredMode:Landroid/view/Display$Mode;

.field public mUserPreferredModeId:I

.field public final synthetic this$0:Lcom/android/server/display/LocalDisplayAdapter;


# direct methods
.method public static synthetic $r8$lambda$2mDGU7MhiqIgCCmgOO6loW4_S4I(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->lambda$onDisplayModeChangedLocked$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$NzC1iSMVu_tgB5rNAKv1CHyLmPA(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Landroid/os/IBinder;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->requestColorModeAsync(Landroid/os/IBinder;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$nQXuR3rRi3rSRLFK9tosCrQw4ig(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->setDesiredDisplayModeSpecsAsync(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBacklightAdapter(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklightAdapter:Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentHdrSdrRatio(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mCurrentHdrSdrRatio:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSidekickActive(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSidekickActive:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSidekickInternal(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Landroid/hardware/sidekick/SidekickInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSidekickInternal:Landroid/hardware/sidekick/SidekickInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmBrightnessState(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightnessState:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCommittedState(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mCommittedState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentHdrSdrRatio(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mCurrentHdrSdrRatio:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSdrBrightnessState(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSdrBrightnessState:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSidekickActive(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSidekickActive:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateDeviceInfoLocked(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/IBinder;JLandroid/view/SurfaceControl$StaticDisplayInfo;Landroid/view/SurfaceControl$DynamicDisplayInfo;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;Z)V
    .registers 17

    move-object v6, p6

    move/from16 v7, p8

    .line 285
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "local:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 287
    invoke-virtual {p1}, Lcom/android/server/display/DisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 288
    invoke-virtual {p1}, Lcom/android/server/display/DisplayAdapter;->getFeatureFlags()Lcom/android/server/display/feature/DisplayManagerFlags;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/feature/DisplayManagerFlags;->isPixelAnisotropyCorrectionInLogicalDisplayEnabled()Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 286
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Context;Z)V

    .line 228
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    .line 229
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    .line 230
    new-instance v1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-direct {v1}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    const/4 v1, 0x0

    .line 238
    iput v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 239
    iput v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mCommittedState:I

    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 242
    iput v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightnessState:F

    .line 243
    iput v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSdrBrightnessState:F

    .line 244
    iput v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mCurrentHdrSdrRatio:F

    const/4 v2, -0x1

    .line 245
    iput v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    .line 246
    iput v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSystemPreferredModeId:I

    .line 248
    iput v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredModeId:I

    .line 251
    iput v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayModeAtStartId:I

    .line 253
    iput v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    .line 258
    new-array v3, v1, [F

    iput-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedRefreshRates:[F

    .line 276
    new-array v3, v1, [Landroid/view/DisplayEventReceiver$FrameRateOverride;

    iput-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    .line 289
    iput-wide p3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    .line 290
    iput-boolean v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mIsFirstDisplay:Z

    move-object v4, p7

    .line 291
    invoke-virtual {p0, p5, p6, p7}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDisplayPropertiesLocked(Landroid/view/SurfaceControl$StaticDisplayInfo;Landroid/view/SurfaceControl$DynamicDisplayInfo;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z

    .line 292
    const-class v3, Landroid/hardware/sidekick/SidekickInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/sidekick/SidekickInternal;

    iput-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSidekickInternal:Landroid/hardware/sidekick/SidekickInternal;

    .line 293
    invoke-static {p1}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmInjector(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/LocalDisplayAdapter$Injector;

    move-result-object v3

    invoke-static {p1}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmSurfaceControlProxy(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    move-result-object v4

    invoke-virtual {v3, p2, v7, v4}, Lcom/android/server/display/LocalDisplayAdapter$Injector;->getBacklightAdapter(Landroid/os/IBinder;ZLcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;)Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklightAdapter:Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;

    .line 295
    iget v3, v6, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeDisplayModeId:I

    iput v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayModeAtStartId:I

    .line 298
    invoke-static {}, Lcom/motorola/internal/app/MotoDesktopManager;->isDesktopSupported()Z

    move-result v3

    if-eqz v3, :cond_cf

    invoke-static {p1}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmPersistentDataStore(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v3

    if-eqz v3, :cond_cf

    .line 299
    invoke-static {p1}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmPersistentDataStore(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/display/PersistentDataStore;->getDesktopDisplayMode()I

    move-result v3

    .line 300
    invoke-static {}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$sfgetDEBUG_DESKTOP()Z

    move-result v4

    if-eqz v4, :cond_c6

    .line 301
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New LocalDisplayDevice displayMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mIsFirstDisplay="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mUniqueId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 301
    const-string v5, "LocalDisplayAdapter"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c6
    if-ne v3, v2, :cond_cb

    if-nez v7, :cond_cb

    goto :goto_cc

    :cond_cb
    move v1, v3

    .line 309
    :goto_cc
    iput v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveDisplayMode:I

    return-void

    .line 311
    :cond_cf
    iput v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveDisplayMode:I

    return-void
.end method


# virtual methods
.method public applyPendingDisplayDeviceInfoChangesLocked()V
    .registers 2

    .line 744
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 745
    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v0, 0x0

    .line 746
    iput-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    :cond_a
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 9

    .line 1432
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayDevice;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 1433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPhysicalDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayModeSpecs={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayModeSpecsInvalid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecsInvalid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveModeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveColorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsFirstDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mIsFirstDisplay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveDisplayMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveDisplayMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsRestrictedDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->isRestrictedDisplay()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDefaultModeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mUserPreferredModeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mHasArrSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHasArrSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSupportedRefreshRates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedRefreshRates:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCommittedState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mCommittedState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBrightnessState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightnessState:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBacklightAdapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklightAdapter:Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAllmSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAllmRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mGameContentTypeSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mGameContentTypeRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mStaticDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1454
    const-string/jumbo v0, "mSfDisplayModes="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1455
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSfDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_205
    const-string v4, "  "

    if-ge v3, v1, :cond_220

    aget-object v5, v0, v3

    .line 1456
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_205

    .line 1458
    :cond_220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveSfDisplayMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveRenderFrameRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveRenderFrameRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1460
    const-string/jumbo v0, "mSupportedModes="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1461
    :goto_254
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_277

    .line 1462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_254

    .line 1464
    :cond_277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSupportedColorModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1465
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1466
    const-string v0, "DisplayDeviceConfig: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1467
    const-string v0, "---------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1468
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mEvenDimmerEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmEvenDimmerEnabled(Lcom/android/server/display/LocalDisplayAdapter;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mEvenDimmerStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmEvenDimmerStrength(Lcom/android/server/display/LocalDisplayAdapter;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mNitsToEvenDimmerStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {p0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmNitsToEvenDimmerStrength(Lcom/android/server/display/LocalDisplayAdapter;)Landroid/util/Spline;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final findDisplayModeRecord(Landroid/view/SurfaceControl$DisplayMode;Ljava/util/List;)Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    .registers 8

    const/4 v0, 0x0

    .line 717
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_37

    .line 718
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 719
    invoke-virtual {v1, p1}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$DisplayMode;)Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 721
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getAlternativeRefreshRates()[F

    move-result-object v2

    .line 720
    invoke-virtual {p0, p2, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->refreshRatesEquals(Ljava/util/List;[F)Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    iget-object v3, p1, Landroid/view/SurfaceControl$DisplayMode;->supportedHdrTypes:[I

    iget-object v4, v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 723
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getSupportedHdrTypes()[I

    move-result-object v4

    .line 722
    invoke-static {v2, v3, v4}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$mhdrTypesEqual(Lcom/android/server/display/LocalDisplayAdapter;[I[I)Z

    move-result v2

    if-eqz v2, :cond_34

    return-object v1

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_37
    const/4 p0, 0x0

    return-object p0
.end method

.method public final findMatchingModeIdLocked(I)I
    .registers 6

    .line 1532
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSfDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getModeById([Landroid/view/SurfaceControl$DisplayMode;I)Landroid/view/SurfaceControl$DisplayMode;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_20

    .line 1534
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid display mode ID "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LocalDisplayAdapter"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_20
    const/4 p1, 0x0

    .line 1537
    :goto_21
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge p1, v2, :cond_41

    .line 1538
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 1539
    invoke-virtual {v2, v0}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$DisplayMode;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 1540
    iget-object p0, v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {p0}, Landroid/view/Display$Mode;->getModeId()I

    move-result p0

    return p0

    :cond_3e
    add-int/lit8 p1, p1, 0x1

    goto :goto_21

    :cond_41
    return v1
.end method

.method public final findMode(I)Landroid/view/Display$Mode;
    .registers 5

    const/4 v0, 0x0

    .line 1496
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 1497
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    iget-object v1, v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 1498
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    move-result v2

    if-ne v2, p1, :cond_1a

    return-object v1

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public final findMode(IIF)Landroid/view/Display$Mode;
    .registers 7

    const/4 v0, 0x0

    .line 1508
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 1509
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    iget-object v1, v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 1510
    invoke-virtual {v1, p1, p2, p3}, Landroid/view/Display$Mode;->matchesIfValid(IIF)Z

    move-result v2

    if-eqz v2, :cond_1a

    return-object v1

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public final findSfDisplayModeIdLocked(II)I
    .registers 9

    .line 1476
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    const/4 v0, -0x1

    if-eqz p1, :cond_29

    .line 1478
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSfDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v0

    :goto_10
    if-ge v2, v1, :cond_28

    aget-object v4, p0, v2

    .line 1479
    invoke-virtual {p1, v4}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$DisplayMode;)Z

    move-result v5

    if-eqz v5, :cond_25

    if-ne v3, v0, :cond_1e

    .line 1481
    iget v3, v4, Landroid/view/SurfaceControl$DisplayMode;->id:I

    .line 1485
    :cond_1e
    iget v5, v4, Landroid/view/SurfaceControl$DisplayMode;->group:I

    if-ne v5, p2, :cond_25

    .line 1486
    iget p0, v4, Landroid/view/SurfaceControl$DisplayMode;->id:I

    return p0

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_28
    return v3

    :cond_29
    return v0
.end method

.method public final findUserPreferredModeIdLocked(Landroid/view/Display$Mode;)I
    .registers 7

    if-eqz p1, :cond_2f

    const/4 v0, 0x0

    .line 1519
    :goto_3
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2f

    .line 1520
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    iget-object v1, v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 1521
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v2

    .line 1522
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v3

    .line 1523
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v4

    .line 1521
    invoke-virtual {p1, v2, v3, v4}, Landroid/view/Display$Mode;->matches(IIF)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1524
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    move-result p0

    return p0

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2f
    const/4 p0, -0x1

    return p0
.end method

.method public getActiveDisplayModeAtStartLocked()Landroid/view/Display$Mode;
    .registers 2

    .line 327
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayModeAtStartId:I

    invoke-virtual {p0, v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findMatchingModeIdLocked(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findMode(I)Landroid/view/Display$Mode;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;
    .registers 2

    .line 541
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    if-nez v0, :cond_7

    .line 542
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->loadDisplayDeviceConfig()V

    .line 544
    :cond_7
    iget-object p0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    return-object p0
.end method

.method public getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .registers 15

    .line 752
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-nez v0, :cond_2aa

    .line 753
    new-instance v0, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 754
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    iget v2, v1, Landroid/view/SurfaceControl$DisplayMode;->width:I

    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 755
    iget v1, v1, Landroid/view/SurfaceControl$DisplayMode;->height:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 756
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    .line 757
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveRenderFrameRate:F

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->renderFrameRate:F

    .line 758
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getPreferredModeId()I

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    .line 759
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredModeId:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->userPreferredModeId:I

    .line 760
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayModes(Landroid/util/SparseArray;)[Landroid/view/Display$Mode;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 761
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->colorMode:I

    .line 762
    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmSupported:Z

    iput-boolean v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->allmSupported:Z

    .line 763
    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeSupported:Z

    iput-boolean v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->gameContentTypeSupported:Z

    .line 764
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    .line 765
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    const/4 v0, 0x0

    move v1, v0

    .line 766
    :goto_4b
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_68

    .line 767
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    .line 769
    :cond_68
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 770
    iget-boolean v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHasArrSupport:Z

    iput-boolean v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->hasArrSupport:Z

    .line 771
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mFrameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->frameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    .line 772
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedRefreshRates:[F

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->supportedRefreshRates:[F

    .line 773
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    iget-wide v3, v2, Landroid/view/SurfaceControl$DisplayMode;->appVsyncOffsetNanos:J

    iput-wide v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    .line 774
    iget-wide v2, v2, Landroid/view/SurfaceControl$DisplayMode;->presentationDeadlineNanos:J

    iput-wide v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    .line 775
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 776
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mCommittedState:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->committedState:I

    .line 777
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 778
    iget-wide v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    .line 779
    invoke-static {v1, v2}, Landroid/view/DisplayAddress;->fromPhysicalDisplayId(J)Landroid/view/DisplayAddress$Physical;

    move-result-object v1

    .line 780
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput-object v1, v2, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    .line 781
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getLogicalDensity()I

    move-result v3

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 782
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    iget v4, v3, Landroid/view/SurfaceControl$DisplayMode;->xDpi:F

    iput v4, v2, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    .line 783
    iget v3, v3, Landroid/view/SurfaceControl$DisplayMode;->yDpi:F

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 784
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    iget-object v4, v3, Landroid/view/SurfaceControl$StaticDisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    iput-object v4, v2, Lcom/android/server/display/DisplayDeviceInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    .line 786
    iget v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mConnectedHdcpLevel:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_c1

    if-lt v4, v5, :cond_be

    move v4, v6

    goto :goto_bf

    :cond_be
    move v4, v0

    .line 787
    :goto_bf
    iput-boolean v4, v3, Landroid/view/SurfaceControl$StaticDisplayInfo;->secure:Z

    .line 789
    :cond_c1
    iget-boolean v3, v3, Landroid/view/SurfaceControl$StaticDisplayInfo;->secure:Z

    if-eqz v3, :cond_c9

    const/16 v3, 0xc

    .line 790
    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 794
    :cond_c9
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v2}, Lcom/android/server/display/LocalDisplayAdapter;->getOverlayContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 796
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    const/16 v3, 0x80

    if-eqz v2, :cond_e6

    .line 799
    check-cast v2, Landroid/view/DisplayAddress$Physical;

    invoke-virtual {v2}, Landroid/view/DisplayAddress$Physical;->getPort()I

    move-result v2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_e6

    move v2, v6

    goto :goto_e7

    :cond_e6
    move v2, v0

    .line 802
    :goto_e7
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v8, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/2addr v8, v6

    iput v8, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 804
    iget-boolean v8, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mIsFirstDisplay:Z

    const v13, 0x10403a5

    if-eqz v8, :cond_114

    const v2, 0x11101fc

    .line 805
    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_10b

    sget-boolean v2, Landroid/os/Build;->IS_EMULATOR:Z

    if-eqz v2, :cond_182

    const-string/jumbo v2, "ro.boot.emulator.circular"

    .line 807
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_182

    .line 808
    :cond_10b
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    goto :goto_182

    :cond_114
    if-eqz v2, :cond_167

    .line 813
    iput v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 815
    iput v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 816
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 818
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v4, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/2addr v4, v5

    iput v4, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 820
    const-string/jumbo v2, "vendor.display.builtin_presentation"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_143

    .line 822
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v4, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v4, v4, 0x40

    iput v4, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    goto :goto_14b

    .line 824
    :cond_143
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v4, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 827
    :goto_14b
    const-string/jumbo v2, "vendor.display.builtin_mirroring"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_15b

    .line 829
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/2addr v2, v3

    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 833
    :cond_15b
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    iget v3, v2, Landroid/view/SurfaceControl$DisplayMode;->width:I

    iget v2, v2, Landroid/view/SurfaceControl$DisplayMode;->height:I

    invoke-virtual {v0, v3, v2}, Lcom/android/server/display/DisplayDeviceInfo;->setAssumedDensityForExternalDisplay(II)V

    goto :goto_182

    .line 837
    :cond_167
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->shouldOwnContentOnly()Z

    move-result v0

    if-eqz v0, :cond_174

    .line 838
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/2addr v2, v3

    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 841
    :cond_174
    invoke-virtual {p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->isDisplayPrivate(Landroid/view/DisplayAddress$Physical;)Z

    move-result v0

    if-eqz v0, :cond_182

    .line 842
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 846
    :cond_182
    :goto_182
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getFeatureFlags()Lcom/android/server/display/feature/DisplayManagerFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDisplayContentModeManagementEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a7

    .line 849
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mIsFirstDisplay:Z

    if-nez v0, :cond_19e

    .line 850
    invoke-virtual {p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->isDisplayPrivate(Landroid/view/DisplayAddress$Physical;)Z

    move-result v0

    if-nez v0, :cond_1a7

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->shouldOwnContentOnly()Z

    move-result v0

    if-nez v0, :cond_1a7

    .line 851
    :cond_19e
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v2, 0x100000

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 855
    :cond_1a7
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    invoke-static {v7, v0}, Landroid/view/DisplayCutout;->getMaskBuiltInDisplayCutout(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b9

    .line 856
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v1, v1, 0x800

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 859
    :cond_1b9
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 860
    invoke-static {v0}, Landroid/util/DisplayUtils;->getMaximumResolutionDisplayMode([Landroid/view/Display$Mode;)Landroid/view/Display$Mode;

    move-result-object v0

    if-nez v0, :cond_1c9

    .line 862
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, v1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    :goto_1c7
    move v9, v1

    goto :goto_1ce

    :cond_1c9
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    goto :goto_1c7

    :goto_1ce
    if-nez v0, :cond_1d6

    .line 864
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    :goto_1d4
    move v10, v0

    goto :goto_1db

    :cond_1d6
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v0

    goto :goto_1d4

    .line 867
    :goto_1db
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    iget-boolean v0, v0, Landroid/view/SurfaceControl$StaticDisplayInfo;->isInternal:Z

    if-eqz v0, :cond_1fd

    .line 868
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iget v11, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v12, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    invoke-static/range {v7 .. v12}, Landroid/view/DisplayCutout;->fromResourcesRectApproximation(Landroid/content/res/Resources;Ljava/lang/String;IIII)Landroid/view/DisplayCutout;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 870
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iget v11, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v12, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    invoke-static/range {v7 .. v12}, Landroid/view/RoundedCorners;->fromResources(Landroid/content/res/Resources;Ljava/lang/String;IIII)Landroid/view/RoundedCorners;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 874
    :cond_1fd
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    iget v1, v1, Landroid/view/SurfaceControl$StaticDisplayInfo;->installOrientation:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->installOrientation:I

    .line 876
    iget-object v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iget v11, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v12, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    invoke-static/range {v7 .. v12}, Landroid/view/DisplayShape;->fromResources(Landroid/content/res/Resources;Ljava/lang/String;IIII)Landroid/view/DisplayShape;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->displayShape:Landroid/view/DisplayShape;

    .line 879
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceConfig;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 881
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    iget-boolean v0, v0, Landroid/view/SurfaceControl$StaticDisplayInfo;->isInternal:Z

    if-eqz v0, :cond_239

    .line 882
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 883
    iput v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 884
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/2addr v1, v5

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 885
    iget-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_26a

    .line 886
    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    goto :goto_26a

    .line 889
    :cond_239
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 890
    iput v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 891
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 892
    iget-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_25c

    .line 893
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10403a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 916
    :cond_25c
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->isRestrictedDisplay()Z

    move-result v0

    if-eqz v0, :cond_26a

    .line 918
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 923
    :cond_26a
    :goto_26a
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->frameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    .line 926
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 927
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessMinimum()F

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->brightnessMinimum:F

    .line 928
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessMaximum()F

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->brightnessMaximum:F

    .line 929
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessDefault()F

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->brightnessDefault:F

    .line 930
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessDim()F

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->brightnessDim:F

    .line 931
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mCurrentHdrSdrRatio:F

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->hdrSdrRatio:F

    .line 933
    :cond_2aa
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-object p0
.end method

.method public final getDisplayModes(Landroid/util/SparseArray;)[Landroid/view/Display$Mode;
    .registers 5

    .line 1560
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p0

    .line 1561
    new-array v0, p0, [Landroid/view/Display$Mode;

    const/4 v1, 0x0

    :goto_7
    if-ge v1, p0, :cond_16

    .line 1563
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 1564
    iget-object v2, v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_16
    return-object v0
.end method

.method public final getLogicalDensity()I
    .registers 11

    .line 554
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getDensityMapping()Lcom/android/server/display/DensityMapping;

    move-result-object v0

    if-nez v0, :cond_78

    .line 556
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getFeatureFlags()Lcom/android/server/display/feature/DisplayManagerFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isBaseDensityForExternalDisplaysEnabled()Z

    move-result v0

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    iget-boolean v0, v0, Landroid/view/SurfaceControl$StaticDisplayInfo;->isInternal:Z

    if-nez v0, :cond_6d

    .line 560
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    iget v3, v0, Landroid/view/SurfaceControl$DisplayMode;->xDpi:F

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    if-lez v5, :cond_44

    iget v0, v0, Landroid/view/SurfaceControl$DisplayMode;->yDpi:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_44

    float-to-double v3, v3

    .line 561
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    iget p0, p0, Landroid/view/SurfaceControl$DisplayMode;->yDpi:F

    float-to-double v8, p0

    .line 562
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v3, v8

    div-double/2addr v3, v6

    .line 561
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    goto :goto_5e

    .line 566
    :cond_44
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    int-to-double v3, v0

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget p0, p0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    int-to-double v8, p0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4038000000000000L    # 24.0

    div-double/2addr v3, v5

    :goto_5e
    const-wide v5, 0x3fda3468d1a3468eL    # 0.40944881889763785

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4064000000000000L    # 160.0

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4048000000000000L    # 48.0

    div-double/2addr v3, v5

    add-double/2addr v3, v1

    double-to-int p0, v3

    return p0

    .line 574
    :cond_6d
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    iget p0, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->density:F

    const/high16 v0, 0x43200000    # 160.0f

    mul-float/2addr p0, v0

    float-to-double v3, p0

    add-double/2addr v3, v1

    double-to-int p0, v3

    return p0

    .line 577
    :cond_78
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget p0, p0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    invoke-virtual {v0, v1, p0}, Lcom/android/server/display/DensityMapping;->getDensityForResolution(II)I

    move-result p0

    return p0
.end method

.method public final getModeById([Landroid/view/SurfaceControl$DisplayMode;I)Landroid/view/SurfaceControl$DisplayMode;
    .registers 6

    .line 706
    array-length p0, p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p0, :cond_e

    aget-object v1, p1, v0

    .line 707
    iget v2, v1, Landroid/view/SurfaceControl$DisplayMode;->id:I

    if-ne v2, p2, :cond_b

    return-object v1

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 711
    :cond_e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Can\'t find display mode with id "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LocalDisplayAdapter"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPreferredModeId()I
    .registers 3

    .line 548
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredModeId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 550
    :cond_6
    iget p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    return p0
.end method

.method public getSystemPreferredDisplayModeLocked()Landroid/view/Display$Mode;
    .registers 2

    .line 1247
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSystemPreferredModeId:I

    invoke-virtual {p0, v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findMode(I)Landroid/view/Display$Mode;

    move-result-object p0

    return-object p0
.end method

.method public getUserPreferredDisplayModeLocked()Landroid/view/Display$Mode;
    .registers 1

    .line 1242
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredMode:Landroid/view/Display$Mode;

    return-object p0
.end method

.method public hasStableUniqueId()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public final isDesktopMode()Z
    .registers 2

    .line 1632
    iget p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveDisplayMode:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final isDisplayPrivate(Landroid/view/DisplayAddress$Physical;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1573
    :cond_4
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter;->getOverlayContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x10700ae

    .line 1574
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    if-eqz p0, :cond_28

    .line 1576
    invoke-virtual {p1}, Landroid/view/DisplayAddress$Physical;->getPort()I

    move-result p1

    .line 1577
    array-length v1, p0

    move v2, v0

    :goto_1d
    if-ge v2, v1, :cond_28

    aget v3, p0, v2

    if-ne v3, p1, :cond_25

    const/4 p0, 0x1

    return p0

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_28
    return v0
.end method

.method public final isMobileUIMode()Z
    .registers 2

    .line 1636
    iget p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveDisplayMode:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public final isRestrictedDisplay()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$onDisplayModeChangedLocked$0()V
    .registers 5

    .line 1624
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 1625
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    iget-wide v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    invoke-static {v1, v2, v3}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$mtryDisconnectDisplayLocked(Lcom/android/server/display/LocalDisplayAdapter;J)V

    .line 1626
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    iget-wide v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    invoke-static {v1, v2, v3}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$mtryConnectDisplayLocked(Lcom/android/server/display/LocalDisplayAdapter;J)V

    .line 1627
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public final loadDisplayDeviceConfig()V
    .registers 8

    .line 582
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/LocalDisplayAdapter;->getOverlayContext()Landroid/content/Context;

    move-result-object v2

    .line 583
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmInjector(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/LocalDisplayAdapter$Injector;

    move-result-object v1

    iget-wide v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    iget-boolean v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mIsFirstDisplay:Z

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 584
    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getFeatureFlags()Lcom/android/server/display/feature/DisplayManagerFlags;

    move-result-object v6

    .line 583
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/display/LocalDisplayAdapter$Injector;->createDisplayDeviceConfig(Landroid/content/Context;JZLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 587
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklightAdapter:Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;

    const-string v1, "canSetBrightnessViaHwc"

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->hasQuirk(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->setForceSurfaceControl(Z)V

    return-void
.end method

.method public onActiveDisplayModeChangedLocked(IF)V
    .registers 3

    .line 1312
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateActiveModeLocked(IF)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1313
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    :cond_9
    return-void
.end method

.method public onDisplayModeChangedLocked(I)V
    .registers 4

    .line 1610
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveDisplayMode:I

    if-ne v0, p1, :cond_5

    goto :goto_43

    .line 1613
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->isDesktopMode()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->isMobileUIMode()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_11
    const/4 v0, 0x1

    if-eq p1, v0, :cond_43

    const/4 v0, 0x2

    if-ne p1, v0, :cond_18

    goto :goto_43

    .line 1619
    :cond_18
    invoke-static {}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$sfgetDEBUG_DESKTOP()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDisplayModeChangedLocked displayMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocalDisplayAdapter"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    :cond_35
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_43
    :goto_43
    return-void
.end method

.method public onFrameRateOverridesChanged([Landroid/view/DisplayEventReceiver$FrameRateOverride;)V
    .registers 2

    .line 1319
    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateFrameRateOverridesLocked([Landroid/view/DisplayEventReceiver$FrameRateOverride;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1320
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    :cond_9
    return-void
.end method

.method public onHdcpLevelsChangedLocked(II)V
    .registers 3

    .line 1325
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateHdcpLevelsLocked(II)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1326
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    :cond_9
    return-void
.end method

.method public onOverlayChangedLocked()V
    .registers 1

    .line 1308
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    return-void
.end method

.method public final refreshRatesEquals(Ljava/util/List;[F)Z
    .registers 6

    .line 731
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    array-length v0, p2

    const/4 v1, 0x0

    if-eq p0, v0, :cond_9

    return v1

    :cond_9
    move p0, v1

    .line 734
    :goto_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_2a

    .line 735
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    aget v2, p2, p0

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v0, v2, :cond_27

    return v1

    :cond_27
    add-int/lit8 p0, p0, 0x1

    goto :goto_a

    :cond_2a
    const/4 p0, 0x1

    return p0
.end method

.method public final requestColorModeAsync(Landroid/os/IBinder;I)V
    .registers 4

    .line 1390
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmSurfaceControlProxy(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->setActiveColorMode(Landroid/os/IBinder;I)Z

    .line 1391
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object p1

    monitor-enter p1

    .line 1392
    :try_start_10
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 1393
    monitor-exit p1

    return-void

    :catchall_15
    move-exception p0

    monitor-exit p1
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public requestColorModeLocked(I)V
    .registers 5

    .line 1372
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    if-ne v0, p1, :cond_5

    return-void

    .line 1375
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1376
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to find color mode "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ignoring request."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LocalDisplayAdapter"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1381
    :cond_2d
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    .line 1382
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda1;-><init>()V

    .line 1384
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1382
    invoke-static {v1, p0, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public requestDisplayStateLocked(IFFLcom/android/server/display/DisplayOffloadSessionImpl;)Ljava/lang/Runnable;
    .registers 16

    .line 948
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-eq v0, p1, :cond_8

    move v0, v4

    goto :goto_9

    :cond_8
    move v0, v2

    .line 950
    :goto_9
    iget v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightnessState:F

    cmpl-float v5, v5, p2

    if-nez v5, :cond_17

    iget v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSdrBrightnessState:F

    cmpl-float v5, v5, p3

    if-eqz v5, :cond_16

    goto :goto_17

    :cond_16
    move v4, v2

    :cond_17
    :goto_17
    if-nez v0, :cond_1e

    if-eqz v4, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v0, 0x0

    return-object v0

    .line 954
    :cond_1e
    :goto_1e
    iget-wide v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    .line 955
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v10

    .line 956
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    if-eqz v0, :cond_2d

    .line 959
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 960
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 966
    :cond_2d
    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;

    move-object v1, p0

    move v3, p1

    move v5, p2

    move v6, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v10}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;-><init>(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;IIZFFJLcom/android/server/display/DisplayOffloadSessionImpl;Landroid/os/IBinder;)V

    return-object v0
.end method

.method public setAutoLowLatencyModeLocked(Z)V
    .registers 3

    .line 1398
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmRequested:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 1402
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmRequested:Z

    .line 1404
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmSupported:Z

    if-nez v0, :cond_13

    .line 1405
    const-string p0, "LocalDisplayAdapter"

    const-string p1, "Unable to set ALLM because the connected display does not support ALLM."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1410
    :cond_13
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmSurfaceControlProxy(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->setAutoLowLatencyMode(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public final setDesiredDisplayModeSpecsAsync(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)V
    .registers 3

    .line 1303
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {p0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmSurfaceControlProxy(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->setDesiredDisplayModeSpecs(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z

    return-void
.end method

.method public setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;)V
    .registers 10

    .line 1258
    iget v0, p1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    if-nez v0, :cond_5

    goto :goto_36

    .line 1271
    :cond_5
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeGroup:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findSfDisplayModeIdLocked(II)I

    move-result v3

    if-gez v3, :cond_29

    .line 1280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring request for invalid base mode id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocalDisplayAdapter"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    return-void

    .line 1285
    :cond_29
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecsInvalid:Z

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {p1, v0}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto :goto_37

    :cond_36
    :goto_36
    return-void

    :cond_37
    :goto_37
    const/4 v0, 0x0

    .line 1286
    iput-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecsInvalid:Z

    .line 1287
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {v0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->copyFrom(Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;)V

    .line 1288
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda0;-><init>()V

    .line 1290
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    move-object v5, v4

    iget-boolean v4, v5, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->allowGroupSwitching:Z

    move-object v6, v5

    iget-object v5, v6, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->primary:Landroid/view/SurfaceControl$RefreshRateRanges;

    move-object v7, v6

    iget-object v6, v7, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequest:Landroid/view/SurfaceControl$RefreshRateRanges;

    iget-object v7, v7, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->mIdleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    invoke-direct/range {v2 .. v7}, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;-><init>(IZLandroid/view/SurfaceControl$RefreshRateRanges;Landroid/view/SurfaceControl$RefreshRateRanges;Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;)V

    .line 1288
    invoke-static {v0, p0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setGameContentTypeLocked(Z)V
    .registers 3

    .line 1415
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeRequested:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 1419
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeRequested:Z

    .line 1427
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmSurfaceControlProxy(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->setGameContentType(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public setRequestedColorModeLocked(I)V
    .registers 2

    .line 1252
    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->requestColorModeLocked(I)V

    return-void
.end method

.method public setUserPreferredDisplayModeLocked(Landroid/view/Display$Mode;)V
    .registers 6

    .line 1202
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getPreferredModeId()I

    move-result v0

    .line 1203
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredMode:Landroid/view/Display$Mode;

    const/4 v1, -0x1

    if-nez p1, :cond_f

    .line 1208
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSystemPreferredModeId:I

    if-eq v2, v1, :cond_f

    .line 1209
    iput v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    :cond_f
    if-eqz p1, :cond_31

    .line 1211
    invoke-virtual {p1}, Landroid/view/Display$Mode;->isRefreshRateSet()Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-virtual {p1}, Landroid/view/Display$Mode;->isResolutionSet()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1213
    :cond_1d
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v2

    .line 1214
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p1

    .line 1213
    invoke-virtual {p0, v2, v3, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findMode(IIF)Landroid/view/Display$Mode;

    move-result-object p1

    if-eqz p1, :cond_31

    .line 1216
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredMode:Landroid/view/Display$Mode;

    .line 1220
    :cond_31
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredMode:Landroid/view/Display$Mode;

    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findUserPreferredModeIdLocked(Landroid/view/Display$Mode;)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredModeId:I

    .line 1222
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getPreferredModeId()I

    move-result p1

    if-ne v0, p1, :cond_40

    goto :goto_4b

    .line 1225
    :cond_40
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 1227
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {p1}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmIsBootDisplayModeSupported(Lcom/android/server/display/LocalDisplayAdapter;)Z

    move-result p1

    if-nez p1, :cond_4c

    :goto_4b
    return-void

    .line 1230
    :cond_4c
    iget p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredModeId:I

    if-ne p1, v1, :cond_5e

    .line 1231
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {p1}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmSurfaceControlProxy(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->clearBootDisplayMode(Landroid/os/IBinder;)V

    return-void

    .line 1233
    :cond_5e
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredMode:Landroid/view/Display$Mode;

    .line 1234
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getModeId()I

    move-result p1

    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeGroup:I

    .line 1233
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findSfDisplayModeIdLocked(II)I

    move-result p1

    .line 1235
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmSurfaceControlProxy(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->setBootDisplayMode(Landroid/os/IBinder;I)V

    return-void
.end method

.method public final shouldOwnContentOnly()Z
    .registers 2

    .line 1587
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter;->getOverlayContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x11101f3

    .line 1588
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public updateActiveModeLocked(IF)Z
    .registers 5

    .line 1331
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    iget v0, v0, Landroid/view/SurfaceControl$DisplayMode;->id:I

    if-ne v0, p1, :cond_e

    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveRenderFrameRate:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return p0

    .line 1335
    :cond_e
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSfDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getModeById([Landroid/view/SurfaceControl$DisplayMode;I)Landroid/view/SurfaceControl$DisplayMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    .line 1336
    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findMatchingModeIdLocked(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_35

    .line 1338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In unknown mode after setting allowed modes, activeModeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocalDisplayAdapter"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    :cond_35
    iput p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveRenderFrameRate:F

    const/4 p0, 0x1

    return p0
.end method

.method public final updateAllmSupport(Z)Z
    .registers 3

    .line 689
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmSupported:Z

    if-ne v0, p1, :cond_6

    const/4 p0, 0x0

    return p0

    .line 692
    :cond_6
    iput-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmSupported:Z

    const/4 p0, 0x1

    return p0
.end method

.method public final updateColorModesLocked([II)Z
    .registers 11

    const/4 p2, 0x0

    if-nez p1, :cond_4

    return p2

    .line 604
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 607
    array-length v1, p1

    move v2, p2

    move v3, v2

    :goto_c
    const/4 v4, 0x1

    if-ge v2, v1, :cond_28

    aget v5, p1, v2

    .line 608
    iget-object v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    move v3, v4

    .line 611
    :cond_1e
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 615
    :cond_28
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne p1, v1, :cond_38

    if-eqz v3, :cond_37

    goto :goto_38

    :cond_37
    return p2

    .line 623
    :cond_38
    :goto_38
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 624
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 625
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 628
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_84

    .line 629
    iget p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    const-string v0, "LocalDisplayAdapter"

    if-eqz p1, :cond_63

    .line 630
    const-string p1, "Active color mode no longer available, reverting to default mode."

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iput p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    goto :goto_84

    .line 634
    :cond_63
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7f

    .line 636
    const-string p1, "Default and active color mode is no longer available! Reverting to first available mode."

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    goto :goto_84

    .line 641
    :cond_7f
    const-string p0, "No color modes available!"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_84
    :goto_84
    return v4
.end method

.method public final updateDeviceInfoLocked()V
    .registers 4

    const/4 v0, 0x0

    .line 1547
    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 1548
    const-string/jumbo v0, "persist.sys.lenovo.is_test_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDeviceInfoLocked:isCts = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocalDisplayAdapter"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_44

    .line 1552
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmCurrentSdrNits(Lcom/android/server/display/LocalDisplayAdapter;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_44

    .line 1553
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmCurrentNits(Lcom/android/server/display/LocalDisplayAdapter;)F

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmCurrentSdrNits(Lcom/android/server/display/LocalDisplayAdapter;)F

    move-result v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mCurrentHdrSdrRatio:F

    .line 1556
    :cond_44
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    return-void
.end method

.method public updateDisplayModesLocked([Landroid/view/SurfaceControl$DisplayMode;IIFLandroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move-object/from16 v3, p5

    .line 359
    array-length v4, v1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/view/SurfaceControl$DisplayMode;

    iput-object v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSfDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    move/from16 v4, p3

    .line 360
    invoke-virtual {v0, v1, v4}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getModeById([Landroid/view/SurfaceControl$DisplayMode;I)Landroid/view/SurfaceControl$DisplayMode;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    .line 362
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getModeById([Landroid/view/SurfaceControl$DisplayMode;I)Landroid/view/SurfaceControl$DisplayMode;

    move-result-object v4

    .line 365
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    .line 367
    :goto_25
    array-length v9, v1

    const/4 v10, 0x1

    if-ge v7, v9, :cond_ad

    .line 368
    aget-object v9, v1, v7

    .line 369
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move v12, v6

    .line 370
    :goto_31
    array-length v13, v1

    if-ge v12, v13, :cond_5c

    .line 371
    aget-object v13, v1, v12

    if-eq v12, v7, :cond_59

    .line 372
    iget v14, v13, Landroid/view/SurfaceControl$DisplayMode;->width:I

    iget v15, v9, Landroid/view/SurfaceControl$DisplayMode;->width:I

    if-ne v14, v15, :cond_59

    iget v14, v13, Landroid/view/SurfaceControl$DisplayMode;->height:I

    iget v15, v9, Landroid/view/SurfaceControl$DisplayMode;->height:I

    if-ne v14, v15, :cond_59

    iget v14, v13, Landroid/view/SurfaceControl$DisplayMode;->peakRefreshRate:F

    iget v15, v9, Landroid/view/SurfaceControl$DisplayMode;->peakRefreshRate:F

    cmpl-float v15, v14, v15

    if-eqz v15, :cond_59

    iget v13, v13, Landroid/view/SurfaceControl$DisplayMode;->group:I

    iget v15, v9, Landroid/view/SurfaceControl$DisplayMode;->group:I

    if-ne v13, v15, :cond_59

    .line 377
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_59
    add-int/lit8 v12, v12, 0x1

    goto :goto_31

    .line 380
    :cond_5c
    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 386
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v13, v6

    :cond_64
    if-ge v13, v12, :cond_81

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v13, v13, 0x1

    check-cast v14, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 387
    invoke-virtual {v14, v9}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$DisplayMode;)Z

    move-result v15

    if-eqz v15, :cond_64

    iget-object v14, v14, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 389
    invoke-virtual {v14}, Landroid/view/Display$Mode;->getAlternativeRefreshRates()[F

    move-result-object v14

    .line 388
    invoke-virtual {v0, v11, v14}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->refreshRatesEquals(Ljava/util/List;[F)Z

    move-result v14

    if-eqz v14, :cond_64

    goto :goto_a9

    .line 400
    :cond_81
    invoke-virtual {v0, v9, v11}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findDisplayModeRecord(Landroid/view/SurfaceControl$DisplayMode;Ljava/util/List;)Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    move-result-object v12

    if-nez v12, :cond_a6

    .line 402
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v8

    new-array v12, v8, [F

    move v13, v6

    :goto_8e
    if-ge v13, v8, :cond_9f

    .line 404
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    aput v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_8e

    .line 406
    :cond_9f
    new-instance v8, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    invoke-direct {v8, v9, v12}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;-><init>(Landroid/view/SurfaceControl$DisplayMode;[F)V

    move-object v12, v8

    move v8, v10

    .line 409
    :cond_a6
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_a9
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_25

    .line 414
    :cond_ad
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v7, v6

    :cond_b2
    const/4 v9, 0x0

    if-ge v7, v1, :cond_c6

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v7, v7, 0x1

    check-cast v11, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 415
    iget-object v12, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    invoke-virtual {v11, v12}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$DisplayMode;)Z

    move-result v12

    if-eqz v12, :cond_b2

    goto :goto_c7

    :cond_c6
    move-object v11, v9

    :goto_c7
    const/4 v1, -0x1

    move/from16 v7, p2

    if-eq v7, v1, :cond_fc

    if-eqz v4, :cond_fc

    .line 425
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v12, v6

    :cond_d3
    if-ge v12, v7, :cond_e4

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    check-cast v13, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 426
    invoke-virtual {v13, v4}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$DisplayMode;)Z

    move-result v14

    if-eqz v14, :cond_d3

    move-object v9, v13

    :cond_e4
    if-eqz v9, :cond_fc

    .line 433
    iget-object v4, v9, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getModeId()I

    move-result v4

    .line 434
    iget-object v7, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v7}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmIsBootDisplayModeSupported(Lcom/android/server/display/LocalDisplayAdapter;)Z

    move-result v7

    if-eqz v7, :cond_fc

    iget v7, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSystemPreferredModeId:I

    if-eq v7, v4, :cond_fc

    .line 435
    iput v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSystemPreferredModeId:I

    move v4, v10

    goto :goto_fd

    :cond_fc
    move v4, v6

    .line 445
    :goto_fd
    iget v7, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    const-string v9, "LocalDisplayAdapter"

    if-eq v7, v1, :cond_130

    iget-object v12, v11, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 446
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getModeId()I

    move-result v12

    if-eq v7, v12, :cond_130

    .line 447
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The active mode was changed from SurfaceFlinger or the display device to "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v11, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v7, v11, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v7}, Landroid/view/Display$Mode;->getModeId()I

    move-result v7

    iput v7, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    .line 451
    iget-object v7, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v7}, Lcom/android/server/display/DisplayAdapter;->sendTraversalRequestLocked()V

    move v7, v10

    goto :goto_131

    :cond_130
    move v7, v6

    .line 456
    :goto_131
    iget v12, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveRenderFrameRate:F

    const/4 v13, 0x0

    cmpl-float v13, v12, v13

    if-lez v13, :cond_159

    cmpl-float v12, v12, v2

    if-eqz v12, :cond_159

    .line 457
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "The render frame rate was changed from SurfaceFlinger or the display device to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iput v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveRenderFrameRate:F

    .line 461
    iget-object v12, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v12}, Lcom/android/server/display/DisplayAdapter;->sendTraversalRequestLocked()V

    move v12, v10

    goto :goto_15a

    :cond_159
    move v12, v6

    .line 466
    :goto_15a
    iget-object v13, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    iget v13, v13, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    if-eq v13, v1, :cond_18b

    .line 467
    iget v13, v3, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->defaultMode:I

    invoke-virtual {v0, v13}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findMatchingModeIdLocked(I)I

    move-result v13

    if-eq v13, v1, :cond_184

    .line 471
    iget-object v14, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    iget v15, v14, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    if-ne v15, v13, :cond_184

    iget-object v13, v14, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->primary:Landroid/view/SurfaceControl$RefreshRateRanges;

    iget-object v14, v3, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->primaryRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    .line 473
    invoke-virtual {v13, v14}, Landroid/view/SurfaceControl$RefreshRateRanges;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_184

    iget-object v13, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    iget-object v13, v13, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequest:Landroid/view/SurfaceControl$RefreshRateRanges;

    iget-object v3, v3, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->appRequestRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    .line 474
    invoke-virtual {v13, v3}, Landroid/view/SurfaceControl$RefreshRateRanges;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18b

    .line 475
    :cond_184
    iput-boolean v10, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecsInvalid:Z

    .line 476
    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayAdapter;->sendTraversalRequestLocked()V

    .line 480
    :cond_18b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v13, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ne v3, v13, :cond_1a3

    if-eqz v8, :cond_19a

    goto :goto_1a3

    :cond_19a
    if-nez v7, :cond_1a2

    if-nez v4, :cond_1a2

    if-eqz v12, :cond_1a1

    goto :goto_1a2

    :cond_1a1
    return v6

    :cond_1a2
    :goto_1a2
    return v10

    .line 486
    :cond_1a3
    :goto_1a3
    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 487
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_1ac
    if-ge v6, v3, :cond_1c2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v6, v6, 0x1

    check-cast v4, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 488
    iget-object v12, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    iget-object v13, v4, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v13}, Landroid/view/Display$Mode;->getModeId()I

    move-result v13

    invoke-virtual {v12, v13, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1ac

    .line 492
    :cond_1c2
    iget v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    if-ne v3, v1, :cond_1d7

    .line 493
    iget-object v3, v11, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    iput v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    .line 494
    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    iget v3, v3, Landroid/view/SurfaceControl$DisplayMode;->group:I

    iput v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeGroup:I

    .line 495
    iput v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveRenderFrameRate:F

    goto :goto_20e

    :cond_1d7
    if-eqz v8, :cond_1f1

    if-eqz v7, :cond_1f1

    .line 497
    const-string v3, "New display modes are added and the active mode has changed, use active mode as default mode."

    invoke-static {v9, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v3, v11, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    iput v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    .line 500
    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    iget v3, v3, Landroid/view/SurfaceControl$DisplayMode;->group:I

    iput v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeGroup:I

    .line 501
    iput v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveRenderFrameRate:F

    goto :goto_20e

    .line 502
    :cond_1f1
    iget v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeGroup:I

    invoke-virtual {v0, v3, v4}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findSfDisplayModeIdLocked(II)I

    move-result v3

    if-gez v3, :cond_20e

    .line 503
    const-string v3, "Default display mode no longer available, using currently active mode as default."

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v3, v11, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    iput v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    .line 506
    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    iget v3, v3, Landroid/view/SurfaceControl$DisplayMode;->group:I

    iput v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeGroup:I

    .line 507
    iput v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveRenderFrameRate:F

    .line 511
    :cond_20e
    :goto_20e
    iget-object v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    iget v3, v3, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_231

    .line 512
    iget-object v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    iget v2, v2, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    if-eq v2, v1, :cond_225

    .line 513
    const-string v2, "DisplayModeSpecs base mode no longer available, using currently active mode."

    invoke-static {v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_225
    iget-object v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    iget-object v3, v11, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    iput v3, v2, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    .line 518
    iput-boolean v10, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecsInvalid:Z

    .line 521
    :cond_231
    iget-object v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredMode:Landroid/view/Display$Mode;

    if-eqz v2, :cond_23b

    .line 522
    invoke-virtual {v0, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findUserPreferredModeIdLocked(Landroid/view/Display$Mode;)I

    move-result v2

    iput v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredModeId:I

    .line 526
    :cond_23b
    iget-object v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    iget v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_254

    .line 527
    iget v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    if-eq v2, v1, :cond_24e

    .line 528
    const-string v1, "Active display mode no longer available, reverting to default mode."

    invoke-static {v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_24e
    invoke-virtual {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getPreferredModeId()I

    move-result v1

    iput v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    .line 535
    :cond_254
    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->sendTraversalRequestLocked()V

    return v10
.end method

.method public updateDisplayPropertiesLocked(Landroid/view/SurfaceControl$StaticDisplayInfo;Landroid/view/SurfaceControl$DynamicDisplayInfo;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z
    .registers 10

    .line 336
    iget-object v1, p2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->supportedDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    iget v2, p2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->preferredBootDisplayMode:I

    iget v3, p2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeDisplayModeId:I

    iget v4, p2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->renderFrameRate:F

    move-object v0, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDisplayModesLocked([Landroid/view/SurfaceControl$DisplayMode;IIFLandroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z

    move-result p0

    .line 339
    invoke-virtual {v0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateStaticInfo(Landroid/view/SurfaceControl$StaticDisplayInfo;)Z

    move-result p1

    or-int/2addr p0, p1

    .line 340
    iget-object p1, p2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->supportedColorModes:[I

    iget p3, p2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeColorMode:I

    invoke-virtual {v0, p1, p3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateColorModesLocked([II)Z

    move-result p1

    or-int/2addr p0, p1

    .line 342
    iget-object p1, p2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-virtual {v0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateHdrCapabilitiesLocked(Landroid/view/Display$HdrCapabilities;)Z

    move-result p1

    or-int/2addr p0, p1

    .line 343
    iget-boolean p1, p2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->autoLowLatencyModeSupported:Z

    invoke-virtual {v0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateAllmSupport(Z)Z

    move-result p1

    or-int/2addr p0, p1

    .line 344
    iget-boolean p1, p2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->gameContentTypeSupported:Z

    invoke-virtual {v0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateGameContentTypeSupport(Z)Z

    move-result p1

    or-int/2addr p0, p1

    .line 345
    iget-boolean p1, p2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->hasArrSupport:Z

    invoke-virtual {v0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateHasArrSupportLocked(Z)Z

    move-result p1

    or-int/2addr p0, p1

    .line 346
    iget-object p1, p2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->frameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    invoke-virtual {v0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateFrameRateCategoryRatesLocked(Landroid/view/FrameRateCategoryRate;)Z

    move-result p1

    or-int/2addr p0, p1

    .line 347
    iget-object p1, p2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->supportedRefreshRates:[F

    invoke-virtual {v0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateSupportedRefreshatesLocked([F)Z

    move-result p1

    or-int/2addr p0, p1

    if-eqz p0, :cond_4b

    const/4 p1, 0x1

    .line 350
    iput-boolean p1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    :cond_4b
    return p0
.end method

.method public final updateFrameRateCategoryRatesLocked(Landroid/view/FrameRateCategoryRate;)Z
    .registers 3

    .line 659
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mFrameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 662
    :cond_a
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mFrameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    const/4 p0, 0x1

    return p0
.end method

.method public updateFrameRateOverridesLocked([Landroid/view/DisplayEventReceiver$FrameRateOverride;)Z
    .registers 3

    .line 1347
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 1351
    :cond_a
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    const/4 p0, 0x1

    return p0
.end method

.method public final updateGameContentTypeSupport(Z)Z
    .registers 3

    .line 697
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeSupported:Z

    if-ne v0, p1, :cond_6

    const/4 p0, 0x0

    return p0

    .line 700
    :cond_6
    iput-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeSupported:Z

    const/4 p0, 0x1

    return p0
.end method

.method public final updateHasArrSupportLocked(Z)Z
    .registers 3

    .line 667
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHasArrSupport:Z

    if-ne v0, p1, :cond_6

    const/4 p0, 0x0

    return p0

    .line 670
    :cond_6
    iput-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHasArrSupport:Z

    const/4 p0, 0x1

    return p0
.end method

.method public updateHdcpLevelsLocked(II)Z
    .registers 5

    const/4 v0, 0x0

    if-le p1, p2, :cond_27

    .line 1357
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HDCP connected level: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is larger than max level: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ignoring request."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LocalDisplayAdapter"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1363
    :cond_27
    iget p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mConnectedHdcpLevel:I

    if-ne p2, p1, :cond_2c

    return v0

    .line 1367
    :cond_2c
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mConnectedHdcpLevel:I

    const/4 p0, 0x1

    return p0
.end method

.method public final updateHdrCapabilitiesLocked(Landroid/view/Display$HdrCapabilities;)Z
    .registers 3

    .line 650
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 653
    :cond_a
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHdrCapabilities:Landroid/view/Display$HdrCapabilities;

    const/4 p0, 0x1

    return p0
.end method

.method public final updateStaticInfo(Landroid/view/SurfaceControl$StaticDisplayInfo;)Z
    .registers 3

    .line 592
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 595
    :cond_a
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    const/4 p0, 0x1

    return p0
.end method

.method public final updateSupportedRefreshatesLocked([F)Z
    .registers 4

    .line 675
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getFeatureFlags()Lcom/android/server/display/feature/DisplayManagerFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->enableGetSupportedRefreshRates()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    :cond_e
    if-nez p1, :cond_11

    return v1

    .line 681
    :cond_11
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedRefreshRates:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    if-eqz v0, :cond_1a

    return v1

    .line 684
    :cond_1a
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedRefreshRates:[F

    const/4 p0, 0x1

    return p0
.end method

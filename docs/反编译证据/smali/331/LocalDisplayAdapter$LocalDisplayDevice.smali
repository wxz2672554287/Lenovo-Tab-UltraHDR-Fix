.class public final Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "LocalDisplayAdapter.java"


# instance fields
.field public mActiveColorMode:I

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

.field public mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

.field public mGameContentTypeRequested:Z

.field public mGameContentTypeSupported:Z

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

.method public static bridge synthetic -$$Nest$fgetmPhysicalDisplayId(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    return-wide v0
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

.method public constructor <init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/IBinder;JLandroid/view/SurfaceControl$StaticDisplayInfo;Landroid/view/SurfaceControl$DynamicDisplayInfo;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;ZZ)V
    .registers 22

    move-object v6, p0

    move-object v7, p1

    move-wide v8, p3

    move-object/from16 v10, p6

    move/from16 v11, p8

    .line 373
    iput-object v7, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "local:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 375
    invoke-virtual {p1}, Lcom/android/server/display/DisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 376
    invoke-virtual {p1}, Lcom/android/server/display/DisplayAdapter;->getFeatureFlags()Lcom/android/server/display/feature/DisplayManagerFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isPixelAnisotropyCorrectionInLogicalDisplayEnabled()Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 374
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Context;Z)V

    .line 322
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    .line 323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    .line 324
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-direct {v0}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>()V

    iput-object v0, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    const/4 v0, 0x0

    .line 332
    iput v0, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 333
    iput v0, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mCommittedState:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 336
    iput v1, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightnessState:F

    .line 337
    iput v1, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSdrBrightnessState:F

    .line 338
    iput v1, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mCurrentHdrSdrRatio:F

    const/4 v1, -0x1

    .line 339
    iput v1, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    .line 340
    iput v1, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSystemPreferredModeId:I

    .line 342
    iput v1, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredModeId:I

    .line 345
    iput v1, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayModeAtStartId:I

    .line 347
    iput v1, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    .line 367
    new-array v2, v0, [Landroid/view/DisplayEventReceiver$FrameRateOverride;

    iput-object v2, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    .line 377
    iput-wide v8, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    .line 378
    iput-boolean v11, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mIsFirstDisplay:Z

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    .line 379
    invoke-virtual {p0, v2, v10, v3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDisplayPropertiesLocked(Landroid/view/SurfaceControl$StaticDisplayInfo;Landroid/view/SurfaceControl$DynamicDisplayInfo;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z

    .line 380
    const-class v2, Landroid/hardware/sidekick/SidekickInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/sidekick/SidekickInternal;

    iput-object v2, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSidekickInternal:Landroid/hardware/sidekick/SidekickInternal;

    .line 381
    new-instance v2, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;

    invoke-static {p1}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmSurfaceControlProxy(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    move-result-object v3

    move-object v4, p2

    invoke-direct {v2, p2, v11, v3}, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;-><init>(Landroid/os/IBinder;ZLcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;)V

    iput-object v2, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklightAdapter:Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;

    .line 383
    iget v2, v10, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeDisplayModeId:I

    iput v2, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayModeAtStartId:I

    .line 386
    invoke-static {}, Lcom/motorola/internal/app/MotoDesktopManager;->isDesktopSupported()Z

    move-result v2

    if-eqz v2, :cond_ed

    invoke-static {p1}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmPersistentDataStore(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v2

    if-eqz v2, :cond_ed

    .line 387
    invoke-static {p1}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmPersistentDataStore(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/PersistentDataStore;->getDesktopDisplayMode()I

    move-result v2

    .line 388
    invoke-static {}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$sfgetDEBUG_DESKTOP()Z

    move-result v3

    if-eqz v3, :cond_c7

    .line 389
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New LocalDisplayDevice displayMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mIsFirstDisplay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mUniqueId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 389
    const-string v4, "LocalDisplayAdapter"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c7
    if-ne v2, v1, :cond_cc

    if-nez v11, :cond_cc

    move v2, v0

    :cond_cc
    if-eqz p9, :cond_e9

    .line 399
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->isRestrictedDisplay()Z

    move-result v1

    if-eqz v1, :cond_e9

    .line 400
    invoke-static {p1, v0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fputmActiveDisplayMode(Lcom/android/server/display/LocalDisplayAdapter;I)V

    .line 401
    invoke-virtual {p1}, Lcom/android/server/display/DisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "extra_display_mode"

    invoke-static {p1}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmActiveDisplayMode(Lcom/android/server/display/LocalDisplayAdapter;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_f0

    .line 404
    :cond_e9
    invoke-static {p1, v2}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fputmActiveDisplayMode(Lcom/android/server/display/LocalDisplayAdapter;I)V

    goto :goto_f0

    .line 408
    :cond_ed
    invoke-static {p1, v1}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fputmActiveDisplayMode(Lcom/android/server/display/LocalDisplayAdapter;I)V

    :goto_f0
    return-void
.end method


# virtual methods
.method public advisedR4DisplayDensity(II)I
    .registers 3

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public applyPendingDisplayDeviceInfoChangesLocked()V
    .registers 2

    .line 789
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 790
    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v0, 0x0

    .line 791
    iput-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    :cond_a
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 9

    .line 1496
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayDevice;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 1497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPhysicalDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1498
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

    .line 1499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayModeSpecsInvalid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecsInvalid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveModeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveColorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsFirstDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mIsFirstDisplay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveDisplayMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmActiveDisplayMode(Lcom/android/server/display/LocalDisplayAdapter;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1504
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

    .line 1505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDefaultModeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mUserPreferredModeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1507
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

    .line 1508
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

    .line 1509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBrightnessState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightnessState:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBacklightAdapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklightAdapter:Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAllmSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAllmRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mGameContentTypeSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mGameContentTypeRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mStaticDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1516
    const-string/jumbo v0, "mSfDisplayModes="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1517
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSfDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1d7
    const-string v4, "  "

    if-ge v3, v1, :cond_1f2

    aget-object v5, v0, v3

    .line 1518
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d7

    .line 1520
    :cond_1f2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveSfDisplayMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveRenderFrameRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveRenderFrameRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1522
    const-string/jumbo v0, "mSupportedModes="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1523
    :goto_226
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_249

    .line 1524
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

    goto :goto_226

    .line 1526
    :cond_249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSupportedColorModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayDeviceConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final findDisplayModeRecord(Landroid/view/SurfaceControl$DisplayMode;Ljava/util/List;)Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    .registers 8

    const/4 v0, 0x0

    .line 762
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_37

    .line 763
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 764
    invoke-virtual {v1, p1}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$DisplayMode;)Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 766
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getAlternativeRefreshRates()[F

    move-result-object v2

    .line 765
    invoke-virtual {p0, p2, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->refreshRatesEquals(Ljava/util/List;[F)Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    iget-object v3, p1, Landroid/view/SurfaceControl$DisplayMode;->supportedHdrTypes:[I

    iget-object v4, v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 768
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getSupportedHdrTypes()[I

    move-result-object v4

    .line 767
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

    .line 1588
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSfDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getModeById([Landroid/view/SurfaceControl$DisplayMode;I)Landroid/view/SurfaceControl$DisplayMode;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_20

    .line 1590
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

    .line 1593
    :goto_21
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge p1, v2, :cond_41

    .line 1594
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 1595
    invoke-virtual {v2, v0}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$DisplayMode;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 1596
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

    .line 1552
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 1553
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    iget-object v1, v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 1554
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

    .line 1564
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 1565
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    iget-object v1, v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 1566
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

    .line 1532
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    const/4 v0, -0x1

    if-eqz p1, :cond_29

    .line 1534
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSfDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v0

    :goto_10
    if-ge v2, v1, :cond_28

    aget-object v4, p0, v2

    .line 1535
    invoke-virtual {p1, v4}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$DisplayMode;)Z

    move-result v5

    if-eqz v5, :cond_25

    if-ne v3, v0, :cond_1e

    .line 1537
    iget v3, v4, Landroid/view/SurfaceControl$DisplayMode;->id:I

    .line 1541
    :cond_1e
    iget v5, v4, Landroid/view/SurfaceControl$DisplayMode;->group:I

    if-ne v5, p2, :cond_25

    .line 1542
    iget p0, v4, Landroid/view/SurfaceControl$DisplayMode;->id:I

    return p0

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_28
    move v0, v3

    :cond_29
    return v0
.end method

.method public final findUserPreferredModeIdLocked(Landroid/view/Display$Mode;)I
    .registers 7

    if-eqz p1, :cond_2f

    const/4 v0, 0x0

    .line 1575
    :goto_3
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2f

    .line 1576
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    iget-object v1, v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 1577
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v2

    .line 1578
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v3

    .line 1579
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v4

    .line 1577
    invoke-virtual {p1, v2, v3, v4}, Landroid/view/Display$Mode;->matches(IIF)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1580
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

    .line 424
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayModeAtStartId:I

    invoke-virtual {p0, v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findMatchingModeIdLocked(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findMode(I)Landroid/view/Display$Mode;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;
    .registers 2

    .line 635
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    if-nez v0, :cond_7

    .line 636
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->loadDisplayDeviceConfig()V

    .line 638
    :cond_7
    iget-object p0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    return-object p0
.end method

.method public getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .registers 16

    .line 797
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-nez v0, :cond_3a5

    .line 798
    new-instance v0, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 799
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    iget v2, v1, Landroid/view/SurfaceControl$DisplayMode;->width:I

    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 800
    iget v1, v1, Landroid/view/SurfaceControl$DisplayMode;->height:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 801
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    .line 802
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveRenderFrameRate:F

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->renderFrameRate:F

    .line 803
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getPreferredModeId()I

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    .line 804
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredModeId:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->userPreferredModeId:I

    .line 805
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayModes(Landroid/util/SparseArray;)[Landroid/view/Display$Mode;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 806
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->colorMode:I

    .line 807
    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmSupported:Z

    iput-boolean v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->allmSupported:Z

    .line 808
    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeSupported:Z

    iput-boolean v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->gameContentTypeSupported:Z

    .line 809
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    .line 810
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    const/4 v0, 0x0

    move v1, v0

    .line 811
    :goto_4b
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_68

    .line 812
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

    .line 814
    :cond_68
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 815
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    iget-wide v3, v2, Landroid/view/SurfaceControl$DisplayMode;->appVsyncOffsetNanos:J

    iput-wide v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    .line 816
    iget-wide v2, v2, Landroid/view/SurfaceControl$DisplayMode;->presentationDeadlineNanos:J

    iput-wide v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    .line 817
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 818
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mCommittedState:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->committedState:I

    .line 819
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 820
    iget-wide v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    .line 821
    invoke-static {v1, v2}, Landroid/view/DisplayAddress;->fromPhysicalDisplayId(J)Landroid/view/DisplayAddress$Physical;

    move-result-object v1

    .line 822
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput-object v1, v2, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    .line 823
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getLogicalDensity()I

    move-result v3

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 824
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    iget v4, v3, Landroid/view/SurfaceControl$DisplayMode;->xDpi:F

    iput v4, v2, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    .line 825
    iget v3, v3, Landroid/view/SurfaceControl$DisplayMode;->yDpi:F

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 826
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    iget-object v4, v3, Landroid/view/SurfaceControl$StaticDisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    iput-object v4, v2, Lcom/android/server/display/DisplayDeviceInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    .line 828
    iget v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mConnectedHdcpLevel:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_b5

    if-lt v4, v5, :cond_b2

    move v4, v6

    goto :goto_b3

    :cond_b2
    move v4, v0

    .line 829
    :goto_b3
    iput-boolean v4, v3, Landroid/view/SurfaceControl$StaticDisplayInfo;->secure:Z

    .line 831
    :cond_b5
    iget-boolean v3, v3, Landroid/view/SurfaceControl$StaticDisplayInfo;->secure:Z

    if-eqz v3, :cond_bd

    const/16 v3, 0xc

    .line 832
    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 836
    :cond_bd
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v2}, Lcom/android/server/display/LocalDisplayAdapter;->getOverlayContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 837
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v3, v3, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    const/16 v4, 0x80

    if-eqz v3, :cond_da

    .line 838
    check-cast v3, Landroid/view/DisplayAddress$Physical;

    invoke-virtual {v3}, Landroid/view/DisplayAddress$Physical;->getPort()I

    move-result v3

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_da

    move v3, v6

    goto :goto_db

    :cond_da
    move v3, v0

    .line 840
    :goto_db
    iget-object v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v8, v7, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/2addr v8, v6

    iput v8, v7, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 842
    iget-boolean v8, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mIsFirstDisplay:Z

    const-string v13, "LocalDisplayAdapter"

    const v14, 0x104037e

    if-eqz v8, :cond_10b

    const v1, 0x11101e0

    .line 843
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_101

    sget-boolean v1, Landroid/os/Build;->IS_EMULATOR:Z

    if-eqz v1, :cond_1c9

    const-string/jumbo v1, "ro.boot.emulator.circular"

    .line 845
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1c9

    .line 846
    :cond_101
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    goto/16 :goto_1c9

    :cond_10b
    if-eqz v3, :cond_15e

    .line 849
    iput v6, v7, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 850
    iput v6, v7, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 851
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 853
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/2addr v3, v5

    iput v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 855
    const-string/jumbo v1, "vendor.display.builtin_presentation"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_13a

    .line 857
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v3, v3, 0x40

    iput v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    goto :goto_142

    .line 859
    :cond_13a
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 862
    :goto_142
    const-string/jumbo v1, "vendor.display.builtin_mirroring"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_152

    .line 864
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/2addr v3, v4

    iput v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 867
    :cond_152
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    iget v4, v3, Landroid/view/SurfaceControl$DisplayMode;->width:I

    iget v3, v3, Landroid/view/SurfaceControl$DisplayMode;->height:I

    invoke-virtual {v1, v4, v3}, Lcom/android/server/display/DisplayDeviceInfo;->setAssumedDensityForExternalDisplay(II)V

    goto :goto_1c9

    :cond_15e
    const v3, 0x11101d8

    .line 869
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_16e

    .line 870
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v7, v3, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/2addr v4, v7

    iput v4, v3, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 873
    :cond_16e
    invoke-virtual {p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->isDisplayPrivate(Landroid/view/DisplayAddress$Physical;)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 874
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 879
    :cond_17c
    invoke-static {}, Lcom/android/server/wm/OVDesktopController;->isPcDesktopFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_1c9

    .line 880
    sget v1, Lcom/android/server/display/LocalDisplayAdapter;->FIXED_PHYSICAL_PCMODE_DISPLAY_ID:I

    int-to-long v3, v1

    iget-wide v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    cmp-long v1, v3, v7

    if-nez v1, :cond_1c9

    .line 881
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    iget v3, v3, Landroid/view/SurfaceControl$StaticDisplayInfo;->density:F

    const/high16 v4, 0x43200000    # 160.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 882
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    iget v4, v3, Landroid/view/SurfaceControl$DisplayMode;->xDpi:F

    iput v4, v1, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    .line 883
    iget v4, v3, Landroid/view/SurfaceControl$DisplayMode;->yDpi:F

    iput v4, v1, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 884
    iput v6, v1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 887
    iget v4, v3, Landroid/view/SurfaceControl$DisplayMode;->width:I

    iget v3, v3, Landroid/view/SurfaceControl$DisplayMode;->height:I

    if-le v4, v3, :cond_1af

    .line 889
    iput v0, v1, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    goto :goto_1b1

    .line 892
    :cond_1af
    iput v6, v1, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    .line 894
    :goto_1b1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ZuiDesktop: init mInfo.rotation="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v3, v3, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    :cond_1c9
    :goto_1c9
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, v1, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/view/DisplayCutout;->getMaskBuiltInDisplayCutout(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1db

    .line 902
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v3, v3, 0x800

    iput v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 905
    :cond_1db
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, v1, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 906
    invoke-static {v1}, Landroid/util/DisplayUtils;->getMaximumResolutionDisplayMode([Landroid/view/Display$Mode;)Landroid/view/Display$Mode;

    move-result-object v1

    if-nez v1, :cond_1ea

    .line 908
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v3, v3, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    goto :goto_1ee

    :cond_1ea
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v3

    :goto_1ee
    if-nez v1, :cond_1f5

    .line 910
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, v1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    goto :goto_1f9

    :cond_1f5
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v1

    .line 913
    :goto_1f9
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    iget-boolean v4, v4, Landroid/view/SurfaceControl$StaticDisplayInfo;->isInternal:Z

    if-eqz v4, :cond_21f

    .line 914
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v8, v4, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iget v11, v4, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v12, v4, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    move-object v7, v2

    move v9, v3

    move v10, v1

    invoke-static/range {v7 .. v12}, Landroid/view/DisplayCutout;->fromResourcesRectApproximation(Landroid/content/res/Resources;Ljava/lang/String;IIII)Landroid/view/DisplayCutout;

    move-result-object v7

    iput-object v7, v4, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 916
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v8, v4, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iget v11, v4, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v12, v4, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    move-object v7, v2

    invoke-static/range {v7 .. v12}, Landroid/view/RoundedCorners;->fromResources(Landroid/content/res/Resources;Ljava/lang/String;IIII)Landroid/view/RoundedCorners;

    move-result-object v7

    iput-object v7, v4, Lcom/android/server/display/DisplayDeviceInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 920
    :cond_21f
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    iget v7, v7, Landroid/view/SurfaceControl$StaticDisplayInfo;->installOrientation:I

    iput v7, v4, Lcom/android/server/display/DisplayDeviceInfo;->installOrientation:I

    .line 922
    iget-object v8, v4, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iget v11, v4, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v12, v4, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    move-object v7, v2

    move v9, v3

    move v10, v1

    invoke-static/range {v7 .. v12}, Landroid/view/DisplayShape;->fromResources(Landroid/content/res/Resources;Ljava/lang/String;IIII)Landroid/view/DisplayShape;

    move-result-object v1

    iput-object v1, v4, Lcom/android/server/display/DisplayDeviceInfo;->displayShape:Landroid/view/DisplayShape;

    .line 925
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/display/DisplayDeviceConfig;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 927
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    iget-boolean v1, v1, Landroid/view/SurfaceControl$StaticDisplayInfo;->isInternal:Z

    if-eqz v1, :cond_277

    .line 928
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v6, v1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 929
    iput v6, v1, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 930
    iget v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/2addr v3, v5

    iput v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 931
    iget-object v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    if-nez v3, :cond_25d

    .line 932
    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 936
    :cond_25d
    invoke-static {}, Lcom/android/server/wm/OVDesktopController;->isPcDesktopFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_29a

    .line 937
    sget v1, Lcom/android/server/display/LocalDisplayAdapter;->FIXED_PHYSICAL_PCMODE_DISPLAY_ID:I

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_29a

    .line 938
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v2, v2, -0x3

    or-int/lit16 v2, v2, 0x400

    .line 941
    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    goto :goto_29a

    .line 947
    :cond_277
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v5, v1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 948
    iput v5, v1, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 949
    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 950
    iget-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    if-nez v2, :cond_29a

    .line 951
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104037f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 956
    :cond_29a
    :goto_29a
    invoke-static {}, Lcom/motorola/internal/app/MotoDesktopManager;->isDesktopSupported()Z

    move-result v1

    if-eqz v1, :cond_374

    .line 957
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->isDesktopMode()Z

    move-result v1

    if-nez v1, :cond_2ac

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->isMobileUIMode()Z

    move-result v1

    if-eqz v1, :cond_374

    :cond_2ac
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 959
    invoke-virtual {v1}, Lcom/android/server/display/DisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayDeviceInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    .line 958
    invoke-static {v1, v2}, Lcom/motorola/internal/app/MotoDesktopManager;->isBlackListDisplay(Landroid/content/Context;Landroid/hardware/display/DeviceProductInfo;)Z

    move-result v1

    if-nez v1, :cond_374

    .line 960
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const v3, 0x305080

    or-int/2addr v2, v3

    .line 965
    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 967
    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    iget v5, v4, Landroid/view/SurfaceControl$DisplayMode;->width:I

    int-to-float v5, v5

    iget v7, v4, Landroid/view/SurfaceControl$DisplayMode;->xDpi:F

    div-float/2addr v5, v7

    iget v7, v4, Landroid/view/SurfaceControl$DisplayMode;->height:I

    int-to-float v7, v7

    iget v4, v4, Landroid/view/SurfaceControl$DisplayMode;->yDpi:F

    div-float/2addr v7, v4

    .line 970
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->isMobileUIMode()Z

    move-result v4

    .line 967
    invoke-static {v2, v3, v5, v7, v4}, Lcom/android/server/display/DisplayDevice;->getR4DisplayDensity(IIFFZ)I

    move-result v2

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 971
    invoke-static {}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$sfgetDEBUG_DESKTOP()Z

    move-result v1

    if-eqz v1, :cond_302

    .line 972
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDisplayDeviceInfoLocked mActiveSfDisplayMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    .line 973
    invoke-virtual {v2}, Landroid/view/SurfaceControl$DisplayMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 972
    invoke-static {v13, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    :cond_302
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v2}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$mgetFontScale(Lcom/android/server/display/LocalDisplayAdapter;)F

    move-result v2

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->initialFontScale:F

    .line 979
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getMaxResolution()Lcom/motorola/server/display/Resolution;

    move-result-object v1

    .line 980
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v1, Lcom/motorola/server/display/Resolution;->width:I

    iget v1, v1, Lcom/motorola/server/display/Resolution;->height:I

    invoke-static {v2, v3, v1}, Lcom/motorola/server/display/Resolution;->getSupportedResolutionList(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v1

    .line 982
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 983
    new-instance v3, Landroid/view/Display$Mode;

    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v4, v4, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    const/high16 v7, 0x42700000    # 60.0f

    invoke-direct {v3, v0, v5, v4, v7}, Landroid/view/Display$Mode;-><init>(IIIF)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 984
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v6, :cond_363

    move v3, v0

    .line 985
    :goto_33a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_363

    .line 986
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/server/display/Resolution;

    .line 987
    iget v5, v4, Lcom/motorola/server/display/Resolution;->width:I

    iget-object v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v8, v6, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    if-eq v5, v8, :cond_360

    iget v5, v4, Lcom/motorola/server/display/Resolution;->height:I

    iget v6, v6, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    if-eq v5, v6, :cond_360

    .line 988
    new-instance v5, Landroid/view/Display$Mode;

    iget v6, v4, Lcom/motorola/server/display/Resolution;->width:I

    iget v4, v4, Lcom/motorola/server/display/Resolution;->height:I

    invoke-direct {v5, v0, v6, v4, v7}, Landroid/view/Display$Mode;-><init>(IIIF)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_360
    add-int/lit8 v3, v3, 0x1

    goto :goto_33a

    .line 992
    :cond_363
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/Display$Mode;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/Display$Mode;

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedReadyForModes:[Landroid/view/Display$Mode;

    goto :goto_382

    .line 994
    :cond_374
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->isRestrictedDisplay()Z

    move-result v0

    if-eqz v0, :cond_382

    .line 996
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 999
    :cond_382
    :goto_382
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->frameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    .line 1002
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/4 v1, 0x0

    .line 1003
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->brightnessMinimum:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1004
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->brightnessMaximum:F

    .line 1005
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessDefault()F

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->brightnessDefault:F

    .line 1006
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mCurrentHdrSdrRatio:F

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->hdrSdrRatio:F

    .line 1008
    :cond_3a5
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-object p0
.end method

.method public final getDisplayModes(Landroid/util/SparseArray;)[Landroid/view/Display$Mode;
    .registers 5

    .line 1608
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p0

    .line 1609
    new-array v0, p0, [Landroid/view/Display$Mode;

    const/4 v1, 0x0

    :goto_7
    if-ge v1, p0, :cond_16

    .line 1611
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 1612
    iget-object v2, v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_16
    return-object v0
.end method

.method public final getLogicalDensity()I
    .registers 5

    .line 648
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getDensityMapping()Lcom/android/server/display/DensityMapping;

    move-result-object v0

    if-nez v0, :cond_17

    .line 650
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    iget p0, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->density:F

    const/high16 v0, 0x43200000    # 160.0f

    mul-float/2addr p0, v0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int p0, v0

    return p0

    .line 653
    :cond_17
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget p0, p0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    invoke-virtual {v0, v1, p0}, Lcom/android/server/display/DensityMapping;->getDensityForResolution(II)I

    move-result p0

    return p0
.end method

.method public final getMaxResolution()Lcom/motorola/server/display/Resolution;
    .registers 12

    .line 1693
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    iget v1, v0, Landroid/view/SurfaceControl$DisplayMode;->width:I

    iget v0, v0, Landroid/view/SurfaceControl$DisplayMode;->height:I

    invoke-static {v1, v0}, Lcom/motorola/server/display/Resolution;->getRatioType(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    .line 1696
    :goto_f
    iget-object v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_5c

    .line 1697
    iget-object v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 1698
    iget-object v7, v6, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v7}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v7

    .line 1699
    iget-object v6, v6, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v6}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v6

    .line 1700
    invoke-static {v7, v6}, Lcom/motorola/server/display/Resolution;->getRatioType(II)I

    move-result v8

    .line 1701
    invoke-virtual {p0, v7, v6, v3, v4}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->isLarger(IIII)Z

    move-result v9

    if-eqz v9, :cond_43

    iget-object v9, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    iget v10, v9, Landroid/view/SurfaceControl$DisplayMode;->width:I

    iget v9, v9, Landroid/view/SurfaceControl$DisplayMode;->height:I

    .line 1702
    invoke-virtual {p0, v7, v6, v10, v9}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->isLarger(IIII)Z

    move-result v9

    if-nez v9, :cond_43

    move v4, v6

    move v3, v7

    :cond_43
    if-ne v8, v0, :cond_59

    .line 1707
    invoke-virtual {p0, v7, v6, v2, v5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->isLarger(IIII)Z

    move-result v8

    if-eqz v8, :cond_59

    iget-object v8, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    iget v9, v8, Landroid/view/SurfaceControl$DisplayMode;->width:I

    iget v8, v8, Landroid/view/SurfaceControl$DisplayMode;->height:I

    .line 1708
    invoke-virtual {p0, v7, v6, v9, v8}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->isLarger(IIII)Z

    move-result v8

    if-nez v8, :cond_59

    move v5, v6

    move v2, v7

    :cond_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_5c
    if-eqz v2, :cond_66

    if-eqz v5, :cond_66

    .line 1715
    new-instance p0, Lcom/motorola/server/display/Resolution;

    invoke-direct {p0, v2, v5}, Lcom/motorola/server/display/Resolution;-><init>(II)V

    return-object p0

    .line 1717
    :cond_66
    new-instance p0, Lcom/motorola/server/display/Resolution;

    invoke-direct {p0, v3, v4}, Lcom/motorola/server/display/Resolution;-><init>(II)V

    return-object p0
.end method

.method public final getModeById([Landroid/view/SurfaceControl$DisplayMode;I)Landroid/view/SurfaceControl$DisplayMode;
    .registers 6

    .line 751
    array-length p0, p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p0, :cond_e

    aget-object v1, p1, v0

    .line 752
    iget v2, v1, Landroid/view/SurfaceControl$DisplayMode;->id:I

    if-ne v2, p2, :cond_b

    return-object v1

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 756
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

    .line 642
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredModeId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    goto :goto_8

    .line 644
    :cond_6
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    :goto_8
    return v0
.end method

.method public getSystemPreferredDisplayModeLocked()Landroid/view/Display$Mode;
    .registers 2

    .line 1311
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSystemPreferredModeId:I

    invoke-virtual {p0, v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findMode(I)Landroid/view/Display$Mode;

    move-result-object p0

    return-object p0
.end method

.method public getUserPreferredDisplayModeLocked()Landroid/view/Display$Mode;
    .registers 1

    .line 1306
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

    .line 1660
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {p0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmActiveDisplayMode(Lcom/android/server/display/LocalDisplayAdapter;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_10

    .line 1661
    invoke-static {}, Lcom/android/server/wm/OVDesktopController;->isUnderPcOrExternalDisplayDesktopMode()Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public final isDisplayPrivate(Landroid/view/DisplayAddress$Physical;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1621
    :cond_4
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter;->getOverlayContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x10700a9

    .line 1622
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    if-eqz p0, :cond_28

    .line 1624
    invoke-virtual {p1}, Landroid/view/DisplayAddress$Physical;->getPort()I

    move-result p1

    .line 1625
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

.method public final isLarger(IIII)Z
    .registers 5

    .line 0
    mul-int/2addr p1, p2

    mul-int/2addr p3, p4

    if-le p1, p3, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final isMobileUIMode()Z
    .registers 2

    .line 1666
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {p0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmActiveDisplayMode(Lcom/android/server/display/LocalDisplayAdapter;)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 1667
    invoke-static {}, Lcom/android/server/wm/OVDesktopController;->isUnderPcOrExternalDisplayDesktopMode()Z

    move-result p0

    if-nez p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
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

    .line 1651
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 1652
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    iget-wide v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    invoke-static {v1, v2, v3}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$mtryDisconnectDisplayLocked(Lcom/android/server/display/LocalDisplayAdapter;J)V

    .line 1653
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    iget-wide v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    const/4 p0, 0x0

    invoke-static {v1, v2, v3, p0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$mtryConnectDisplayLocked(Lcom/android/server/display/LocalDisplayAdapter;JZ)V

    .line 1654
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public final loadDisplayDeviceConfig()V
    .registers 8

    .line 658
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/LocalDisplayAdapter;->getOverlayContext()Landroid/content/Context;

    move-result-object v2

    .line 659
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmInjector(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/LocalDisplayAdapter$Injector;

    move-result-object v1

    iget-wide v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    iget-boolean v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mIsFirstDisplay:Z

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 660
    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getFeatureFlags()Lcom/android/server/display/feature/DisplayManagerFlags;

    move-result-object v6

    .line 659
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/display/LocalDisplayAdapter$Injector;->createDisplayDeviceConfig(Landroid/content/Context;JZLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 663
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklightAdapter:Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;

    const-string v1, "canSetBrightnessViaHwc"

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->hasQuirk(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->setForceSurfaceControl(Z)V

    return-void
.end method

.method public onActiveDisplayModeChangedLocked(IF)V
    .registers 3

    .line 1376
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateActiveModeLocked(IF)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1377
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    :cond_9
    return-void
.end method

.method public onDisplayModeChangedLocked(I)V
    .registers 4

    .line 1637
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmActiveDisplayMode(Lcom/android/server/display/LocalDisplayAdapter;)I

    move-result v0

    if-ne v0, p1, :cond_9

    return-void

    .line 1640
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->isDesktopMode()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->isMobileUIMode()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_15
    const/4 v0, 0x1

    if-eq p1, v0, :cond_47

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1c

    goto :goto_47

    .line 1646
    :cond_1c
    invoke-static {}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$sfgetDEBUG_DESKTOP()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDisplayModeChangedLocked displayMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocalDisplayAdapter"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    :cond_39
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_47
    :goto_47
    return-void
.end method

.method public onFrameRateOverridesChanged([Landroid/view/DisplayEventReceiver$FrameRateOverride;)V
    .registers 2

    .line 1383
    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateFrameRateOverridesLocked([Landroid/view/DisplayEventReceiver$FrameRateOverride;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1384
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    :cond_9
    return-void
.end method

.method public onHdcpLevelsChangedLocked(II)V
    .registers 3

    .line 1389
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateHdcpLevelsLocked(II)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1390
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    :cond_9
    return-void
.end method

.method public onOverlayChangedLocked()V
    .registers 1

    .line 1372
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    return-void
.end method

.method public final refreshRatesEquals(Ljava/util/List;[F)Z
    .registers 6

    .line 776
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    array-length v0, p2

    const/4 v1, 0x0

    if-eq p0, v0, :cond_9

    return v1

    :cond_9
    move p0, v1

    .line 779
    :goto_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_2a

    .line 780
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

    .line 1454
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmSurfaceControlProxy(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->setActiveColorMode(Landroid/os/IBinder;I)Z

    .line 1455
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object p1

    monitor-enter p1

    .line 1456
    :try_start_10
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 1457
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

    .line 1436
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    if-ne v0, p1, :cond_5

    return-void

    .line 1439
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1440
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

    .line 1445
    :cond_2d
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    .line 1446
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda2;-><init>()V

    .line 1448
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1446
    invoke-static {v1, p0, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public requestDisplayStateLocked(IFFLcom/android/server/display/DisplayOffloadSessionImpl;)Ljava/lang/Runnable;
    .registers 17

    move-object v1, p0

    move v3, p1

    .line 1021
    iget v0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-eq v0, v3, :cond_a

    move v0, v4

    goto :goto_b

    :cond_a
    move v0, v2

    .line 1022
    :goto_b
    iget v5, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightnessState:F

    cmpl-float v5, v5, p2

    if-nez v5, :cond_19

    iget v5, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSdrBrightnessState:F

    cmpl-float v5, v5, p3

    if-eqz v5, :cond_18

    goto :goto_19

    :cond_18
    move v4, v2

    :cond_19
    :goto_19
    if-nez v0, :cond_20

    if-eqz v4, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 v0, 0x0

    return-object v0

    .line 1025
    :cond_20
    :goto_20
    iget-wide v7, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    .line 1026
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v10

    .line 1027
    iget v2, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    if-eqz v0, :cond_2f

    .line 1030
    iput v3, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 1031
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 1037
    :cond_2f
    new-instance v11, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;

    move-object v0, v11

    move-object v1, p0

    move v3, p1

    move v5, p2

    move v6, p3

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v10}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;-><init>(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;IIZFFJLcom/android/server/display/DisplayOffloadSessionImpl;Landroid/os/IBinder;)V

    return-object v11
.end method

.method public setAutoLowLatencyModeLocked(Z)V
    .registers 3

    .line 1462
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmRequested:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 1466
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmRequested:Z

    .line 1468
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmSupported:Z

    if-nez v0, :cond_13

    .line 1469
    const-string p0, "LocalDisplayAdapter"

    const-string p1, "Unable to set ALLM because the connected display does not support ALLM."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1474
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

    .line 1367
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {p0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmSurfaceControlProxy(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->setDesiredDisplayModeSpecs(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z

    return-void
.end method

.method public setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;)V
    .registers 11

    .line 1322
    iget v0, p1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    if-nez v0, :cond_5

    return-void

    .line 1335
    :cond_5
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeGroup:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findSfDisplayModeIdLocked(II)I

    move-result v3

    if-gez v3, :cond_29

    .line 1344
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

    .line 1346
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    return-void

    .line 1349
    :cond_29
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecsInvalid:Z

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {p1, v0}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    :cond_35
    const/4 v0, 0x0

    .line 1350
    iput-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecsInvalid:Z

    .line 1351
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {v0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->copyFrom(Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;)V

    .line 1352
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda0;-><init>()V

    .line 1354
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v1

    new-instance v8, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    iget-boolean v4, v2, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->allowGroupSwitching:Z

    iget-object v5, v2, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->primary:Landroid/view/SurfaceControl$RefreshRateRanges;

    iget-object v6, v2, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequest:Landroid/view/SurfaceControl$RefreshRateRanges;

    iget-object v7, v2, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->mIdleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;-><init>(IZLandroid/view/SurfaceControl$RefreshRateRanges;Landroid/view/SurfaceControl$RefreshRateRanges;Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;)V

    .line 1352
    invoke-static {v0, p0, v1, v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_63
    return-void
.end method

.method public setGameContentTypeLocked(Z)V
    .registers 3

    .line 1479
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeRequested:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 1483
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeRequested:Z

    .line 1491
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

    .line 1316
    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->requestColorModeLocked(I)V

    return-void
.end method

.method public setUserPreferredDisplayModeLocked(Landroid/view/Display$Mode;)V
    .registers 6

    .line 1266
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getPreferredModeId()I

    move-result v0

    .line 1267
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredMode:Landroid/view/Display$Mode;

    const/4 v1, -0x1

    if-nez p1, :cond_f

    .line 1272
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSystemPreferredModeId:I

    if-eq v2, v1, :cond_f

    .line 1273
    iput v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    :cond_f
    if-eqz p1, :cond_31

    .line 1275
    invoke-virtual {p1}, Landroid/view/Display$Mode;->isRefreshRateSet()Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-virtual {p1}, Landroid/view/Display$Mode;->isResolutionSet()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1277
    :cond_1d
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v2

    .line 1278
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p1

    .line 1277
    invoke-virtual {p0, v2, v3, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findMode(IIF)Landroid/view/Display$Mode;

    move-result-object p1

    if-eqz p1, :cond_31

    .line 1280
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredMode:Landroid/view/Display$Mode;

    .line 1284
    :cond_31
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredMode:Landroid/view/Display$Mode;

    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findUserPreferredModeIdLocked(Landroid/view/Display$Mode;)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredModeId:I

    .line 1286
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getPreferredModeId()I

    move-result p1

    if-ne v0, p1, :cond_40

    return-void

    .line 1289
    :cond_40
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 1291
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {p1}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmIsBootDisplayModeSupported(Lcom/android/server/display/LocalDisplayAdapter;)Z

    move-result p1

    if-nez p1, :cond_4c

    return-void

    .line 1294
    :cond_4c
    iget p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredModeId:I

    if-ne p1, v1, :cond_5e

    .line 1295
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {p1}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmSurfaceControlProxy(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->clearBootDisplayMode(Landroid/os/IBinder;)V

    goto :goto_77

    .line 1297
    :cond_5e
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredMode:Landroid/view/Display$Mode;

    .line 1298
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getModeId()I

    move-result p1

    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeGroup:I

    .line 1297
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findSfDisplayModeIdLocked(II)I

    move-result p1

    .line 1299
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmSurfaceControlProxy(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->setBootDisplayMode(Landroid/os/IBinder;I)V

    :goto_77
    return-void
.end method

.method public updateActiveModeLocked(IF)Z
    .registers 5

    .line 1395
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    iget v0, v0, Landroid/view/SurfaceControl$DisplayMode;->id:I

    if-ne v0, p1, :cond_e

    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveRenderFrameRate:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return p0

    .line 1399
    :cond_e
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSfDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getModeById([Landroid/view/SurfaceControl$DisplayMode;I)Landroid/view/SurfaceControl$DisplayMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    .line 1400
    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findMatchingModeIdLocked(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_35

    .line 1402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In unknown mode after setting allowed modes, activeModeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocalDisplayAdapter"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    :cond_35
    iput p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveRenderFrameRate:F

    const/4 p0, 0x1

    return p0
.end method

.method public final updateAllmSupport(Z)Z
    .registers 3

    .line 734
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmSupported:Z

    if-ne v0, p1, :cond_6

    const/4 p0, 0x0

    return p0

    .line 737
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

    .line 680
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 683
    array-length v1, p1

    move v2, p2

    move v3, v2

    :goto_c
    const/4 v4, 0x1

    if-ge v2, v1, :cond_28

    aget v5, p1, v2

    .line 684
    iget-object v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    move v3, v4

    .line 687
    :cond_1e
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 691
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

    .line 699
    :cond_38
    :goto_38
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 700
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 701
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 704
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_84

    .line 705
    iget p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    const-string v0, "LocalDisplayAdapter"

    if-eqz p1, :cond_63

    .line 706
    const-string p1, "Active color mode no longer available, reverting to default mode."

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iput p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    goto :goto_84

    .line 710
    :cond_63
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7f

    .line 712
    const-string p1, "Default and active color mode is no longer available! Reverting to first available mode."

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    goto :goto_84

    .line 717
    :cond_7f
    const-string p0, "No color modes available!"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_84
    :goto_84
    return v4
.end method

.method public final updateDeviceInfoLocked()V
    .registers 3

    const/4 v0, 0x0

    .line 1603
    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 1604
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

    .line 453
    array-length v4, v1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/view/SurfaceControl$DisplayMode;

    iput-object v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSfDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    move/from16 v4, p3

    .line 454
    invoke-virtual {v0, v1, v4}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getModeById([Landroid/view/SurfaceControl$DisplayMode;I)Landroid/view/SurfaceControl$DisplayMode;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    .line 456
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getModeById([Landroid/view/SurfaceControl$DisplayMode;I)Landroid/view/SurfaceControl$DisplayMode;

    move-result-object v4

    .line 459
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    .line 461
    :goto_25
    array-length v9, v1

    const/4 v10, 0x1

    if-ge v7, v9, :cond_ae

    .line 462
    aget-object v9, v1, v7

    .line 463
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move v12, v6

    .line 464
    :goto_31
    array-length v13, v1

    if-ge v12, v13, :cond_5c

    .line 465
    aget-object v13, v1, v12

    if-eq v12, v7, :cond_59

    .line 466
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

    .line 471
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_59
    add-int/lit8 v12, v12, 0x1

    goto :goto_31

    .line 474
    :cond_5c
    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 480
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_63
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_82

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 481
    invoke-virtual {v13, v9}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$DisplayMode;)Z

    move-result v14

    if-eqz v14, :cond_63

    iget-object v13, v13, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 483
    invoke-virtual {v13}, Landroid/view/Display$Mode;->getAlternativeRefreshRates()[F

    move-result-object v13

    .line 482
    invoke-virtual {v0, v11, v13}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->refreshRatesEquals(Ljava/util/List;[F)Z

    move-result v13

    if-eqz v13, :cond_63

    goto :goto_aa

    .line 494
    :cond_82
    invoke-virtual {v0, v9, v11}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findDisplayModeRecord(Landroid/view/SurfaceControl$DisplayMode;Ljava/util/List;)Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    move-result-object v12

    if-nez v12, :cond_a7

    .line 496
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v8

    new-array v12, v8, [F

    move v13, v6

    :goto_8f
    if-ge v13, v8, :cond_a0

    .line 498
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    aput v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_8f

    .line 500
    :cond_a0
    new-instance v8, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    invoke-direct {v8, v9, v12}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;-><init>(Landroid/view/SurfaceControl$DisplayMode;[F)V

    move-object v12, v8

    move v8, v10

    .line 503
    :cond_a7
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_aa
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_25

    .line 508
    :cond_ae
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v9, 0x0

    if-eqz v7, :cond_c8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 509
    iget-object v11, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    invoke-virtual {v7, v11}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$DisplayMode;)Z

    move-result v11

    if-eqz v11, :cond_b2

    goto :goto_c9

    :cond_c8
    move-object v7, v9

    :goto_c9
    const/4 v1, -0x1

    move/from16 v11, p2

    if-eq v11, v1, :cond_ff

    if-eqz v4, :cond_ff

    .line 519
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_d4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 520
    invoke-virtual {v12, v4}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$DisplayMode;)Z

    move-result v13

    if-eqz v13, :cond_d4

    move-object v9, v12

    :cond_e7
    if-eqz v9, :cond_ff

    .line 527
    iget-object v4, v9, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getModeId()I

    move-result v4

    .line 528
    iget-object v9, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v9}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmIsBootDisplayModeSupported(Lcom/android/server/display/LocalDisplayAdapter;)Z

    move-result v9

    if-eqz v9, :cond_ff

    iget v9, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSystemPreferredModeId:I

    if-eq v9, v4, :cond_ff

    .line 529
    iput v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSystemPreferredModeId:I

    move v4, v10

    goto :goto_100

    :cond_ff
    move v4, v6

    .line 539
    :goto_100
    iget v9, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    const-string v11, "LocalDisplayAdapter"

    if-eq v9, v1, :cond_133

    iget-object v12, v7, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 540
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getModeId()I

    move-result v12

    if-eq v9, v12, :cond_133

    .line 541
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The active mode was changed from SurfaceFlinger or the display device to "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v7, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v9, v7, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v9}, Landroid/view/Display$Mode;->getModeId()I

    move-result v9

    iput v9, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    .line 545
    iget-object v9, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v9}, Lcom/android/server/display/DisplayAdapter;->sendTraversalRequestLocked()V

    move v9, v10

    goto :goto_134

    :cond_133
    move v9, v6

    .line 550
    :goto_134
    iget v12, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveRenderFrameRate:F

    const/4 v13, 0x0

    cmpl-float v13, v12, v13

    if-lez v13, :cond_15c

    cmpl-float v12, v12, v2

    if-eqz v12, :cond_15c

    .line 551
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "The render frame rate was changed from SurfaceFlinger or the display device to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iput v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveRenderFrameRate:F

    .line 555
    iget-object v12, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v12}, Lcom/android/server/display/DisplayAdapter;->sendTraversalRequestLocked()V

    move v12, v10

    goto :goto_15d

    :cond_15c
    move v12, v6

    .line 560
    :goto_15d
    iget-object v13, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    iget v13, v13, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    if-eq v13, v1, :cond_18e

    .line 561
    iget v13, v3, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->defaultMode:I

    invoke-virtual {v0, v13}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findMatchingModeIdLocked(I)I

    move-result v13

    if-eq v13, v1, :cond_187

    .line 565
    iget-object v14, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    iget v15, v14, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    if-ne v15, v13, :cond_187

    iget-object v13, v14, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->primary:Landroid/view/SurfaceControl$RefreshRateRanges;

    iget-object v14, v3, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->primaryRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    .line 567
    invoke-virtual {v13, v14}, Landroid/view/SurfaceControl$RefreshRateRanges;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_187

    iget-object v13, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    iget-object v13, v13, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequest:Landroid/view/SurfaceControl$RefreshRateRanges;

    iget-object v3, v3, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->appRequestRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    .line 568
    invoke-virtual {v13, v3}, Landroid/view/SurfaceControl$RefreshRateRanges;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18e

    .line 569
    :cond_187
    iput-boolean v10, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecsInvalid:Z

    .line 570
    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayAdapter;->sendTraversalRequestLocked()V

    .line 574
    :cond_18e
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v13, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ne v3, v13, :cond_1a5

    if-eqz v8, :cond_19d

    goto :goto_1a5

    :cond_19d
    if-nez v9, :cond_1a3

    if-nez v4, :cond_1a3

    if-eqz v12, :cond_1a4

    :cond_1a3
    move v6, v10

    :cond_1a4
    return v6

    .line 580
    :cond_1a5
    :goto_1a5
    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 581
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1ae
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 582
    iget-object v5, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    iget-object v6, v4, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v6}, Landroid/view/Display$Mode;->getModeId()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1ae

    .line 586
    :cond_1c6
    iget v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    if-ne v3, v1, :cond_1db

    .line 587
    iget-object v3, v7, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    iput v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    .line 588
    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    iget v3, v3, Landroid/view/SurfaceControl$DisplayMode;->group:I

    iput v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeGroup:I

    .line 589
    iput v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveRenderFrameRate:F

    goto :goto_212

    :cond_1db
    if-eqz v8, :cond_1f5

    if-eqz v9, :cond_1f5

    .line 591
    const-string v3, "New display modes are added and the active mode has changed, use active mode as default mode."

    invoke-static {v11, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v3, v7, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    iput v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    .line 594
    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    iget v3, v3, Landroid/view/SurfaceControl$DisplayMode;->group:I

    iput v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeGroup:I

    .line 595
    iput v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveRenderFrameRate:F

    goto :goto_212

    .line 596
    :cond_1f5
    iget v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeGroup:I

    invoke-virtual {v0, v3, v4}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findSfDisplayModeIdLocked(II)I

    move-result v3

    if-gez v3, :cond_212

    .line 597
    const-string v3, "Default display mode no longer available, using currently active mode as default."

    invoke-static {v11, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v3, v7, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    iput v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    .line 600
    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    iget v3, v3, Landroid/view/SurfaceControl$DisplayMode;->group:I

    iput v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeGroup:I

    .line 601
    iput v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveRenderFrameRate:F

    .line 605
    :cond_212
    :goto_212
    iget-object v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    iget v3, v3, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_235

    .line 606
    iget-object v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    iget v2, v2, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    if-eq v2, v1, :cond_229

    .line 607
    const-string v2, "DisplayModeSpecs base mode no longer available, using currently active mode."

    invoke-static {v11, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_229
    iget-object v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    iget-object v3, v7, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    iput v3, v2, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    .line 612
    iput-boolean v10, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecsInvalid:Z

    .line 615
    :cond_235
    iget-object v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredMode:Landroid/view/Display$Mode;

    if-eqz v2, :cond_23f

    .line 616
    invoke-virtual {v0, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findUserPreferredModeIdLocked(Landroid/view/Display$Mode;)I

    move-result v2

    iput v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredModeId:I

    .line 620
    :cond_23f
    iget-object v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    iget v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_258

    .line 621
    iget v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    if-eq v2, v1, :cond_252

    .line 622
    const-string v1, "Active display mode no longer available, reverting to default mode."

    invoke-static {v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_252
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getPreferredModeId()I

    move-result v1

    iput v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    .line 629
    :cond_258
    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->sendTraversalRequestLocked()V

    return v10
.end method

.method public updateDisplayPropertiesLocked(Landroid/view/SurfaceControl$StaticDisplayInfo;Landroid/view/SurfaceControl$DynamicDisplayInfo;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z
    .registers 10

    .line 433
    iget-object v1, p2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->supportedDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    iget v2, p2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->preferredBootDisplayMode:I

    iget v3, p2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeDisplayModeId:I

    iget v4, p2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->renderFrameRate:F

    move-object v0, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDisplayModesLocked([Landroid/view/SurfaceControl$DisplayMode;IIFLandroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z

    move-result p3

    .line 436
    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateStaticInfo(Landroid/view/SurfaceControl$StaticDisplayInfo;)Z

    move-result p1

    or-int/2addr p1, p3

    .line 437
    iget-object p3, p2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->supportedColorModes:[I

    iget v0, p2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeColorMode:I

    invoke-virtual {p0, p3, v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateColorModesLocked([II)Z

    move-result p3

    or-int/2addr p1, p3

    .line 439
    iget-object p3, p2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-virtual {p0, p3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateHdrCapabilitiesLocked(Landroid/view/Display$HdrCapabilities;)Z

    move-result p3

    or-int/2addr p1, p3

    .line 440
    iget-boolean p3, p2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->autoLowLatencyModeSupported:Z

    invoke-virtual {p0, p3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateAllmSupport(Z)Z

    move-result p3

    or-int/2addr p1, p3

    .line 441
    iget-boolean p2, p2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->gameContentTypeSupported:Z

    invoke-virtual {p0, p2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateGameContentTypeSupport(Z)Z

    move-result p2

    or-int/2addr p1, p2

    if-eqz p1, :cond_36

    const/4 p2, 0x1

    .line 444
    iput-boolean p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    :cond_36
    return p1
.end method

.method public updateFrameRateOverridesLocked([Landroid/view/DisplayEventReceiver$FrameRateOverride;)Z
    .registers 3

    .line 1411
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 1415
    :cond_a
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    const/4 p0, 0x1

    return p0
.end method

.method public final updateGameContentTypeSupport(Z)Z
    .registers 3

    .line 742
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeSupported:Z

    if-ne v0, p1, :cond_6

    const/4 p0, 0x0

    return p0

    .line 745
    :cond_6
    iput-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeSupported:Z

    const/4 p0, 0x1

    return p0
.end method

.method public updateHdcpLevelsLocked(II)Z
    .registers 5

    const/4 v0, 0x0

    if-le p1, p2, :cond_27

    .line 1421
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

    .line 1427
    :cond_27
    iget p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mConnectedHdcpLevel:I

    if-ne p2, p1, :cond_2c

    return v0

    .line 1431
    :cond_2c
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mConnectedHdcpLevel:I

    const/4 p0, 0x1

    return p0
.end method

.method public final updateHdrCapabilitiesLocked(Landroid/view/Display$HdrCapabilities;)Z
    .registers 3

    .line 726
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 729
    :cond_a
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHdrCapabilities:Landroid/view/Display$HdrCapabilities;

    const/4 p0, 0x1

    return p0
.end method

.method public final updateStaticInfo(Landroid/view/SurfaceControl$StaticDisplayInfo;)Z
    .registers 3

    .line 668
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 671
    :cond_a
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    const/4 p0, 0x1

    return p0
.end method

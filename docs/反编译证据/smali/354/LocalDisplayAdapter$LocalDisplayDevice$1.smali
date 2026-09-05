.class public Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;
.super Ljava/lang/Object;
.source "LocalDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

.field public final synthetic val$brightnessChanged:Z

.field public final synthetic val$brightnessState:F

.field public final synthetic val$displayOffloadSession:Lcom/android/server/display/DisplayOffloadSessionImpl;

.field public final synthetic val$oldState:I

.field public final synthetic val$physicalDisplayId:J

.field public final synthetic val$sdrBrightnessState:F

.field public final synthetic val$state:I

.field public final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;IIZFFJLcom/android/server/display/DisplayOffloadSessionImpl;Landroid/os/IBinder;)V
    .registers 11

    .line 1037
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iput p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$oldState:I

    iput p3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    iput-boolean p4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightnessChanged:Z

    iput p5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightnessState:F

    iput p6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$sdrBrightnessState:F

    iput-wide p7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$physicalDisplayId:J

    iput-object p9, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayOffloadSession:Lcom/android/server/display/DisplayOffloadSessionImpl;

    iput-object p10, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$token:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyColorMatrixBasedDimming(F)V
    .registers 7

    .line 1236
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v0, v0, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1240
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getEvenDimmerTransitionPoint()F

    move-result v0

    const/high16 v1, 0x42b40000    # 90.0f

    const/4 v2, 0x0

    .line 1236
    invoke-static {v1, v2, v2, v0, p1}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result p1

    float-to-double v0, p1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v3

    double-to-int p1, v0

    .line 1244
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmEvenDimmerStrength(Lcom/android/server/display/LocalDisplayAdapter;)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_35

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmEvenDimmerStrength(Lcom/android/server/display/LocalDisplayAdapter;)I

    move-result v0

    sub-int/2addr v0, p1

    int-to-float v0, v0

    .line 1245
    invoke-static {v0}, Landroid/util/MathUtils;->abs(F)F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_35

    if-gt p1, v1, :cond_3c

    .line 1247
    :cond_35
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v0, p1}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fputmEvenDimmerStrength(Lcom/android/server/display/LocalDisplayAdapter;I)V

    .line 1249
    :cond_3c
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmEvenDimmerStrength(Lcom/android/server/display/LocalDisplayAdapter;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4a

    goto :goto_4b

    :cond_4a
    const/4 v1, 0x0

    .line 1251
    :goto_4b
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmCdsi(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    move-result-object v0

    if-nez v0, :cond_64

    .line 1252
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    const-class v2, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-static {v0, v2}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fputmCdsi(Lcom/android/server/display/LocalDisplayAdapter;Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;)V

    .line 1255
    :cond_64
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmCdsi(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    move-result-object v0

    if-eqz v0, :cond_79

    .line 1256
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {p0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmCdsi(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    move-result-object p0

    invoke-virtual {p0, v1, p1}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->applyEvenDimmerColorChanges(ZI)V

    :cond_79
    return-void
.end method

.method public final backlightToNits(F)F
    .registers 2

    .line 1215
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsFromBacklight(F)F

    move-result p0

    return p0
.end method

.method public final brightnessToBacklight(F)F
    .registers 4

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_7

    return v0

    .line 1210
    :cond_7
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->getBacklightFromBrightness(F)F

    move-result p0

    return p0
.end method

.method public handleHdrSdrNitsChanged(FF)V
    .registers 5

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_12

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_12

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr p1, p2

    .line 1222
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_14

    :cond_12
    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 1226
    :goto_14
    iget-object p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {p2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fgetmCurrentHdrSdrRatio(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)F

    move-result p2

    invoke-static {p2, p1}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result p2

    if-nez p2, :cond_38

    .line 1228
    iget-object p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object p2, p2, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {p2}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object p2

    monitor-enter p2

    .line 1229
    :try_start_29
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fputmCurrentHdrSdrRatio(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;F)V

    .line 1230
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$mupdateDeviceInfoLocked(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)V

    .line 1231
    monitor-exit p2

    goto :goto_38

    :catchall_35
    move-exception p0

    monitor-exit p2
    :try_end_37
    .catchall {:try_start_29 .. :try_end_37} :catchall_35

    throw p0

    :cond_38
    :goto_38
    return-void
.end method

.method public run()V
    .registers 5

    .line 1041
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$oldState:I

    .line 1042
    invoke-static {v0}, Landroid/view/Display;->isSuspendedState(I)Z

    move-result v1

    if-nez v1, :cond_c

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$oldState:I

    if-nez v1, :cond_38

    .line 1044
    :cond_c
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    invoke-static {v1}, Landroid/view/Display;->isSuspendedState(I)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 1045
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    invoke-virtual {p0, v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayState(I)V

    .line 1046
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    goto :goto_38

    .line 1047
    :cond_1c
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_34

    iget v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$oldState:I

    if-ne v3, v2, :cond_26

    goto :goto_34

    :cond_26
    const/4 v2, 0x6

    if-eq v1, v2, :cond_2f

    if-ne v3, v2, :cond_2c

    goto :goto_2f

    :cond_2c
    if-eqz v3, :cond_38

    return-void

    :cond_2f
    :goto_2f
    const/4 v0, 0x2

    .line 1053
    invoke-virtual {p0, v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayState(I)V

    goto :goto_38

    :cond_34
    :goto_34
    const/4 v0, 0x3

    .line 1049
    invoke-virtual {p0, v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayState(I)V

    .line 1064
    :cond_38
    :goto_38
    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightnessChanged:Z

    if-eqz v1, :cond_51

    .line 1065
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightnessState:F

    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$sdrBrightnessState:F

    invoke-virtual {p0, v1, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayBrightness(FF)V

    .line 1066
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightnessState:F

    invoke-static {v1, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fputmBrightnessState(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;F)V

    .line 1067
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$sdrBrightnessState:F

    invoke-static {v1, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fputmSdrBrightnessState(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;F)V

    .line 1071
    :cond_51
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    if-eq v1, v0, :cond_58

    .line 1072
    invoke-virtual {p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayState(I)V

    :cond_58
    return-void
.end method

.method public final setCommittedState(I)V
    .registers 4

    .line 1142
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 1143
    :try_start_9
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v1, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fputmCommittedState(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;I)V

    .line 1144
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$mupdateDeviceInfoLocked(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)V

    .line 1145
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public final setDisplayBrightness(FF)V
    .registers 10

    .line 1152
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_b4

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_b4

    .line 1156
    :cond_e
    invoke-static {}, Lcom/android/server/wm/OVDesktopController;->isPcDesktopFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1157
    invoke-static {}, Lcom/android/server/wm/OVDesktopController;->isUnderPcDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1158
    iget-wide v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$physicalDisplayId:J

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-nez v0, :cond_23

    return-void

    .line 1171
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDisplayBrightness(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$physicalDisplayId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", brightnessState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", sdrBrightnessState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1176
    :try_start_52
    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->brightnessToBacklight(F)F

    move-result v0

    .line 1177
    invoke-virtual {p0, p2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->brightnessToBacklight(F)F

    move-result v3

    .line 1179
    invoke-virtual {p0, v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->backlightToNits(F)F

    move-result v4

    .line 1180
    invoke-virtual {p0, v3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->backlightToNits(F)F

    move-result v5

    .line 1182
    iget-object v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v6, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v6}, Lcom/android/server/display/DisplayAdapter;->getFeatureFlags()Lcom/android/server/display/feature/DisplayManagerFlags;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/display/feature/DisplayManagerFlags;->isEvenDimmerEnabled()Z

    move-result v6

    if-eqz v6, :cond_82

    iget-object v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v6, v6, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    if-eqz v6, :cond_82

    .line 1184
    invoke-virtual {v6}, Lcom/android/server/display/DisplayDeviceConfig;->isEvenDimmerAvailable()Z

    move-result v6

    if-eqz v6, :cond_82

    .line 1185
    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->applyColorMatrixBasedDimming(F)V

    goto :goto_82

    :catchall_80
    move-exception p0

    goto :goto_b0

    .line 1188
    :cond_82
    :goto_82
    iget-object v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v6}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fgetmBacklightAdapter(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;

    move-result-object v6

    invoke-virtual {v6, v3, v5, v0, v4}, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->setBacklight(FFFF)V

    .line 1189
    const-string v0, "ScreenBrightness"

    .line 1191
    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result p1

    .line 1189
    invoke-static {v1, v2, v0, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 1192
    const-string p1, "SdrScreenBrightness"

    .line 1194
    invoke-static {p2}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result p2

    .line 1192
    invoke-static {v1, v2, p1, p2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 1197
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-virtual {p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDeviceConfig;->hasSdrToHdrRatioSpline()Z

    move-result p1

    if-eqz p1, :cond_ac

    .line 1198
    invoke-virtual {p0, v4, v5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->handleHdrSdrNitsChanged(FF)V
    :try_end_ac
    .catchall {:try_start_52 .. :try_end_ac} :catchall_80

    .line 1202
    :cond_ac
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_b0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1203
    throw p0

    :cond_b4
    :goto_b4
    return-void
.end method

.method public final setDisplayState(I)V
    .registers 9

    .line 1083
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 1084
    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getFeatureFlags()Lcom/android/server/display/feature/DisplayManagerFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDisplayOffloadEnabled()Z

    move-result v0

    const-wide/32 v1, 0x20000

    if-eqz v0, :cond_21

    .line 1089
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayOffloadSession:Lcom/android/server/display/DisplayOffloadSessionImpl;

    if-eqz v3, :cond_46

    .line 1090
    invoke-static {p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;->isSupportedOffloadState(I)Z

    move-result v3

    if-nez v3, :cond_46

    .line 1091
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayOffloadSession:Lcom/android/server/display/DisplayOffloadSessionImpl;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayOffloadSessionImpl;->stopOffload()V

    goto :goto_46

    .line 1094
    :cond_21
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fgetmSidekickActive(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 1095
    const-string v3, "SidekickInternal#endDisplayControl"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1098
    :try_start_2e
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fgetmSidekickInternal(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Landroid/hardware/sidekick/SidekickInternal;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/sidekick/SidekickInternal;->endDisplayControl()V
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_41

    .line 1100
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1102
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fputmSidekickActive(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Z)V

    goto :goto_46

    :catchall_41
    move-exception p0

    .line 1100
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1101
    throw p0

    .line 1106
    :cond_46
    :goto_46
    invoke-static {p1}, Lcom/android/server/display/LocalDisplayAdapter;->getPowerModeForState(I)I

    move-result v3

    .line 1107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDisplayState(id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$physicalDisplayId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1109
    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1107
    invoke-static {v1, v2, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1111
    :try_start_72
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v4, v4, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v4}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmSurfaceControlProxy(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$token:Landroid/os/IBinder;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->setDisplayPowerMode(Landroid/os/IBinder;I)V

    .line 1112
    const-string v4, "DisplayPowerMode"

    invoke-static {v1, v2, v4, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V
    :try_end_84
    .catchall {:try_start_72 .. :try_end_84} :catchall_d1

    .line 1114
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1116
    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setCommittedState(I)V

    if-eqz v0, :cond_9c

    .line 1122
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayOffloadSession:Lcom/android/server/display/DisplayOffloadSessionImpl;

    if-eqz v0, :cond_d0

    .line 1123
    invoke-static {p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;->isSupportedOffloadState(I)Z

    move-result p1

    if-eqz p1, :cond_d0

    .line 1124
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayOffloadSession:Lcom/android/server/display/DisplayOffloadSessionImpl;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayOffloadSessionImpl;->startOffload()Z

    goto :goto_d0

    .line 1127
    :cond_9c
    invoke-static {p1}, Landroid/view/Display;->isSuspendedState(I)Z

    move-result v0

    if-eqz v0, :cond_d0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_d0

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fgetmSidekickInternal(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Landroid/hardware/sidekick/SidekickInternal;

    move-result-object v0

    if-eqz v0, :cond_d0

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fgetmSidekickActive(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Z

    move-result v0

    if-nez v0, :cond_d0

    .line 1129
    const-string v0, "SidekickInternal#startDisplayControl"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1132
    :try_start_ba
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fgetmSidekickInternal(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Landroid/hardware/sidekick/SidekickInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/sidekick/SidekickInternal;->startDisplayControl(I)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fputmSidekickActive(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Z)V
    :try_end_c7
    .catchall {:try_start_ba .. :try_end_c7} :catchall_cb

    .line 1134
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_d0

    :catchall_cb
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1135
    throw p0

    :cond_d0
    :goto_d0
    return-void

    :catchall_d1
    move-exception p0

    .line 1114
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1115
    throw p0
.end method

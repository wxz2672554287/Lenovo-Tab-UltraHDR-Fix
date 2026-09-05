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

    .line 966
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
    .registers 5

    .line 1162
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmCdsi(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    move-result-object v0

    if-nez v0, :cond_19

    .line 1163
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    const-class v1, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-static {v0, v1}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fputmCdsi(Lcom/android/server/display/LocalDisplayAdapter;Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;)V

    .line 1166
    :cond_19
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmCdsi(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    move-result-object v0

    if-nez v0, :cond_25

    goto/16 :goto_b4

    .line 1170
    :cond_25
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v0, v0, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1171
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getEvenDimmerTransitionPoint()F

    move-result v0

    .line 1170
    invoke-virtual {p0, v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->brightnessToBacklight(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->backlightToNits(F)F

    move-result v0

    .line 1173
    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->brightnessToBacklight(F)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->backlightToNits(F)F

    move-result p1

    .line 1174
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v1, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmCdsi(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    move-result-object v2

    .line 1175
    invoke-virtual {v2, v0}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->fetchEvenDimmerSpline(F)Landroid/util/Spline;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fputmNitsToEvenDimmerStrength(Lcom/android/server/display/LocalDisplayAdapter;Landroid/util/Spline;)V

    .line 1177
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmNitsToEvenDimmerStrength(Lcom/android/server/display/LocalDisplayAdapter;)Landroid/util/Spline;

    move-result-object v0

    if-nez v0, :cond_57

    goto :goto_b4

    .line 1182
    :cond_57
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmNitsToEvenDimmerStrength(Lcom/android/server/display/LocalDisplayAdapter;)Landroid/util/Spline;

    move-result-object v0

    .line 1183
    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p1

    .line 1182
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float v0, p1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6f

    const/4 v0, 0x1

    goto :goto_70

    :cond_6f
    const/4 v0, 0x0

    .line 1185
    :goto_70
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v1, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmEvenDimmerEnabled(Lcom/android/server/display/LocalDisplayAdapter;)Z

    move-result v1

    if-eq v1, v0, :cond_9f

    .line 1186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting Extra Dim; strength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_91

    .line 1187
    const-string v2, "enabled"

    goto :goto_93

    :cond_91
    const-string v2, "disabled"

    :goto_93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1186
    const-string v2, "LocalDisplayAdapter"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    :cond_9f
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v1, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmEvenDimmerStrength(Lcom/android/server/display/LocalDisplayAdapter;)I

    move-result v1

    if-ne v1, p1, :cond_b5

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v1, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmEvenDimmerEnabled(Lcom/android/server/display/LocalDisplayAdapter;)Z

    move-result v1

    if-eq v1, v0, :cond_b4

    goto :goto_b5

    :cond_b4
    :goto_b4
    return-void

    .line 1190
    :cond_b5
    :goto_b5
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v1, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v1, v0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fputmEvenDimmerEnabled(Lcom/android/server/display/LocalDisplayAdapter;Z)V

    .line 1191
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v1, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v1, p1}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fputmEvenDimmerStrength(Lcom/android/server/display/LocalDisplayAdapter;I)V

    .line 1192
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {p0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmCdsi(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->applyEvenDimmerColorChanges(ZI)V

    return-void
.end method

.method public final backlightToNits(F)F
    .registers 2

    .line 1139
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

    .line 1134
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

    if-eqz v1, :cond_2a

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_2a

    .line 1144
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fgetmBacklightAdapter(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->-$$Nest$fgetmUseSurfaceControlBrightness(Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fgetmBacklightAdapter(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->-$$Nest$fgetmForceSurfaceControl(Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_22
    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr p1, p2

    .line 1148
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_2c

    :cond_2a
    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 1152
    :goto_2c
    iget-object p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {p2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fgetmCurrentHdrSdrRatio(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)F

    move-result p2

    invoke-static {p2, p1}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result p2

    if-nez p2, :cond_50

    .line 1154
    iget-object p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object p2, p2, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {p2}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object p2

    monitor-enter p2

    .line 1155
    :try_start_41
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fputmCurrentHdrSdrRatio(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;F)V

    .line 1156
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$mupdateDeviceInfoLocked(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)V

    .line 1157
    monitor-exit p2

    return-void

    :catchall_4d
    move-exception p0

    monitor-exit p2
    :try_end_4f
    .catchall {:try_start_41 .. :try_end_4f} :catchall_4d

    throw p0

    :cond_50
    return-void
.end method

.method public run()V
    .registers 5

    .line 970
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$oldState:I

    .line 971
    invoke-static {v0}, Landroid/view/Display;->isSuspendedState(I)Z

    move-result v1

    if-nez v1, :cond_c

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$oldState:I

    if-nez v1, :cond_38

    .line 973
    :cond_c
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    invoke-static {v1}, Landroid/view/Display;->isSuspendedState(I)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 974
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    invoke-virtual {p0, v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayState(I)V

    .line 975
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    goto :goto_38

    .line 976
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

    goto :goto_58

    :cond_2f
    :goto_2f
    const/4 v0, 0x2

    .line 982
    invoke-virtual {p0, v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayState(I)V

    goto :goto_38

    :cond_34
    :goto_34
    const/4 v0, 0x3

    .line 978
    invoke-virtual {p0, v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayState(I)V

    .line 993
    :cond_38
    :goto_38
    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightnessChanged:Z

    if-eqz v1, :cond_51

    .line 994
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightnessState:F

    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$sdrBrightnessState:F

    invoke-virtual {p0, v1, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayBrightness(FF)V

    .line 995
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightnessState:F

    invoke-static {v1, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fputmBrightnessState(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;F)V

    .line 996
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$sdrBrightnessState:F

    invoke-static {v1, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fputmSdrBrightnessState(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;F)V

    .line 1000
    :cond_51
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    if-eq v1, v0, :cond_58

    .line 1001
    invoke-virtual {p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayState(I)V

    :cond_58
    :goto_58
    return-void
.end method

.method public final setCommittedState(I)V
    .registers 4

    .line 1071
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 1072
    :try_start_9
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v1, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fputmCommittedState(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;I)V

    .line 1073
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$mupdateDeviceInfoLocked(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)V

    .line 1074
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

    .line 1081
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_ad

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_ad

    .line 1091
    :cond_e
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

    .line 1096
    :try_start_3d
    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->brightnessToBacklight(F)F

    move-result v0

    .line 1097
    invoke-virtual {p0, p2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->brightnessToBacklight(F)F

    move-result v3

    .line 1099
    invoke-virtual {p0, v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->backlightToNits(F)F

    move-result v4

    .line 1100
    invoke-virtual {p0, v3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->backlightToNits(F)F

    move-result v5

    .line 1102
    iget-object v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v6, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v6, v5}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fputmCurrentSdrNits(Lcom/android/server/display/LocalDisplayAdapter;F)V

    .line 1103
    iget-object v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v6, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v6, v4}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fputmCurrentNits(Lcom/android/server/display/LocalDisplayAdapter;F)V

    .line 1105
    iget-object v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v6, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v6}, Lcom/android/server/display/DisplayAdapter;->getFeatureFlags()Lcom/android/server/display/feature/DisplayManagerFlags;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/display/feature/DisplayManagerFlags;->isEvenDimmerEnabled()Z

    move-result v6

    if-eqz v6, :cond_7b

    iget-object v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v6, v6, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    if-eqz v6, :cond_7b

    .line 1107
    invoke-virtual {v6}, Lcom/android/server/display/DisplayDeviceConfig;->isEvenDimmerAvailable()Z

    move-result v6

    if-eqz v6, :cond_7b

    .line 1108
    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->applyColorMatrixBasedDimming(F)V

    goto :goto_7b

    :catchall_79
    move-exception p0

    goto :goto_a9

    .line 1111
    :cond_7b
    :goto_7b
    iget-object v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v6}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fgetmBacklightAdapter(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;

    move-result-object v6

    invoke-virtual {v6, v3, v5, v0, v4}, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->setBacklight(FFFF)V

    .line 1112
    const-string v0, "ScreenBrightness"

    .line 1114
    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result p1

    .line 1112
    invoke-static {v1, v2, v0, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 1115
    const-string p1, "SdrScreenBrightness"

    .line 1117
    invoke-static {p2}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result p2

    .line 1115
    invoke-static {v1, v2, p1, p2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 1119
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-virtual {p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDeviceConfig;->hasSdrToHdrRatioSpline()Z

    move-result p1

    if-eqz p1, :cond_a5

    .line 1120
    invoke-virtual {p0, v4, v5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->handleHdrSdrNitsChanged(FF)V
    :try_end_a5
    .catchall {:try_start_3d .. :try_end_a5} :catchall_79

    .line 1124
    :cond_a5
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_a9
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1125
    throw p0

    :cond_ad
    :goto_ad
    return-void
.end method

.method public final setDisplayState(I)V
    .registers 9

    .line 1012
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 1013
    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getFeatureFlags()Lcom/android/server/display/feature/DisplayManagerFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDisplayOffloadEnabled()Z

    move-result v0

    const-wide/32 v1, 0x20000

    if-eqz v0, :cond_21

    .line 1018
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayOffloadSession:Lcom/android/server/display/DisplayOffloadSessionImpl;

    if-eqz v3, :cond_46

    .line 1019
    invoke-static {p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;->isSupportedOffloadState(I)Z

    move-result v3

    if-nez v3, :cond_46

    .line 1020
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayOffloadSession:Lcom/android/server/display/DisplayOffloadSessionImpl;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayOffloadSessionImpl;->stopOffload()V

    goto :goto_46

    .line 1023
    :cond_21
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fgetmSidekickActive(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 1024
    const-string v3, "SidekickInternal#endDisplayControl"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1027
    :try_start_2e
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fgetmSidekickInternal(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Landroid/hardware/sidekick/SidekickInternal;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/sidekick/SidekickInternal;->endDisplayControl()V
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_41

    .line 1029
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1031
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fputmSidekickActive(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Z)V

    goto :goto_46

    :catchall_41
    move-exception p0

    .line 1029
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1030
    throw p0

    .line 1035
    :cond_46
    :goto_46
    invoke-static {p1}, Lcom/android/server/display/DisplayAdapter;->getPowerModeForState(I)I

    move-result v3

    .line 1036
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDisplayState(id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$physicalDisplayId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1036
    invoke-static {v1, v2, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1040
    :try_start_72
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v4, v4, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v4}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmSurfaceControlProxy(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$token:Landroid/os/IBinder;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->setDisplayPowerMode(Landroid/os/IBinder;I)V

    .line 1041
    const-string v4, "DisplayPowerMode"

    invoke-static {v1, v2, v4, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V
    :try_end_84
    .catchall {:try_start_72 .. :try_end_84} :catchall_d1

    .line 1043
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1045
    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setCommittedState(I)V

    if-eqz v0, :cond_9c

    .line 1051
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayOffloadSession:Lcom/android/server/display/DisplayOffloadSessionImpl;

    if-eqz v0, :cond_d0

    .line 1052
    invoke-static {p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;->isSupportedOffloadState(I)Z

    move-result p1

    if-eqz p1, :cond_d0

    .line 1053
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayOffloadSession:Lcom/android/server/display/DisplayOffloadSessionImpl;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayOffloadSessionImpl;->startOffload()Z

    return-void

    .line 1056
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

    .line 1058
    const-string v0, "SidekickInternal#startDisplayControl"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1061
    :try_start_ba
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fgetmSidekickInternal(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Landroid/hardware/sidekick/SidekickInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/sidekick/SidekickInternal;->startDisplayControl(I)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fputmSidekickActive(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Z)V
    :try_end_c7
    .catchall {:try_start_ba .. :try_end_c7} :catchall_cb

    .line 1063
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_cb
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1064
    throw p0

    :cond_d0
    return-void

    :catchall_d1
    move-exception p0

    .line 1043
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1044
    throw p0
.end method

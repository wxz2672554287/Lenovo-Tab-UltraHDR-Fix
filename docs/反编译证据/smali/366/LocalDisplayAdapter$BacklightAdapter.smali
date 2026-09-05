.class public Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;
.super Ljava/lang/Object;
.source "LocalDisplayAdapter.java"


# instance fields
.field public final mBacklight:Lcom/android/server/lights/LogicalLight;

.field public final mDisplayToken:Landroid/os/IBinder;

.field public mForceSurfaceControl:Z

.field public final mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

.field public final mUseSurfaceControlBrightness:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmForceSurfaceControl(Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mForceSurfaceControl:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUseSurfaceControlBrightness(Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mUseSurfaceControlBrightness:Z

    return p0
.end method

.method public constructor <init>(Landroid/os/IBinder;ZLcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;)V
    .registers 5

    .line 1951
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1944
    iput-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mForceSurfaceControl:Z

    .line 1952
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mDisplayToken:Landroid/os/IBinder;

    .line 1953
    iput-object p3, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    .line 1956
    invoke-virtual {p3, p1}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->getDisplayBrightnessSupport(Landroid/os/IBinder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mUseSurfaceControlBrightness:Z

    if-nez p1, :cond_23

    if-eqz p2, :cond_23

    .line 1959
    const-class p1, Lcom/android/server/lights/LightsManager;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/lights/LightsManager;

    .line 1960
    invoke-virtual {p1, v0}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LogicalLight;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mBacklight:Lcom/android/server/lights/LogicalLight;

    return-void

    :cond_23
    const/4 p1, 0x0

    .line 1962
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mBacklight:Lcom/android/server/lights/LogicalLight;

    return-void
.end method


# virtual methods
.method public setBacklight(FFFF)V
    .registers 11

    .line 1968
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mUseSurfaceControlBrightness:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mForceSurfaceControl:Z

    if-eqz v0, :cond_9

    goto :goto_11

    .line 1976
    :cond_9
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mBacklight:Lcom/android/server/lights/LogicalLight;

    if-eqz p0, :cond_10

    .line 1977
    invoke-virtual {p0, p3}, Lcom/android/server/lights/LogicalLight;->setBrightness(F)V

    :cond_10
    return-void

    :cond_11
    :goto_11
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 1969
    invoke-static {p1, v0}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1971
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {p1, p0, p3}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->setDisplayBrightness(Landroid/os/IBinder;F)Z

    return-void

    .line 1973
    :cond_21
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mDisplayToken:Landroid/os/IBinder;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->setDisplayBrightness(Landroid/os/IBinder;FFFF)Z

    return-void
.end method

.method public setForceSurfaceControl(Z)V
    .registers 2

    .line 1982
    iput-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mForceSurfaceControl:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BacklightAdapter [useSurfaceControl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mUseSurfaceControlBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " (force_anyway? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mForceSurfaceControl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "), backlight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mBacklight:Lcom/android/server/lights/LogicalLight;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

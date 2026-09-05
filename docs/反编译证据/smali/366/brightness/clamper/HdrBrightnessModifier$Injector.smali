.class public Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;
.super Ljava/lang/Object;
.source "HdrBrightnessModifier.java"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public isLowPowerMode()Z
    .registers 3

    .line 421
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;->mContext:Landroid/content/Context;

    .line 422
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 421
    const-string/jumbo v0, "low_power"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    return v1
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;Landroid/net/Uri;)V
    .registers 5

    .line 412
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p2, v0, p1, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public registerHdrListener(Landroid/view/SurfaceControlHdrLayerInfoListener;Landroid/os/IBinder;)V
    .registers 3

    .line 404
    invoke-virtual {p1, p2}, Landroid/view/SurfaceControlHdrLayerInfoListener;->register(Landroid/os/IBinder;)V

    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .registers 2

    .line 417
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public unregisterHdrListener(Landroid/view/SurfaceControlHdrLayerInfoListener;Landroid/os/IBinder;)V
    .registers 3

    .line 408
    invoke-virtual {p1, p2}, Landroid/view/SurfaceControlHdrLayerInfoListener;->unregister(Landroid/os/IBinder;)V

    return-void
.end method

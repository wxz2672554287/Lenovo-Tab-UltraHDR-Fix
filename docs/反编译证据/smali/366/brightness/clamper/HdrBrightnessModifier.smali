.class public Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;
.super Ljava/lang/Object;
.source "HdrBrightnessModifier.java"

# interfaces
.implements Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;
.implements Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceDataListener;
.implements Lcom/android/server/display/brightness/clamper/BrightnessClamperController$StatefulModifier;


# instance fields
.field public mAmbientLux:F

.field public final mClamperChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

.field public final mContentObserver:Landroid/database/ContentObserver;

.field public mContentObserverRegistered:Z

.field public final mDebouncer:Ljava/lang/Runnable;

.field public mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

.field public final mHandler:Landroid/os/Handler;

.field public mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

.field public mHdrLayerSize:F

.field public final mHdrListener:Landroid/view/SurfaceControlHdrLayerInfoListener;

.field public final mInjector:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;

.field public mLowPowerMode:Z

.field public final mLowPowerModeSetting:Landroid/net/Uri;

.field public mMaxBrightness:F

.field public mMaxDesiredHdrRatio:F

.field public mMode:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

.field public mPendingMaxBrightness:F

.field public mPendingTransitionRate:F

.field public mRegisteredDisplayToken:Landroid/os/IBinder;

.field public mScreenSize:F

.field public mTransitionRate:F


# direct methods
.method public static synthetic $r8$lambda$WMdE1pH9-xTj-nE01JzyyBO_rH0(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$bPyCPpEw8kWC_aSHq_ULgOQp-kk(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->lambda$new$1(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$monHdrInfoChanged(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;FF)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->onHdrInfoChanged(FF)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monLowPowerModeChange(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->onLowPowerModeChange()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .registers 6

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;

    invoke-direct {p1, p2}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p3, p1, p4}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;-><init>(Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .registers 8

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string/jumbo v0, "low_power"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mLowPowerModeSetting:Landroid/net/Uri;

    .line 57
    new-instance v0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$1;-><init>(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)V

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrListener:Landroid/view/SurfaceControlHdrLayerInfoListener;

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mContentObserverRegistered:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 83
    iput v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMaxDesiredHdrRatio:F

    const/high16 v2, -0x40800000    # -1.0f

    .line 84
    iput v2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrLayerSize:F

    .line 86
    iput v2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mAmbientLux:F

    .line 88
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mLowPowerMode:Z

    .line 90
    sget-object v0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->NO_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMode:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    .line 92
    iput v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMaxBrightness:F

    .line 93
    iput v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mPendingMaxBrightness:F

    .line 95
    iput v2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mTransitionRate:F

    .line 96
    iput v2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mPendingTransitionRate:F

    .line 109
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHandler:Landroid/os/Handler;

    .line 110
    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mClamperChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    .line 111
    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mInjector:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;

    .line 112
    new-instance p2, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)V

    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mDebouncer:Ljava/lang/Runnable;

    .line 117
    new-instance p2, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$2;

    invoke-direct {p2, p0, p1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$2;-><init>(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mContentObserver:Landroid/database/ContentObserver;

    .line 123
    new-instance p2, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p4}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 2

    .line 113
    iget v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mPendingTransitionRate:F

    iput v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mTransitionRate:F

    .line 114
    iget v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mPendingMaxBrightness:F

    iput v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMaxBrightness:F

    .line 115
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mClamperChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    invoke-interface {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    return-void
.end method

.method private synthetic lambda$new$1(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .registers 2

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->onDisplayChanged(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Lcom/android/server/display/DisplayBrightnessState$Builder;)V
    .registers 6

    .line 130
    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    if-nez p1, :cond_5

    goto :goto_b

    .line 133
    :cond_5
    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMode:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    sget-object v0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->NO_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    if-ne p1, v0, :cond_c

    :goto_b
    return-void

    .line 136
    :cond_c
    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 137
    invoke-virtual {p2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getBrightness()F

    move-result v0

    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMaxDesiredHdrRatio:F

    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    iget-object v2, v2, Lcom/android/server/display/config/HdrBrightnessData;->sdrToHdrRatioSpline:Landroid/util/Spline;

    .line 136
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/display/DisplayDeviceConfig;->getHdrBrightnessFromSdr(FFLandroid/util/Spline;)F

    move-result p1

    .line 139
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMode:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMaxBrightness:F

    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->getMaxBrightness(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;FLcom/android/server/display/config/HdrBrightnessData;)F

    move-result v0

    .line 140
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 142
    invoke-virtual {p2, p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setHdrBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 143
    iget p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mTransitionRate:F

    invoke-virtual {p2, p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setCustomAnimationRate(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 144
    invoke-virtual {p2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getBrightnessReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(I)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 147
    iput p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mTransitionRate:F

    return-void
.end method

.method public applyStateChange(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;)V
    .registers 5

    .line 232
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMode:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    sget-object v1, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->NO_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    if-eq v0, v1, :cond_1a

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    if-eqz v1, :cond_1a

    .line 233
    iget v2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMaxDesiredHdrRatio:F

    iput v2, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxDesiredHdrRatio:F

    .line 234
    iget-object v2, v1, Lcom/android/server/display/config/HdrBrightnessData;->sdrToHdrRatioSpline:Landroid/util/Spline;

    iput-object v2, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mSdrHdrRatioSpline:Landroid/util/Spline;

    .line 235
    iget v2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMaxBrightness:F

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->getMaxBrightness(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;FLcom/android/server/display/config/HdrBrightnessData;)F

    move-result p0

    iput p0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxHdrBrightness:F

    :cond_1a
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 152
    const-string v0, "HdrBrightnessModifier:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHdrBrightnessData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mScreenSize:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMaxDesiredHdrRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMaxDesiredHdrRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHdrLayerSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrLayerSize:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLowPowerMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mLowPowerMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMode:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMaxBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMaxBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingMaxBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mPendingMaxBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTransitionRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mTransitionRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingTransitionRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mPendingTransitionRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHdrListener registered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mRegisteredDisplayToken:Landroid/os/IBinder;

    if-eqz v1, :cond_107

    const/4 v1, 0x1

    goto :goto_108

    :cond_107
    const/4 v1, 0x0

    :goto_108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mContentObserverRegistered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mContentObserverRegistered:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final findBrightnessLimit(Lcom/android/server/display/config/HdrBrightnessData;F)F
    .registers 7

    const/high16 p0, 0x3f800000    # 1.0f

    if-nez p1, :cond_5

    return p0

    :cond_5
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_c

    return p0

    .line 325
    :cond_c
    iget-object p1, p1, Lcom/android/server/display/config/HdrBrightnessData;->maxBrightnessLimits:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    :cond_19
    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 326
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v3, v2, p2

    if-lez v3, :cond_19

    cmpg-float v3, v2, v0

    if-gez v3, :cond_19

    .line 329
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    move v0, v2

    goto :goto_19

    :cond_43
    return p0
.end method

.method public final getMaxBrightness(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;FLcom/android/server/display/config/HdrBrightnessData;)F
    .registers 4

    .line 305
    sget-object p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->NBM_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    if-ne p1, p0, :cond_b

    .line 306
    iget p0, p3, Lcom/android/server/display/config/HdrBrightnessData;->hbmTransitionPoint:F

    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0

    .line 307
    :cond_b
    sget-object p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->HBM_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    if-ne p1, p0, :cond_10

    return p2

    :cond_10
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public final hasBrightnessLimits()Z
    .registers 1

    .line 241
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    if-eqz p0, :cond_e

    iget-object p0, p0, Lcom/android/server/display/config/HdrBrightnessData;->maxBrightnessLimits:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public onDisplayChanged(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .registers 5

    .line 199
    iget-object v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 200
    iget v1, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mWidth:I

    int-to-float v1, v1

    iget v2, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mScreenSize:F

    .line 201
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getHdrBrightnessData()Lcom/android/server/display/config/HdrBrightnessData;

    move-result-object v0

    if-nez v0, :cond_17

    .line 203
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->unregisterHdrListener()V

    goto :goto_1c

    .line 205
    :cond_17
    iget-object p1, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->registerHdrListener(Landroid/os/IBinder;)V

    :goto_1c
    if-eqz v0, :cond_27

    .line 207
    iget-boolean p1, v0, Lcom/android/server/display/config/HdrBrightnessData;->allowInLowPowerMode:Z

    if-eqz p1, :cond_23

    goto :goto_27

    .line 210
    :cond_23
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->registerContentObserver()V

    goto :goto_2a

    .line 208
    :cond_27
    :goto_27
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->unregisterContentObserver()V

    .line 213
    :goto_2a
    invoke-virtual {p0, v0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->recalculateMode(Lcom/android/server/display/config/HdrBrightnessData;)Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    move-result-object p1

    .line 215
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMode:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    if-ne v1, p1, :cond_3d

    sget-object v2, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->NO_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    if-eq v1, v2, :cond_3b

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    if-eq v0, v1, :cond_3b

    goto :goto_3d

    :cond_3b
    const/4 v1, 0x0

    goto :goto_3e

    :cond_3d
    :goto_3d
    const/4 v1, 0x1

    .line 217
    :goto_3e
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMode:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    .line 218
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    .line 219
    iget p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mAmbientLux:F

    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->findBrightnessLimit(Lcom/android/server/display/config/HdrBrightnessData;F)F

    move-result p1

    iput p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMaxBrightness:F

    if-eqz v1, :cond_55

    const/high16 p1, -0x40800000    # -1.0f

    .line 223
    iput p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mTransitionRate:F

    .line 224
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mClamperChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    invoke-interface {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    :cond_55
    return-void
.end method

.method public final onHdrInfoChanged(FF)V
    .registers 5

    .line 338
    iput p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrLayerSize:F

    .line 339
    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->recalculateMode(Lcom/android/server/display/config/HdrBrightnessData;)Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    move-result-object p1

    .line 341
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMode:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    if-ne v0, p1, :cond_1b

    sget-object v1, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->NO_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    if-eq v0, v1, :cond_19

    iget v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMaxDesiredHdrRatio:F

    .line 343
    invoke-static {v0, p2}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    .line 344
    :goto_1c
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMode:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    .line 345
    iput p2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMaxDesiredHdrRatio:F

    if-eqz v0, :cond_2b

    const/high16 p1, -0x40800000    # -1.0f

    .line 347
    iput p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mTransitionRate:F

    .line 348
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mClamperChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    invoke-interface {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    :cond_2b
    return-void
.end method

.method public final onLowPowerModeChange()V
    .registers 3

    .line 295
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mInjector:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;->isLowPowerMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mLowPowerMode:Z

    .line 296
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    invoke-virtual {p0, v0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->recalculateMode(Lcom/android/server/display/config/HdrBrightnessData;)Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    move-result-object v0

    .line 297
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMode:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    if-eq v0, v1, :cond_1d

    .line 298
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMode:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    const/high16 v0, -0x40800000    # -1.0f

    .line 299
    iput v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mTransitionRate:F

    .line 300
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mClamperChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    invoke-interface {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    :cond_1d
    return-void
.end method

.method public final recalculateMode(Lcom/android/server/display/config/HdrBrightnessData;)Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;
    .registers 4

    if-nez p1, :cond_5

    .line 272
    sget-object p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->NO_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    return-object p0

    .line 275
    :cond_5
    iget v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrLayerSize:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_10

    .line 276
    sget-object p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->NO_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    return-object p0

    .line 279
    :cond_10
    iget-boolean v1, p1, Lcom/android/server/display/config/HdrBrightnessData;->allowInLowPowerMode:Z

    if-nez v1, :cond_1b

    iget-boolean v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mLowPowerMode:Z

    if-eqz v1, :cond_1b

    .line 280
    sget-object p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->NO_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    return-object p0

    .line 283
    :cond_1b
    iget p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mScreenSize:F

    iget v1, p1, Lcom/android/server/display/config/HdrBrightnessData;->minimumHdrPercentOfScreenForNbm:F

    mul-float/2addr v1, p0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_27

    .line 284
    sget-object p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->NO_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    return-object p0

    .line 287
    :cond_27
    iget p1, p1, Lcom/android/server/display/config/HdrBrightnessData;->minimumHdrPercentOfScreenForHbm:F

    mul-float/2addr p0, p1

    cmpg-float p0, v0, p0

    if-gez p0, :cond_31

    .line 288
    sget-object p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->NBM_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    return-object p0

    .line 291
    :cond_31
    sget-object p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->HBM_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    return-object p0
.end method

.method public final registerContentObserver()V
    .registers 4

    .line 375
    iget-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mContentObserverRegistered:Z

    if-nez v0, :cond_18

    .line 376
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mInjector:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mContentObserver:Landroid/database/ContentObserver;

    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mLowPowerModeSetting:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;->registerContentObserver(Landroid/database/ContentObserver;Landroid/net/Uri;)V

    const/4 v0, 0x1

    .line 377
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mContentObserverRegistered:Z

    .line 378
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mInjector:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;->isLowPowerMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mLowPowerMode:Z

    :cond_18
    return-void
.end method

.method public final registerHdrListener(Landroid/os/IBinder;)V
    .registers 4

    .line 354
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mRegisteredDisplayToken:Landroid/os/IBinder;

    if-ne v0, p1, :cond_5

    goto :goto_13

    .line 357
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->unregisterHdrListener()V

    if-eqz p1, :cond_13

    .line 359
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mInjector:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrListener:Landroid/view/SurfaceControlHdrLayerInfoListener;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;->registerHdrListener(Landroid/view/SurfaceControlHdrLayerInfoListener;Landroid/os/IBinder;)V

    .line 360
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mRegisteredDisplayToken:Landroid/os/IBinder;

    :cond_13
    :goto_13
    return-void
.end method

.method public final scheduleMaxBrightnessUpdate(FLcom/android/server/display/config/HdrBrightnessData;)V
    .registers 5

    .line 245
    iget v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMaxBrightness:F

    cmpl-float v1, v0, p1

    if-nez v1, :cond_16

    .line 246
    iput v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mPendingMaxBrightness:F

    const/high16 p1, -0x40800000    # -1.0f

    .line 247
    iput p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mPendingTransitionRate:F

    .line 248
    iput p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mTransitionRate:F

    .line 249
    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mDebouncer:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    .line 250
    :cond_16
    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mPendingMaxBrightness:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_3d

    .line 251
    iput p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mPendingMaxBrightness:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_29

    .line 254
    iget-wide v0, p2, Lcom/android/server/display/config/HdrBrightnessData;->brightnessIncreaseDebounceMillis:J

    .line 255
    iget p1, p2, Lcom/android/server/display/config/HdrBrightnessData;->screenBrightnessRampIncrease:F

    iput p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mPendingTransitionRate:F

    goto :goto_2f

    .line 257
    :cond_29
    iget-wide v0, p2, Lcom/android/server/display/config/HdrBrightnessData;->brightnessDecreaseDebounceMillis:J

    .line 258
    iget p1, p2, Lcom/android/server/display/config/HdrBrightnessData;->screenBrightnessRampDecrease:F

    iput p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mPendingTransitionRate:F

    .line 261
    :goto_2f
    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mDebouncer:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 262
    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mDebouncer:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3d
    return-void
.end method

.method public setAmbientLux(F)V
    .registers 4

    .line 184
    iput p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mAmbientLux:F

    .line 185
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->hasBrightnessLimits()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 188
    :cond_9
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->findBrightnessLimit(Lcom/android/server/display/config/HdrBrightnessData;F)F

    move-result p1

    .line 189
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMode:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    sget-object v1, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->NO_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    if-ne v0, v1, :cond_18

    .line 190
    iput p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMaxBrightness:F

    return-void

    .line 192
    :cond_18
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->scheduleMaxBrightnessUpdate(FLcom/android/server/display/config/HdrBrightnessData;)V

    return-void
.end method

.method public shouldListenToLightSensor()Z
    .registers 1

    .line 178
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->hasBrightnessLimits()Z

    move-result p0

    return p0
.end method

.method public stop()V
    .registers 2

    .line 171
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->unregisterHdrListener()V

    .line 172
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final unregisterContentObserver()V
    .registers 3

    .line 384
    iget-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mContentObserverRegistered:Z

    if-eqz v0, :cond_10

    .line 385
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mInjector:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 386
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mContentObserverRegistered:Z

    .line 387
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mLowPowerMode:Z

    :cond_10
    return-void
.end method

.method public final unregisterHdrListener()V
    .registers 4

    .line 366
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mRegisteredDisplayToken:Landroid/os/IBinder;

    if-eqz v0, :cond_12

    .line 367
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mInjector:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;

    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrListener:Landroid/view/SurfaceControlHdrLayerInfoListener;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;->unregisterHdrListener(Landroid/view/SurfaceControlHdrLayerInfoListener;Landroid/os/IBinder;)V

    const/4 v0, 0x0

    .line 368
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mRegisteredDisplayToken:Landroid/os/IBinder;

    const/high16 v0, -0x40800000    # -1.0f

    .line 369
    iput v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrLayerSize:F

    :cond_12
    return-void
.end method

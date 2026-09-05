.class public final synthetic Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

.field public final synthetic f$1:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;

    invoke-static {v0, p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->$r8$lambda$bPyCPpEw8kWC_aSHq_ULgOQp-kk(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    return-void
.end method

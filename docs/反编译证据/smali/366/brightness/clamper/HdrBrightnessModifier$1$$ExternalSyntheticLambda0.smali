.class public final synthetic Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$1;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$1;ZIIF)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$1;

    iput-boolean p2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$1$$ExternalSyntheticLambda0;->f$1:Z

    iput p3, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$1$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$1$$ExternalSyntheticLambda0;->f$3:I

    iput p5, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$1$$ExternalSyntheticLambda0;->f$4:F

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$1;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$1$$ExternalSyntheticLambda0;->f$1:Z

    iget v2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$1$$ExternalSyntheticLambda0;->f$2:I

    iget v3, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$1$$ExternalSyntheticLambda0;->f$3:I

    iget p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$1$$ExternalSyntheticLambda0;->f$4:F

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$1;->$r8$lambda$tA6jNs_7pjoXYUSOu7koQISLea8(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$1;ZIIF)V

    return-void
.end method

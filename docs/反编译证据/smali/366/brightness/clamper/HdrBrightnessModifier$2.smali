.class public Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$2;
.super Landroid/database/ContentObserver;
.source "HdrBrightnessModifier.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;


# direct methods
.method public constructor <init>(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;Landroid/os/Handler;)V
    .registers 3

    .line 117
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$2;->this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 120
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$2;->this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

    invoke-static {p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->-$$Nest$monLowPowerModeChange(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)V

    return-void
.end method

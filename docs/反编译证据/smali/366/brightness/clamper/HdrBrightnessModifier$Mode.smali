.class final enum Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;
.super Ljava/lang/Enum;
.source "HdrBrightnessModifier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

.field public static final enum HBM_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

.field public static final enum NBM_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

.field public static final enum NO_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;


# direct methods
.method public static synthetic $values()[Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;
    .registers 3

    .line 391
    sget-object v0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->NO_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    sget-object v1, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->NBM_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    sget-object v2, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->HBM_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    filled-new-array {v0, v1, v2}, [Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 392
    new-instance v0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    const-string v1, "NO_HDR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->NO_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    new-instance v0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    const-string v1, "NBM_HDR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->NBM_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    new-instance v0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    const-string v1, "HBM_HDR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->HBM_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    .line 391
    invoke-static {}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->$values()[Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->$VALUES:[Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 391
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;
    .registers 2

    .line 391
    const-class v0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    return-object p0
.end method

.method public static values()[Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;
    .registers 1

    .line 391
    sget-object v0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->$VALUES:[Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    invoke-virtual {v0}, [Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    return-object v0
.end method

.class public final enum Lcom/mediatek/internal/telephony/MtkModemStatusTracker$Rat;
.super Ljava/lang/Enum;
.source "MtkModemStatusTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkModemStatusTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Rat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/internal/telephony/MtkModemStatusTracker$Rat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/internal/telephony/MtkModemStatusTracker$Rat;

.field public static final enum RADIO_4G:Lcom/mediatek/internal/telephony/MtkModemStatusTracker$Rat;

.field public static final enum RADIO_5G:Lcom/mediatek/internal/telephony/MtkModemStatusTracker$Rat;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 74
    new-instance v0, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$Rat;

    const-string v1, "RADIO_4G"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$Rat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$Rat;->RADIO_4G:Lcom/mediatek/internal/telephony/MtkModemStatusTracker$Rat;

    .line 75
    new-instance v1, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$Rat;

    const-string v3, "RADIO_5G"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$Rat;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$Rat;->RADIO_5G:Lcom/mediatek/internal/telephony/MtkModemStatusTracker$Rat;

    .line 73
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/mediatek/internal/telephony/MtkModemStatusTracker$Rat;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$Rat;->$VALUES:[Lcom/mediatek/internal/telephony/MtkModemStatusTracker$Rat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/MtkModemStatusTracker$Rat;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 73
    const-class v0, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$Rat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$Rat;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/internal/telephony/MtkModemStatusTracker$Rat;
    .registers 1

    .line 73
    sget-object v0, Lcom/mediatek/internal/telephony/MtkModemStatusTracker$Rat;->$VALUES:[Lcom/mediatek/internal/telephony/MtkModemStatusTracker$Rat;

    invoke-virtual {v0}, [Lcom/mediatek/internal/telephony/MtkModemStatusTracker$Rat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/internal/telephony/MtkModemStatusTracker$Rat;

    return-object v0
.end method

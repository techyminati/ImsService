.class public final enum Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;
.super Ljava/lang/Enum;
.source "IccServiceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/uicc/IccServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IccServiceStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

.field public static final enum ACTIVATED:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

.field public static final enum INACTIVATED:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

.field public static final enum NOT_EXIST_IN_SIM:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

.field public static final enum NOT_EXIST_IN_USIM:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

.field public static final enum UNKNOWN:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 42
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    const-string v1, "NOT_EXIST_IN_SIM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->NOT_EXIST_IN_SIM:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    .line 43
    new-instance v1, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    const-string v3, "NOT_EXIST_IN_USIM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->NOT_EXIST_IN_USIM:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    .line 44
    new-instance v3, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    const-string v5, "ACTIVATED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->ACTIVATED:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    .line 45
    new-instance v5, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    const-string v7, "INACTIVATED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->INACTIVATED:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    .line 46
    new-instance v7, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    const-string v9, "UNKNOWN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->UNKNOWN:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    .line 41
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->$VALUES:[Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 41
    const-class v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;
    .registers 1

    .line 41
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->$VALUES:[Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    invoke-virtual {v0}, [Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    return-object v0
.end method

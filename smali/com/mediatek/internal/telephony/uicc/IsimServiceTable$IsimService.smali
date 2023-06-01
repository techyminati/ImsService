.class public final enum Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;
.super Ljava/lang/Enum;
.source "IsimServiceTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/uicc/IsimServiceTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IsimService"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

.field public static final enum COMMUNICATION_CONTROL_BY_ISIM:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

.field public static final enum GBA:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

.field public static final enum GBA_LOCAL_KEY_ESTABLISHMENT:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

.field public static final enum HTTP_DIGEST:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

.field public static final enum PCSCF_ADDRESS:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

.field public static final enum PCSCF_DISCOVERY:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

.field public static final enum SMS:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

.field public static final enum SMSR:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

.field public static final enum SM_OVER_IP:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

.field public static final enum UICC_ACCESS_IMS:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 26
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    const-string v1, "PCSCF_ADDRESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->PCSCF_ADDRESS:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    .line 28
    new-instance v1, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    const-string v3, "GBA"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->GBA:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    .line 30
    new-instance v3, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    const-string v5, "HTTP_DIGEST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->HTTP_DIGEST:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    .line 31
    new-instance v5, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    const-string v7, "GBA_LOCAL_KEY_ESTABLISHMENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->GBA_LOCAL_KEY_ESTABLISHMENT:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    .line 32
    new-instance v7, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    const-string v9, "PCSCF_DISCOVERY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->PCSCF_DISCOVERY:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    .line 33
    new-instance v9, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    const-string v11, "SMS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->SMS:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    .line 34
    new-instance v11, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    const-string v13, "SMSR"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->SMSR:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    .line 35
    new-instance v13, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    const-string v15, "SM_OVER_IP"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->SM_OVER_IP:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    .line 36
    new-instance v15, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    const-string v14, "COMMUNICATION_CONTROL_BY_ISIM"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->COMMUNICATION_CONTROL_BY_ISIM:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    .line 37
    new-instance v14, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    const-string v12, "UICC_ACCESS_IMS"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->UICC_ACCESS_IMS:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    .line 25
    const/16 v12, 0xa

    new-array v12, v12, [Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    sput-object v12, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->$VALUES:[Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;
    .registers 1

    .line 25
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->$VALUES:[Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    invoke-virtual {v0}, [Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    return-object v0
.end method

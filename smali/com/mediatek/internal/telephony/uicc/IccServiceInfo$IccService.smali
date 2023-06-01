.class public final enum Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;
.super Ljava/lang/Enum;
.source "IccServiceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/uicc/IccServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IccService"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

.field public static final enum CFIS:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

.field public static final enum CHV1_DISABLE_FUNCTION:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

.field public static final enum EPLMN:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

.field public static final enum FDN:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

.field public static final enum MWIS:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

.field public static final enum OPL:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

.field public static final enum OPLMNwACT:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

.field public static final enum PLMNsel:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

.field public static final enum PNN:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

.field public static final enum SMSP:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

.field public static final enum SPDI:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

.field public static final enum SPN:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

.field public static final enum UNSUPPORTED_SERVICE:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 50
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    const-string v1, "CHV1_DISABLE_FUNCTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->CHV1_DISABLE_FUNCTION:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    .line 51
    new-instance v1, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    const-string v3, "SPN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->SPN:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    .line 52
    new-instance v3, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    const-string v5, "PNN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->PNN:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    .line 53
    new-instance v5, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    const-string v7, "OPL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->OPL:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    .line 54
    new-instance v7, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    const-string v9, "MWIS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->MWIS:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    .line 55
    new-instance v9, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    const-string v11, "CFIS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->CFIS:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    .line 56
    new-instance v11, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    const-string v13, "SPDI"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->SPDI:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    .line 57
    new-instance v13, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    const-string v15, "EPLMN"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->EPLMN:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    .line 58
    new-instance v15, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    const-string v14, "SMSP"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->SMSP:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    .line 59
    new-instance v14, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    const-string v12, "FDN"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->FDN:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    .line 61
    new-instance v12, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    const-string v10, "PLMNsel"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->PLMNsel:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    .line 62
    new-instance v10, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    const-string v8, "OPLMNwACT"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->OPLMNwACT:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    .line 64
    new-instance v8, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    const-string v6, "UNSUPPORTED_SERVICE"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->UNSUPPORTED_SERVICE:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    .line 49
    const/16 v6, 0xd

    new-array v6, v6, [Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    aput-object v0, v6, v2

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    aput-object v8, v6, v4

    sput-object v6, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->$VALUES:[Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 49
    const-class v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;
    .registers 1

    .line 49
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->$VALUES:[Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    invoke-virtual {v0}, [Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .registers 4

    .line 67
    const/4 v0, -0x1

    .line 68
    .local v0, "nIndex":I
    sget-object v1, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$1;->$SwitchMap$com$mediatek$internal$telephony$uicc$IccServiceInfo$IccService:[I

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2e

    goto :goto_2c

    .line 108
    :pswitch_d
    const/16 v0, 0xa

    .line 109
    goto :goto_2c

    .line 104
    :pswitch_10
    const/16 v0, 0xb

    .line 105
    goto :goto_2c

    .line 101
    :pswitch_13
    const/16 v0, 0xa

    .line 102
    goto :goto_2c

    .line 97
    :pswitch_16
    const/16 v0, 0x9

    .line 98
    goto :goto_2c

    .line 94
    :pswitch_19
    const/16 v0, 0x8

    .line 95
    goto :goto_2c

    .line 91
    :pswitch_1c
    const/4 v0, 0x7

    .line 92
    goto :goto_2c

    .line 88
    :pswitch_1e
    const/4 v0, 0x6

    .line 89
    goto :goto_2c

    .line 85
    :pswitch_20
    const/4 v0, 0x5

    .line 86
    goto :goto_2c

    .line 82
    :pswitch_22
    const/4 v0, 0x4

    .line 83
    goto :goto_2c

    .line 79
    :pswitch_24
    const/4 v0, 0x3

    .line 80
    goto :goto_2c

    .line 76
    :pswitch_26
    const/4 v0, 0x2

    .line 77
    goto :goto_2c

    .line 73
    :pswitch_28
    const/4 v0, 0x1

    .line 74
    goto :goto_2c

    .line 70
    :pswitch_2a
    const/4 v0, 0x0

    .line 71
    nop

    .line 113
    :goto_2c
    return v0

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_28
        :pswitch_26
        :pswitch_24
        :pswitch_22
        :pswitch_20
        :pswitch_1e
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

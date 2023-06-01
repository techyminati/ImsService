.class public final enum Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;
.super Ljava/lang/Enum;
.source "MtkSuppServContants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkSuppServContants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CUSTOMIZATION_ITEM"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

.field public static final enum ENABLE_XCAP_HTTP_RESPONSE_409:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

.field public static final enum GSM_UT_SUPPORT:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

.field public static final enum IMS_NW_CW:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

.field public static final enum NEED_CHECK_DATA_ENABLE:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

.field public static final enum NEED_CHECK_DATA_ROAMING:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

.field public static final enum NEED_CHECK_IMS_WHEN_ROAMING:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

.field public static final enum NOT_SUPPORT_CALL_IDENTITY:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

.field public static final enum NOT_SUPPORT_OCB:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

.field public static final enum NOT_SUPPORT_WFC_UT:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

.field public static final enum NOT_SUPPORT_XCAP:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

.field public static final enum QUERY_CFU_AGAIN_AFTER_SET:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

.field public static final enum RE_REGISTER_FOR_CF:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

.field public static final enum SUPPORT_SAVE_CF_NUMBER:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

.field public static final enum TBCLIR:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

.field public static final enum TRANSFER_XCAP_404:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;


# direct methods
.method static constructor <clinit>()V
    .registers 18

    .line 45
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    const-string v1, "GSM_UT_SUPPORT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->GSM_UT_SUPPORT:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    .line 46
    new-instance v1, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    const-string v3, "TBCLIR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->TBCLIR:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    .line 47
    new-instance v3, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    const-string v5, "IMS_NW_CW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->IMS_NW_CW:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    .line 48
    new-instance v5, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    const-string v7, "NOT_SUPPORT_XCAP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->NOT_SUPPORT_XCAP:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    .line 49
    new-instance v7, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    const-string v9, "NOT_SUPPORT_OCB"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->NOT_SUPPORT_OCB:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    .line 50
    new-instance v9, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    const-string v11, "ENABLE_XCAP_HTTP_RESPONSE_409"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->ENABLE_XCAP_HTTP_RESPONSE_409:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    .line 51
    new-instance v11, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    const-string v13, "TRANSFER_XCAP_404"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->TRANSFER_XCAP_404:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    .line 52
    new-instance v13, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    const-string v15, "NOT_SUPPORT_WFC_UT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->NOT_SUPPORT_WFC_UT:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    .line 53
    new-instance v15, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    const-string v14, "NOT_SUPPORT_CALL_IDENTITY"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->NOT_SUPPORT_CALL_IDENTITY:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    .line 54
    new-instance v14, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    const-string v12, "RE_REGISTER_FOR_CF"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->RE_REGISTER_FOR_CF:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    .line 55
    new-instance v12, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    const-string v10, "SUPPORT_SAVE_CF_NUMBER"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->SUPPORT_SAVE_CF_NUMBER:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    .line 56
    new-instance v10, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    const-string v8, "QUERY_CFU_AGAIN_AFTER_SET"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->QUERY_CFU_AGAIN_AFTER_SET:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    .line 57
    new-instance v8, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    const-string v6, "NEED_CHECK_DATA_ENABLE"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->NEED_CHECK_DATA_ENABLE:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    .line 58
    new-instance v6, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    const-string v4, "NEED_CHECK_DATA_ROAMING"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->NEED_CHECK_DATA_ROAMING:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    .line 59
    new-instance v4, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    const-string v2, "NEED_CHECK_IMS_WHEN_ROAMING"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->NEED_CHECK_IMS_WHEN_ROAMING:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    .line 44
    const/16 v2, 0xf

    new-array v2, v2, [Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    aput-object v4, v2, v6

    sput-object v2, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->$VALUES:[Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 44
    const-class v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;
    .registers 1

    .line 44
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->$VALUES:[Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    invoke-virtual {v0}, [Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    return-object v0
.end method

.class public Lcom/mediatek/internal/telephony/MtkSuppServContants;
.super Ljava/lang/Object;
.source "MtkSuppServContants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;
    }
.end annotation


# static fields
.field public static final SYS_PROP_BOOL_CONFIG:Ljava/lang/String; = "persist.vendor.ss.cfg.boolconfig"

.field public static final SYS_PROP_BOOL_VALUE:Ljava/lang/String; = "persist.vendor.ss.cfg.boolvalue"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;)Ljava/lang/String;
    .registers 3
    .param p0, "item"    # Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    .line 63
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$1;->$SwitchMap$com$mediatek$internal$telephony$MtkSuppServContants$CUSTOMIZATION_ITEM:[I

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3c

    .line 95
    const-string v0, "UNKNOWN_ITEM"

    return-object v0

    .line 93
    :pswitch_e
    const-string v0, "NEED_CHECK_IMS_WHEN_ROAMING"

    return-object v0

    .line 91
    :pswitch_11
    const-string v0, "NEED_CHECK_DATA_ROAMING"

    return-object v0

    .line 89
    :pswitch_14
    const-string v0, "NEED_CHECK_DATA_ENABLE"

    return-object v0

    .line 87
    :pswitch_17
    const-string v0, "NOT_SUPPORT_WFC_UT"

    return-object v0

    .line 85
    :pswitch_1a
    const-string v0, "NOT_SUPPORT_OCB"

    return-object v0

    .line 83
    :pswitch_1d
    const-string v0, "QUERY_CFU_AGAIN_AFTER_SET"

    return-object v0

    .line 81
    :pswitch_20
    const-string v0, "SUPPORT_SAVE_CF_NUMBER"

    return-object v0

    .line 79
    :pswitch_23
    const-string v0, "RE_REGISTER_FOR_CF"

    return-object v0

    .line 77
    :pswitch_26
    const-string v0, "NOT_SUPPORT_CALL_IDENTITY"

    return-object v0

    .line 75
    :pswitch_29
    const-string v0, "TRANSFER_XCAP_404"

    return-object v0

    .line 73
    :pswitch_2c
    const-string v0, "ENABLE_XCAP_HTTP_RESPONSE_409"

    return-object v0

    .line 71
    :pswitch_2f
    const-string v0, "IMS_NW_CW"

    return-object v0

    .line 69
    :pswitch_32
    const-string v0, "TBCLIR"

    return-object v0

    .line 67
    :pswitch_35
    const-string v0, "NOT_SUPPORT_XCAP"

    return-object v0

    .line 65
    :pswitch_38
    const-string v0, "GSM_UT_SUPPORT"

    return-object v0

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method

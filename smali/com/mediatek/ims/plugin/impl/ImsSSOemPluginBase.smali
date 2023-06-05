.class public Lcom/mediatek/ims/plugin/impl/ImsSSOemPluginBase;
.super Ljava/lang/Object;
.source "ImsSSOemPluginBase.java"

# interfaces
.implements Lcom/mediatek/ims/plugin/ImsSSOemPlugin;


# static fields
.field private static final DBG:Z = true

.field public static final ERROR_MSG_PROP_PREFIX:Ljava/lang/String; = "vendor.gsm.radio.ss.errormsg."

.field private static final TAG:Ljava/lang/String; = "ImsSSOemPluginBase"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/mediatek/ims/plugin/impl/ImsSSOemPluginBase;->mContext:Landroid/content/Context;

    .line 65
    return-void
.end method


# virtual methods
.method public commandExceptionToReason(Lcom/android/internal/telephony/CommandException;I)Landroid/telephony/ims/ImsReasonInfo;
    .locals 6
    .param p1, "commandException"    # Lcom/android/internal/telephony/CommandException;
    .param p2, "phoneId"    # I

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "err":Lcom/android/internal/telephony/CommandException$Error;
    const/4 v1, 0x0

    .line 71
    .local v1, "reason":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "commandException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsSSOemPluginBase"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_2:Lcom/android/internal/telephony/CommandException$Error;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 85
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const v4, 0xf006

    invoke-direct {v2, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v1, v2

    goto/16 :goto_0

    .line 86
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_3:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_1

    .line 87
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const v4, 0xf007

    invoke-direct {v2, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v1, v2

    goto/16 :goto_0

    .line 88
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_4:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_2

    .line 89
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const v4, 0xf008

    invoke-direct {v2, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v1, v2

    goto/16 :goto_0

    .line 90
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_25:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_3

    .line 91
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const v4, 0xf009

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_25:Lcom/android/internal/telephony/CommandException$Error;

    .line 92
    invoke-virtual {p0, v5, p2}, Lcom/mediatek/ims/plugin/impl/ImsSSOemPluginBase;->getXCAPErrorMessageFromSysProp(Lcom/android/internal/telephony/CommandException$Error;I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v3, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v1, v2

    goto :goto_0

    .line 93
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_7:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_4

    .line 94
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const v4, 0xf00a

    invoke-direct {v2, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v1, v2

    goto :goto_0

    .line 95
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_5

    .line 96
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v4, 0x321

    invoke-direct {v2, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v1, v2

    goto :goto_0

    .line 97
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_6

    .line 98
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v4, 0x322

    invoke-direct {v2, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v1, v2

    goto :goto_0

    .line 99
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_7

    .line 100
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v4, 0x335

    invoke-direct {v2, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v1, v2

    goto :goto_0

    .line 101
    :cond_7
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_8

    .line 102
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v4, 0xf1

    invoke-direct {v2, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v1, v2

    goto :goto_0

    .line 104
    :cond_8
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v4, 0x324

    invoke-direct {v2, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v1, v2

    .line 106
    :goto_0
    return-object v1
.end method

.method public getVolteSubDisableConstant()I
    .locals 1

    .line 126
    const/4 v0, 0x2

    return v0
.end method

.method public getVolteSubEnableConstant()I
    .locals 1

    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public getVolteSubUnknownConstant()I
    .locals 1

    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public getVolteSubscriptionKey()Ljava/lang/String;
    .locals 1

    .line 114
    const-string v0, "volte_subscription"

    return-object v0
.end method

.method public getXCAPErrorMessageFromSysProp(Lcom/android/internal/telephony/CommandException$Error;I)Ljava/lang/String;
    .locals 11
    .param p1, "error"    # Lcom/android/internal/telephony/CommandException$Error;
    .param p2, "phondId"    # I

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vendor.gsm.radio.ss.errormsg."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "propNamePrefix":Ljava/lang/String;
    const-string v1, ""

    .line 133
    .local v1, "fullErrorMsg":Ljava/lang/String;
    const/4 v2, 0x0

    .line 135
    .local v2, "errorMsg":Ljava/lang/String;
    const/4 v3, 0x0

    .line 136
    .local v3, "idx":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, "propName":Ljava/lang/String;
    const-string v6, ""

    .line 139
    .local v6, "propValue":Ljava/lang/String;
    const-string v7, ""

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 142
    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 144
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 146
    add-int/lit8 v3, v3, 0x1

    .line 147
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 148
    invoke-static {v4, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 151
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fullErrorMsg: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "ImsSSOemPluginBase"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v5, ""

    .line 154
    .local v5, "errorCode":Ljava/lang/String;
    sget-object v8, Lcom/mediatek/ims/plugin/impl/ImsSSOemPluginBase$1;->$SwitchMap$com$android$internal$telephony$CommandException$Error:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v9

    aget v8, v8, v9

    const-string v9, "errorMsg: "

    const/4 v10, 0x1

    if-eq v8, v10, :cond_1

    .line 159
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-object v2

    .line 156
    :cond_1
    const-string v5, "409"

    .line 157
    nop

    .line 163
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 164
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-object v2

    .line 168
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v10

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 169
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-object v2
.end method

.method public getXcapQueryCarrierConfigKey()Ljava/lang/String;
    .locals 1

    .line 110
    const-string v0, "mtk_carrier_ss_xcap_query"

    return-object v0
.end method

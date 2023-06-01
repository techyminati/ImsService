.class public Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;
.super Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
.source "MtkCdmaInboundSmsHandler.java"


# static fields
.field private static final ENG:Z

.field private static final RESULT_SMS_ACCEPT_BY_PPL:I = 0x1

.field private static final RESULT_SMS_REJECT_BY_PPL:I = 0x0

.field private static final TELESERVICE_REG_SMS_CT:I = 0xfded

.field private static final VDBG:Z = false

.field private static final WAKE_LOCK_TIMEOUT:I = 0x1f4


# instance fields
.field private mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 89
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;->ENG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p3, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p4, "smsDispatcher"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .line 105
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)V

    .line 87
    const-string v0, "MtkCdmaInboundSmsHandler"

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;->mTag:Ljava/lang/String;

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MtkCdmaInboundSmsHandler-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;->mTag:Ljava/lang/String;

    .line 107
    return-void
.end method

.method private checkPplPermission([[BLjava/lang/String;)I
    .registers 6
    .param p1, "pdus"    # [[B
    .param p2, "format"    # Ljava/lang/String;

    .line 162
    const/4 v0, 0x1

    .line 163
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;->is3gpp2()Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "3gpp2"

    invoke-virtual {p2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1d

    .line 164
    :cond_f
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;->is3gpp2()Z

    move-result v1

    if-nez v1, :cond_2c

    const-string v1, "3gpp"

    invoke-virtual {p2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2c

    .line 165
    :cond_1d
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-static {p1, p2, v1, v2}, Lcom/mediatek/internal/telephony/util/MtkSmsCommonUtil;->phonePrivacyLockCheck([[BLjava/lang/String;Landroid/content/Context;I)I

    move-result v1

    if-eqz v1, :cond_2c

    .line 167
    const/4 v0, 0x0

    .line 170
    :cond_2c
    return v0
.end method

.method private handleAutoRegMessage([B)V
    .registers 3
    .param p1, "pdu"    # [B

    .line 153
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkProxyController;

    .line 154
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->getDeviceRegisterController()Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;->handleAutoRegMessage([B)V

    .line 155
    return-void
.end method


# virtual methods
.method protected addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;Z)I
    .registers 5
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "deDup"    # Z

    .line 119
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;

    .line 120
    .local v0, "t":Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->setSubId(I)V

    .line 121
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;Z)I

    move-result v1

    return v1
.end method

.method protected deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V
    .registers 6
    .param p1, "deleteWhere"    # Ljava/lang/String;
    .param p2, "deleteWhereArgs"    # [Ljava/lang/String;
    .param p3, "deleteType"    # I

    .line 127
    const/4 v0, 0x1

    if-ne p3, v0, :cond_6

    sget-object v0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;->sRawUriPermanentDelete:Landroid/net/Uri;

    goto :goto_8

    :cond_6
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;->sRawUri:Landroid/net/Uri;

    .line 128
    .local v0, "uri":Landroid/net/Uri;
    :goto_8
    if-nez p1, :cond_12

    if-nez p2, :cond_12

    .line 131
    const-string v1, "No rows need be deleted from raw table!"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 132
    return-void

    .line 134
    :cond_12
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 135
    return-void
.end method

.method public dispatchIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Landroid/os/UserHandle;I)V
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "appOp"    # Ljava/lang/String;
    .param p4, "opts"    # Landroid/os/Bundle;
    .param p5, "resultReceiver"    # Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
    .param p6, "user"    # Landroid/os/UserHandle;
    .param p7, "subId"    # I

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "rTime"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 114
    invoke-super/range {p0 .. p7}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Landroid/os/UserHandle;I)V

    .line 115
    return-void
.end method

.method protected dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;I)I
    .registers 7
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p2, "smsSource"    # I

    .line 139
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 140
    .local v0, "sms":Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->newMtkSmsMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;

    move-result-object v0

    .line 141
    invoke-super {p0, v0, p2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;I)I

    move-result v1

    .line 142
    .local v1, "ret":I
    const/4 v2, 0x4

    if-ne v1, v2, :cond_26

    .line 143
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v2

    .line 144
    .local v2, "teleService":I
    const v3, 0xfded

    if-ne v2, v3, :cond_26

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v3

    if-eqz v3, :cond_26

    .line 145
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;->handleAutoRegMessage([B)V

    .line 146
    const/4 v3, 0x1

    return v3

    .line 149
    .end local v2    # "teleService":I
    :cond_26
    return v1
.end method

.method protected log(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 225
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;->mTag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    return-void
.end method

.method protected onCheckIfStopProcessMessagePart([[BLjava/lang/String;Lcom/android/internal/telephony/InboundSmsTracker;)Z
    .registers 8
    .param p1, "pdus"    # [[B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .line 191
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;->checkPplPermission([[BLjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    .line 192
    const-string v0, "The message was blocked by Ppl! don\'t prompt to user"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p3}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 195
    return v1

    .line 197
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method protected onModifyQueryWhereArgs([Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p1, "whereArgs"    # [Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "subId":Ljava/lang/String;
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v3, p1, v2

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aget-object v3, p1, v2

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aget-object v3, p1, v2

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v0, v1, v2

    return-object v1
.end method

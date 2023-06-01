.class public Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;
.super Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
.source "MtkGsmInboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$MtkWaitingState;,
        Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$MtkDeliveringState;,
        Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$MtkIdleState;,
        Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$MtkStartupState;,
        Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$MtkDefaultState;
    }
.end annotation


# static fields
.field private static final EVENT_SMS_EINFO_EXTENSIONS:I = 0x2009

.field private static final RESULT_SMS_ACCEPT_BY_PPL:I = 0x1

.field private static final RESULT_SMS_REJECT_BY_PPL:I = 0x0

.field private static final TN_VALIDATION_FAILED:I = 0x2

.field private static final TN_VALIDATION_NOTHING:I = 0x0

.field private static final TN_VALIDATION_PASSED:I = 0x1


# instance fields
.field private mPAssertedIdentity:I

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p3, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 130
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;)V

    .line 113
    const-string v0, "MtkGsmInboundSmsHandler"

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mTag:Ljava/lang/String;

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mPAssertedIdentity:I

    .line 133
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$MtkDefaultState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$MtkDefaultState;-><init>(Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$1;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    .line 134
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$MtkStartupState;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$MtkStartupState;-><init>(Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$1;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    .line 135
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$MtkIdleState;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$MtkIdleState;-><init>(Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$1;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    .line 136
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$MtkDeliveringState;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$MtkDeliveringState;-><init>(Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$1;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    .line 137
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$MtkWaitingState;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$MtkWaitingState;-><init>(Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$1;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    .line 139
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->addState(Lcom/android/internal/telephony/State;)V

    .line 140
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v0, v2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 141
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v0, v2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 142
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v0, v2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 143
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    invoke-virtual {p0, v0, v2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 145
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->setInitialState(Lcom/android/internal/telephony/State;)V

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MtkGsmInboundSmsHandler-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mTag:Ljava/lang/String;

    .line 148
    const-string v0, "created InboundSmsHandler from MtkGsmInboundSmsHandler"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 150
    iget-object v0, p3, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 151
    .local v0, "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x2009

    invoke-virtual {v0, v2, v3, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForSmsInfoExt(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 152
    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;Landroid/os/AsyncResult;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 112
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->handleSmsEInfoExtensions(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private checkPplPermission([[BLjava/lang/String;)I
    .registers 6
    .param p1, "pdus"    # [[B
    .param p2, "format"    # Ljava/lang/String;

    .line 336
    const/4 v0, 0x1

    .line 337
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->is3gpp2()Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "3gpp2"

    invoke-virtual {p2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1d

    .line 338
    :cond_f
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->is3gpp2()Z

    move-result v1

    if-nez v1, :cond_2c

    const-string v1, "3gpp"

    invoke-virtual {p2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2c

    .line 339
    :cond_1d
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-static {p1, p2, v1, v2}, Lcom/mediatek/internal/telephony/util/MtkSmsCommonUtil;->phonePrivacyLockCheck([[BLjava/lang/String;Landroid/content/Context;I)I

    move-result v1

    if-eqz v1, :cond_2c

    .line 341
    const/4 v0, 0x0

    .line 344
    :cond_2c
    return v0
.end method

.method private handleAutoRegMessage([B)V
    .registers 5
    .param p1, "pdu"    # [B

    .line 282
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkProxyController;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->getDeviceRegisterController()Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 283
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    const-string v2, "3gpp"

    invoke-virtual {v0, v1, v2, p1}, Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;->handleAutoRegMessage(ILjava/lang/String;[B)V

    .line 284
    return-void
.end method

.method private handleSmsEInfoExtensions(Landroid/os/AsyncResult;)V
    .registers 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 430
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1b

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception processing handleSmsEInfoExtensions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 432
    return-void

    .line 435
    :cond_1b
    :try_start_1b
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 439
    .local v0, "info":Ljava/lang/String;
    if-eqz v0, :cond_40

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_28

    goto :goto_40

    .line 441
    :cond_28
    const-string v1, "verstat=TN-Validation-Passed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 442
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mPAssertedIdentity:I

    goto :goto_3f

    .line 443
    :cond_34
    const-string v1, "verstat=TN-Validation-Failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 444
    const/4 v1, 0x2

    iput v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mPAssertedIdentity:I
    :try_end_3f
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_3f} :catch_41

    .line 448
    .end local v0    # "info":Ljava/lang/String;
    :cond_3f
    :goto_3f
    goto :goto_47

    .line 440
    .restart local v0    # "info":Ljava/lang/String;
    :cond_40
    :goto_40
    return-void

    .line 446
    .end local v0    # "info":Ljava/lang/String;
    :catch_41
    move-exception v0

    .line 447
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v1, "Exception dispatching message"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 449
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :goto_47
    return-void
.end method

.method public static makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;)Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 159
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;)V

    .line 161
    .local v0, "handler":Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->start()V

    .line 162
    return-object v0
.end method


# virtual methods
.method protected addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;Z)I
    .registers 5
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "deDup"    # Z

    .line 288
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;

    .line 289
    .local v0, "t":Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->setSubId(I)V

    .line 290
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;Z)I

    move-result v1

    return v1
.end method

.method protected deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V
    .registers 6
    .param p1, "deleteWhere"    # Ljava/lang/String;
    .param p2, "deleteWhereArgs"    # [Ljava/lang/String;
    .param p3, "deleteType"    # I

    .line 321
    const/4 v0, 0x1

    if-ne p3, v0, :cond_6

    sget-object v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->sRawUriPermanentDelete:Landroid/net/Uri;

    goto :goto_8

    :cond_6
    sget-object v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->sRawUri:Landroid/net/Uri;

    .line 322
    .local v0, "uri":Landroid/net/Uri;
    :goto_8
    if-nez p1, :cond_12

    if-nez p2, :cond_12

    .line 325
    const-string v1, "No rows need be deleted from raw table!"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 326
    return-void

    .line 328
    :cond_12
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 329
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

    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "rTime"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 308
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    iget v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mPAssertedIdentity:I

    if-eqz v1, :cond_39

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchIntent with caller_verification="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mPAssertedIdentity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 312
    iget v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mPAssertedIdentity:I

    const-string v2, "caller_verification"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 313
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mPAssertedIdentity:I

    .line 315
    :cond_39
    invoke-super/range {p0 .. p7}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Landroid/os/UserHandle;I)V

    .line 316
    return-void
.end method

.method protected dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;I)I
    .registers 6
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p2, "smsSource"    # I

    .line 270
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/SmsMessage;

    .line 272
    .local v0, "sms":Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "10659401"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 273
    const-string v1, "handleAutoRegMessage."

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->handleAutoRegMessage([B)V

    .line 275
    const/4 v1, 0x1

    return v1

    .line 278
    :cond_1d
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;I)I

    move-result v1

    return v1
.end method

.method protected log(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 407
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 416
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 426
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mTag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 427
    return-void
.end method

.method protected onCheckIfOverrideStates()Z
    .registers 2

    .line 398
    const/4 v0, 0x1

    return v0
.end method

.method protected onCheckIfStopProcessMessagePart([[BLjava/lang/String;Lcom/android/internal/telephony/InboundSmsTracker;)Z
    .registers 8
    .param p1, "pdus"    # [[B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .line 356
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->checkPplPermission([[BLjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    .line 357
    const-string v0, "The message was blocked by Ppl! don\'t prompt to user"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p3}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 360
    return v1

    .line 362
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreateSmsMessage([BLjava/lang/String;)Landroid/telephony/SmsMessage;
    .registers 4
    .param p1, "pdu"    # [B
    .param p2, "format"    # Ljava/lang/String;

    .line 367
    const-string v0, "3gpp"

    invoke-static {p1, v0}, Lmediatek/telephony/MtkSmsMessage;->createFromPdu([BLjava/lang/String;)Lmediatek/telephony/MtkSmsMessage;

    move-result-object v0

    return-object v0
.end method

.method protected onDispatchWapPdu([[B[BLcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Ljava/lang/String;IJ)I
    .registers 12
    .param p1, "smsPdus"    # [[B
    .param p2, "pdu"    # [B
    .param p3, "receiver"    # Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
    .param p4, "address"    # Ljava/lang/String;
    .param p5, "subId"    # I
    .param p6, "messageId"    # J

    .line 374
    invoke-static {}, Lcom/mediatek/internal/telephony/util/MtkSmsCommonUtil;->isWapPushSupport()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 375
    const-string v0, "dispatch wap push pdu with addr & sc addr"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 376
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 377
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v1, 0x0

    aget-object v1, p1, v1

    .line 378
    const-string v2, "3gpp"

    invoke-static {v1, v2}, Lmediatek/telephony/MtkSmsMessage;->createFromPdu([BLjava/lang/String;)Lmediatek/telephony/MtkSmsMessage;

    move-result-object v1

    .line 380
    .local v1, "sms":Lmediatek/telephony/MtkSmsMessage;
    if-eqz v1, :cond_31

    .line 381
    invoke-virtual {v1}, Lmediatek/telephony/MtkSmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    const-string v3, "address"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-virtual {v1}, Lmediatek/telephony/MtkSmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v2

    .line 383
    .local v2, "sca":Ljava/lang/String;
    if-nez v2, :cond_2c

    .line 385
    const-string v2, ""

    .line 387
    :cond_2c
    const-string v3, "service_center"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    .end local v2    # "sca":Ljava/lang/String;
    :cond_31
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;

    invoke-virtual {v2, p2, p3, p0, v0}, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->dispatchWapPdu([BLcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Bundle;)I

    move-result v2

    return v2

    .line 392
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "sms":Lmediatek/telephony/MtkSmsMessage;
    :cond_3a
    invoke-super/range {p0 .. p7}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->onDispatchWapPdu([[B[BLcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Ljava/lang/String;IJ)I

    move-result v0

    return v0
.end method

.method protected onModifyQueryWhereArgs([Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p1, "whereArgs"    # [Ljava/lang/String;

    .line 349
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 350
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

.method protected onQuitting()V
    .registers 3

    .line 298
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->onQuitting()V

    .line 299
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 300
    .local v0, "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForSmsInfoExt(Landroid/os/Handler;)V

    .line 301
    return-void
.end method

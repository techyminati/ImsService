.class public Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;
.super Lcom/android/internal/telephony/SmsDispatchersController;
.source "MtkSmsDispatchersController.java"


# static fields
.field private static final ENG:Z

.field protected static final EVENT_SMS_READY:I = 0x0

.field private static final FORMAT_CS_CDMA:I = 0x3

.field private static final FORMAT_CS_GSM:I = 0x2

.field private static final FORMAT_IMS:I = 0x1

.field private static final FORMAT_NOT_MATCH:I = 0x0

.field public static final SELECT_BY_REFERENCE:Ljava/lang/String; = "address=? AND reference_number=? AND count=? AND deleted=0 AND sub_id=?"

.field private static final TAG:Ljava/lang/String; = "MtkSmsDispatchersController"

.field private static final WAKE_LOCK_TIMEOUT:I = 0x1f4


# instance fields
.field private mSmsReady:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 112
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->ENG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .registers 7
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p3, "usageMonitor"    # Lcom/android/internal/telephony/SmsUsageMonitor;

    .line 125
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SmsDispatchersController;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->mSmsReady:Z

    .line 127
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->createWakelock()V

    .line 128
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 129
    .local v1, "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForSmsReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 130
    const-string v0, "MtkSmsDispatchersController"

    const-string v2, "MtkSmsDispatchersController created"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void
.end method

.method private createWakelock()V
    .registers 4

    .line 381
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 383
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "SmsCommonEventHelp"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 384
    invoke-virtual {v2, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 385
    return-void
.end method

.method private notifySmsReady(Z)V
    .registers 6
    .param p1, "isReady"    # Z

    .line 389
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 390
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ready"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 391
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 394
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 395
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 396
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 397
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 398
    return-void
.end method


# virtual methods
.method public copyTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I
    .registers 15
    .param p1, "scAddress"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p4, "status"    # I
    .param p5, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IJ)I"
        }
    .end annotation

    .line 227
    .local p3, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    .line 228
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->copyTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I

    move-result v0

    return v0

    .line 231
    :cond_18
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->copyTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I

    move-result v0

    return v0
.end method

.method protected handleIccFull()V
    .registers 2

    .line 335
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_e

    .line 337
    :cond_7
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    check-cast v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->handleIccFull()V

    .line 339
    :goto_e
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 364
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2e

    .line 373
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->handleMessage(Landroid/os/Message;)V

    goto :goto_2c

    .line 366
    :pswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMS is ready, Phone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkSmsDispatchersController"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->mSmsReady:Z

    .line 369
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->notifySmsReady(Z)V

    .line 370
    nop

    .line 375
    :goto_2c
    return-void

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method

.method isFormatMatch(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Lcom/android/internal/telephony/Phone;)I
    .registers 7
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 401
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->ENG:Z

    if-eqz v0, :cond_40

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isFormatMatch, isIms "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->isIms()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ims sms format "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->getImsSmsFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tracker format "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Phone type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 402
    const-string v1, "MtkSmsDispatchersController"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_40
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_58

    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    .line 408
    invoke-virtual {v2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 409
    return v1

    .line 412
    :cond_58
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    const-string v2, "3gpp2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_6b

    .line 413
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v2, :cond_6b

    .line 414
    const/4 v0, 0x3

    return v0

    .line 416
    :cond_6b
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    const-string v3, "3gpp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 417
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v1, :cond_7c

    .line 418
    return v2

    .line 420
    :cond_7c
    const/4 v0, 0x0

    return v0
.end method

.method public isSmsReady()Z
    .registers 2

    .line 356
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->mSmsReady:Z

    return v0
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 20
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "destPort"    # I
    .param p5, "originalPort"    # I
    .param p6, "data"    # [B
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .param p8, "deliveryIntent"    # Landroid/app/PendingIntent;

    .line 162
    move-object v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 163
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    move-object v2, v1

    check-cast v2, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_4d

    .line 165
    :cond_1e
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->isCdmaMo()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 166
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v2, v1

    check-cast v2, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_4d

    .line 169
    :cond_39
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v2, v1

    check-cast v2, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 172
    :goto_4d
    return-void
.end method

.method protected sendMultipartData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 18
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "destPort"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .line 203
    .local p5, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/SmsRawData;>;"
    .local p6, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p7, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 204
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    move-object v2, v1

    check-cast v2, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->sendMultipartData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_33

    .line 206
    :cond_1b
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->isCdmaMo()Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_33

    .line 208
    :cond_22
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v2, v1

    check-cast v2, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->sendMultipartData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 211
    :goto_33
    return-void
.end method

.method protected sendMultipartTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI)V
    .registers 28
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p4, "encodingType"    # I
    .param p7, "messageUri"    # Landroid/net/Uri;
    .param p8, "callingPkg"    # Ljava/lang/String;
    .param p9, "persistMessage"    # Z
    .param p10, "priority"    # I
    .param p11, "expectMore"    # Z
    .param p12, "validityPeriod"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "ZIZI)V"
        }
    .end annotation

    .line 315
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 316
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    move-object v2, v1

    check-cast v2, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    invoke-virtual/range {v2 .. v14}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->sendMultipartTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI)V

    goto :goto_71

    .line 319
    :cond_2a
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->isCdmaMo()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 320
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v2, v1

    check-cast v2, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    invoke-virtual/range {v2 .. v14}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->sendMultipartTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI)V

    goto :goto_71

    .line 324
    :cond_51
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v2, v1

    check-cast v2, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    invoke-virtual/range {v2 .. v14}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->sendMultipartTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI)V

    .line 328
    :goto_71
    return-void
.end method

.method protected sendTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)V
    .registers 28
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "encodingType"    # I
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p7, "messageUri"    # Landroid/net/Uri;
    .param p8, "callingPkg"    # Ljava/lang/String;
    .param p9, "persistMessage"    # Z
    .param p10, "priority"    # I
    .param p11, "expectMore"    # Z
    .param p12, "validityPeriod"    # I

    .line 269
    move-object v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 270
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    move-object v2, v1

    check-cast v2, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    invoke-virtual/range {v2 .. v14}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->sendTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)V

    goto :goto_71

    .line 273
    :cond_2a
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->isCdmaMo()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 274
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v2, v1

    check-cast v2, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    invoke-virtual/range {v2 .. v14}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->sendTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)V

    goto :goto_71

    .line 278
    :cond_51
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v2, v1

    check-cast v2, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    invoke-virtual/range {v2 .. v14}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->sendTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)V

    .line 282
    :goto_71
    return-void
.end method

.method protected setSmsMemoryStatus(Z)V
    .registers 3
    .param p1, "status"    # Z

    .line 349
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_e

    .line 351
    :cond_7
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    check-cast v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->setSmsMemoryStatus(Z)V

    .line 353
    :goto_e
    return-void
.end method

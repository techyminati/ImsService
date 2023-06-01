.class public Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;
.super Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;
.source "MtkCdmaSMSDispatcher.java"


# static fields
.field private static final ENG:Z

.field private static final EVENT_COPY_TEXT_MESSAGE_DONE:I = 0x6a

.field private static final RESULT_ERROR_RUIM_PLUG_OUT:I = 0x6b

.field private static final RESULT_ERROR_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MtkCdmaSMSDispatcher"

.field private static final VDBG:Z = false

.field private static final WAKE_LOCK_TIMEOUT:I = 0x1f4


# instance fields
.field private mCopied:Z

.field private mEncodingType:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mLock:Ljava/lang/Object;

.field private mOriginalPort:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mSuccess:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 109
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->ENG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;)V
    .registers 5
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "smsDispatchersController"    # Lcom/android/internal/telephony/SmsDispatchersController;

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;)V

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->mLock:Ljava/lang/Object;

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->mCopied:Z

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->mSuccess:Z

    .line 114
    new-instance v0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher$1;-><init>(Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->mOriginalPort:Ljava/lang/ThreadLocal;

    .line 121
    new-instance v0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher$2;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher$2;-><init>(Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->mEncodingType:Ljava/lang/ThreadLocal;

    .line 136
    const-string v0, "MtkCdmaSMSDispatcher"

    const-string v1, "MtkCdmaSMSDispatcher created"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method

.method private isSimAbsent()Z
    .registers 6

    .line 579
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 581
    .local v0, "card":Lcom/android/internal/telephony/IccCard;
    if-nez v0, :cond_13

    .line 582
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .local v1, "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_17

    .line 584
    .end local v1    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_13
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    .line 586
    .restart local v1    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_17
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v2, :cond_22

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_20

    goto :goto_22

    :cond_20
    const/4 v2, 0x0

    goto :goto_23

    :cond_22
    :goto_22
    const/4 v2, 0x1

    .line 588
    .local v2, "ret":Z
    :goto_23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSimAbsent state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MtkCdmaSMSDispatcher"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    return v2
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

    .line 247
    .local p3, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->mSuccess:Z

    .line 249
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    .line 250
    .local v1, "msgCount":I
    const-string v2, "MtkCdmaSMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyTextMessageToIccCard status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", msgCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    if-ge v1, v0, :cond_28

    .line 252
    return v0

    .line 255
    :cond_28
    const/4 v2, 0x1

    .line 256
    .local v2, "isDeliverPdu":Z
    if-eq p4, v0, :cond_47

    const/4 v3, 0x3

    if-ne p4, v3, :cond_2f

    goto :goto_47

    .line 259
    :cond_2f
    const/4 v3, 0x5

    if-eq p4, v3, :cond_3e

    const/4 v3, 0x7

    if-ne p4, v3, :cond_36

    goto :goto_3e

    .line 263
    :cond_36
    const-string v3, "MtkCdmaSMSDispatcher"

    const-string v4, "copyTextMessageToIccCard invalid status, default is deliver pdu"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return v0

    .line 260
    :cond_3e
    :goto_3e
    const-string v3, "MtkCdmaSMSDispatcher"

    const-string v4, "copyTextMessageToIccCard to encode submit pdu"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v2, 0x0

    goto :goto_4f

    .line 257
    :cond_47
    :goto_47
    const-string v3, "MtkCdmaSMSDispatcher"

    const-string v4, "copyTextMessageToIccCard to encode deliver pdu"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v2, 0x1

    .line 267
    :goto_4f
    if-nez v2, :cond_61

    invoke-static {p2}, Lcom/mediatek/internal/telephony/util/MtkSMSDispatcherUtil;->checkPhoneNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_61

    .line 268
    const-string v0, "MtkCdmaSMSDispatcher"

    const-string v3, "copyTextMessageToIccCard invalid dest address"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/16 v0, 0x8

    return v0

    .line 272
    :cond_61
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_62
    if-ge v3, v1, :cond_9e

    .line 273
    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->mSuccess:Z

    if-nez v4, :cond_69

    .line 274
    return v0

    .line 276
    :cond_69
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {p2, v4, p5, p6}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->createEfPdu(Ljava/lang/String;Ljava/lang/String;J)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v4

    .line 277
    .local v4, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-eqz v4, :cond_9d

    .line 278
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, v4, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/16 v7, 0x6a

    .line 279
    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 278
    invoke-interface {v5, p4, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToRuim(I[BLandroid/os/Message;)V

    .line 283
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 284
    const/4 v6, 0x0

    :try_start_86
    iput-boolean v6, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->mCopied:Z
    :try_end_88
    .catchall {:try_start_86 .. :try_end_88} :catchall_9a

    .line 286
    :goto_88
    :try_start_88
    iget-boolean v6, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->mCopied:Z

    if-nez v6, :cond_92

    .line 287
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_91
    .catch Ljava/lang/InterruptedException; {:try_start_88 .. :try_end_91} :catch_97
    .catchall {:try_start_88 .. :try_end_91} :catchall_9a

    goto :goto_88

    .line 291
    :cond_92
    nop

    .line 292
    :try_start_93
    monitor-exit v5

    .line 272
    .end local v4    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    add-int/lit8 v3, v3, 0x1

    goto :goto_62

    .line 289
    .restart local v4    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :catch_97
    move-exception v6

    .line 290
    .local v6, "e":Ljava/lang/InterruptedException;
    monitor-exit v5

    return v0

    .line 292
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :catchall_9a
    move-exception v0

    monitor-exit v5
    :try_end_9c
    .catchall {:try_start_93 .. :try_end_9c} :catchall_9a

    throw v0

    .line 281
    :cond_9d
    return v0

    .line 294
    .end local v3    # "i":I
    .end local v4    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_9e
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->mSuccess:Z

    xor-int/2addr v0, v3

    return v0
.end method

.method protected getPackageNameViaProcessId([Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "packageNames"    # [Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/mediatek/internal/telephony/util/MtkSMSDispatcherUtil;->getPackageNameViaProcessId(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSmsTracker(Ljava/lang/String;Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZIIZJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .registers 22
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p3, "sentIntent"    # Landroid/app/PendingIntent;
    .param p4, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p5, "format"    # Ljava/lang/String;
    .param p6, "unsentPartCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p7, "anyPartFailed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p8, "messageUri"    # Landroid/net/Uri;
    .param p9, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p10, "expectMore"    # Z
    .param p11, "fullMessageText"    # Ljava/lang/String;
    .param p12, "isText"    # Z
    .param p13, "persistMessage"    # Z
    .param p14, "priority"    # I
    .param p15, "validityPeriod"    # I
    .param p16, "isForVvm"    # Z
    .param p17, "messageId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Landroid/net/Uri;",
            "Lcom/android/internal/telephony/SmsHeader;",
            "Z",
            "Ljava/lang/String;",
            "ZZIIZJ)",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;"
        }
    .end annotation

    .line 170
    .local p2, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-super/range {p0 .. p18}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/lang/String;Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZIIZJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    .line 174
    .local v0, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object v1, p0

    iget-object v2, v1, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/mediatek/internal/telephony/util/MtkSmsCommonUtil;->filterOutByPpl(Landroid/content/Context;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 175
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 539
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_28

    .line 553
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->handleMessage(Landroid/os/Message;)V

    goto :goto_26

    .line 543
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 544
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 545
    :try_start_10
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v3, 0x1

    if-nez v2, :cond_17

    move v2, v3

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->mSuccess:Z

    .line 546
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->mCopied:Z

    .line 547
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 548
    monitor-exit v1

    .line 549
    goto :goto_26

    .line 548
    :catchall_23
    move-exception v2

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_10 .. :try_end_25} :catchall_23

    throw v2

    .line 555
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :goto_26
    return-void

    nop

    :pswitch_data_28
    .packed-switch 0x6a
        :pswitch_9
    .end packed-switch
.end method

.method protected handleSendComplete(Landroid/os/AsyncResult;)V
    .registers 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 559
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 560
    .local v0, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_42

    .line 561
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_42

    .line 562
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/SmsResponse;

    iget v1, v1, Lcom/android/internal/telephony/SmsResponse;->mErrorCode:I

    .line 563
    .local v1, "errorCode":I
    const/16 v2, 0x6b

    const/4 v3, 0x1

    if-ne v1, v2, :cond_24

    .line 564
    const-string v2, "MtkCdmaSMSDispatcher"

    const-string v4, "RUIM card is plug out"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 566
    return-void

    .line 568
    :cond_24
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 569
    .local v2, "ss":I
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->isIms()Z

    move-result v4

    if-nez v4, :cond_42

    if-eqz v2, :cond_42

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->isSimAbsent()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 570
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4, v3, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 571
    return-void

    .line 575
    .end local v1    # "errorCode":I
    .end local v2    # "ss":I
    :cond_42
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->handleSendComplete(Landroid/os/AsyncResult;)V

    .line 576
    return-void
.end method

.method protected onSendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 14
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .line 224
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->mOriginalPort:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    .line 225
    invoke-super/range {p0 .. p6}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->onSendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object v0

    return-object v0

    .line 227
    :cond_14
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->mOriginalPort:Ljava/lang/ThreadLocal;

    .line 228
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz p6, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    move v6, v0

    .line 227
    move-object v1, p2

    move-object v2, p1

    move v3, p3

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method protected onSendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;)I
    .registers 20
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p6, "messageUri"    # Landroid/net/Uri;
    .param p7, "callingPkg"    # Ljava/lang/String;
    .param p8, "persistMessage"    # Z
    .param p9, "priority"    # I
    .param p10, "expectMore"    # Z
    .param p11, "validityPeriod"    # I
    .param p12, "encodingForParts"    # [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "ZIZI[",
            "Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;",
            ")I"
        }
    .end annotation

    .line 518
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->mEncodingType:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 519
    .local v1, "encodingType":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1d

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1d

    const/4 v2, 0x3

    if-ne v1, v2, :cond_17

    goto :goto_1d

    .line 530
    :cond_17
    invoke-super/range {p0 .. p12}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->onSendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;)I

    move-result v1

    move-object v4, p3

    goto :goto_3a

    .line 522
    :cond_1d
    :goto_1d
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 523
    .local v2, "msgCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_22
    if-ge v3, v2, :cond_38

    .line 524
    nop

    .line 525
    move-object v4, p3

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-static {v5, v6, v1}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v5

    .line 526
    .local v5, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iput v1, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 527
    aput-object v5, p12, v3

    .line 523
    .end local v5    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_38
    move-object v4, p3

    .line 529
    .end local v2    # "msgCount":I
    .end local v3    # "i":I
    nop

    .line 534
    :goto_3a
    return v1
.end method

.method protected onSendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 23
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "messageUri"    # Landroid/net/Uri;
    .param p7, "callingPkg"    # Ljava/lang/String;
    .param p8, "persistMessage"    # Z
    .param p9, "priority"    # I
    .param p10, "expectMore"    # Z
    .param p11, "validityPeriod"    # I

    .line 361
    move-object v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->mEncodingType:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 362
    .local v1, "encodingType":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1c

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1c

    const/4 v3, 0x3

    if-ne v1, v3, :cond_17

    goto :goto_1c

    .line 368
    :cond_17
    invoke-super/range {p0 .. p11}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->onSendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object v2

    return-object v2

    .line 365
    :cond_1c
    :goto_1c
    if-eqz p5, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    move v5, v2

    const/4 v6, 0x0

    const/4 v10, 0x1

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move v7, v1

    move/from16 v8, p11

    move/from16 v9, p9

    invoke-static/range {v2 .. v10}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;IIIZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v2

    return-object v2
.end method

.method public sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 19
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "destPort"    # I
    .param p5, "originalPort"    # I
    .param p6, "data"    # [B
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .param p8, "deliveryIntent"    # Landroid/app/PendingIntent;

    .line 214
    move-object v9, p0

    iget-object v0, v9, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->mOriginalPort:Ljava/lang/ThreadLocal;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 215
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v8}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    .line 217
    iget-object v0, v9, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->mOriginalPort:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 218
    return-void
.end method

.method public sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZIJ)V
    .registers 47
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p6, "messageUri"    # Landroid/net/Uri;
    .param p7, "callingPkg"    # Ljava/lang/String;
    .param p8, "persistMessage"    # Z
    .param p9, "priority"    # I
    .param p10, "expectMore"    # Z
    .param p11, "validityPeriod"    # I
    .param p12, "messageId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "ZIZIJ)V"
        }
    .end annotation

    .line 435
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v15, p0

    move-object/from16 v14, p3

    move-object/from16 v13, p4

    move-object/from16 v12, p5

    invoke-virtual {v15, v14}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->getMultipartMessageText(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v19

    .line 436
    .local v19, "fullMessageText":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->getNextConcatenatedRef()I

    move-result v0

    and-int/lit16 v11, v0, 0xff

    .line 437
    .local v11, "refNumber":I
    const/16 v16, 0x0

    .line 438
    .local v16, "encoding":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 439
    .local v10, "msgCount":I
    const/4 v9, 0x1

    if-ge v10, v9, :cond_1f

    .line 440
    invoke-virtual {v15, v13}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->triggerSentIntentForFailure(Ljava/util/List;)V

    .line 441
    return-void

    .line 444
    :cond_1f
    new-array v8, v10, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    .line 445
    .local v8, "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v20, v8

    .end local v8    # "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .local v20, "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move/from16 v8, p8

    move v15, v9

    move/from16 v9, p9

    move v15, v10

    .end local v10    # "msgCount":I
    .local v15, "msgCount":I
    move/from16 v10, p10

    move v14, v11

    .end local v11    # "refNumber":I
    .local v14, "refNumber":I
    move/from16 v11, p11

    move-object/from16 v12, v20

    invoke-virtual/range {v0 .. v12}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->onSendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;)I

    move-result v12

    .line 448
    .end local v16    # "encoding":I
    .local v12, "encoding":I
    new-array v9, v15, [Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 451
    .local v9, "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    new-instance v10, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v10, v15}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 452
    .local v10, "unsentPartCount":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v11, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    invoke-direct {v11, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 454
    .local v11, "anyPartFailed":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v0, 0x0

    move v7, v0

    .local v7, "i":I
    :goto_53
    if-ge v7, v15, :cond_121

    .line 455
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    move-object v6, v0

    .line 456
    .local v6, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iput v14, v6, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 457
    add-int/lit8 v0, v7, 0x1

    iput v0, v6, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 458
    iput v15, v6, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 465
    const/4 v5, 0x1

    iput-boolean v5, v6, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 467
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v0

    const-class v1, Lcom/android/internal/telephony/TelephonyComponentFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v21

    .line 468
    .local v21, "telephonyComponentFactory":Lcom/android/internal/telephony/TelephonyComponentFactory;
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeSmsHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v4

    .line 469
    .local v4, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iput-object v6, v4, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 472
    if-ne v12, v5, :cond_88

    .line 473
    aget-object v0, v20, v7

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iput v0, v4, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 474
    aget-object v0, v20, v7

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    iput v0, v4, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 477
    :cond_88
    const/4 v0, 0x0

    .line 478
    .local v0, "sentIntent":Landroid/app/PendingIntent;
    if-eqz v13, :cond_9b

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v7, :cond_9b

    .line 479
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/app/PendingIntent;

    move-object/from16 v22, v0

    goto :goto_9d

    .line 482
    :cond_9b
    move-object/from16 v22, v0

    .end local v0    # "sentIntent":Landroid/app/PendingIntent;
    .local v22, "sentIntent":Landroid/app/PendingIntent;
    :goto_9d
    const/4 v0, 0x0

    .line 483
    .local v0, "deliveryIntent":Landroid/app/PendingIntent;
    move-object/from16 v3, p5

    if-eqz v3, :cond_b2

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v7, :cond_b2

    .line 484
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/app/PendingIntent;

    move-object/from16 v23, v0

    goto :goto_b4

    .line 487
    :cond_b2
    move-object/from16 v23, v0

    .end local v0    # "deliveryIntent":Landroid/app/PendingIntent;
    .local v23, "deliveryIntent":Landroid/app/PendingIntent;
    :goto_b4
    nop

    .line 488
    move/from16 v24, v14

    move-object/from16 v14, p3

    .end local v14    # "refNumber":I
    .local v24, "refNumber":I
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    add-int/lit8 v0, v15, -0x1

    if-ne v7, v0, :cond_c8

    move/from16 v17, v5

    goto :goto_ca

    :cond_c8
    move/from16 v17, v8

    :goto_ca
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v25, v4

    .end local v4    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .local v25, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v4, v16

    move/from16 v16, v5

    move-object/from16 v5, v25

    move-object/from16 v26, v6

    .end local v6    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .local v26, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move v6, v12

    move/from16 v27, v7

    .end local v7    # "i":I
    .local v27, "i":I
    move-object/from16 v7, v22

    move/from16 v28, v8

    move-object/from16 v8, v23

    move-object/from16 v29, v9

    .end local v9    # "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .local v29, "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move/from16 v9, v17

    move/from16 v30, v12

    .end local v12    # "encoding":I
    .local v30, "encoding":I
    move-object/from16 v12, p6

    move-object/from16 v13, v19

    move/from16 v14, p9

    move/from16 v31, v15

    move/from16 v32, v16

    .end local v15    # "msgCount":I
    .local v31, "msgCount":I
    move/from16 v15, p10

    move/from16 v16, p11

    move-wide/from16 v17, p12

    invoke-virtual/range {v0 .. v18}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->getNewSubmitPduTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;IZIJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    move-object/from16 v1, v29

    .end local v29    # "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .local v1, "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    aput-object v0, v1, v27

    .line 492
    aget-object v0, v1, v27

    if-nez v0, :cond_10f

    .line 493
    move-object/from16 v0, p0

    move-object/from16 v2, p4

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->triggerSentIntentForFailure(Ljava/util/List;)V

    .line 494
    return-void

    .line 492
    :cond_10f
    move-object/from16 v0, p0

    move-object/from16 v2, p4

    .line 454
    .end local v21    # "telephonyComponentFactory":Lcom/android/internal/telephony/TelephonyComponentFactory;
    .end local v22    # "sentIntent":Landroid/app/PendingIntent;
    .end local v23    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v25    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v26    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    add-int/lit8 v7, v27, 0x1

    move-object v9, v1

    move-object v13, v2

    move/from16 v14, v24

    move/from16 v8, v28

    move/from16 v12, v30

    move/from16 v15, v31

    .end local v27    # "i":I
    .restart local v7    # "i":I
    goto/16 :goto_53

    .end local v1    # "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .end local v24    # "refNumber":I
    .end local v30    # "encoding":I
    .end local v31    # "msgCount":I
    .restart local v9    # "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .restart local v12    # "encoding":I
    .restart local v14    # "refNumber":I
    .restart local v15    # "msgCount":I
    :cond_121
    move-object/from16 v0, p0

    move/from16 v27, v7

    move/from16 v28, v8

    move-object v1, v9

    move/from16 v30, v12

    move-object v2, v13

    move/from16 v24, v14

    move/from16 v31, v15

    .line 498
    .end local v7    # "i":I
    .end local v9    # "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .end local v12    # "encoding":I
    .end local v14    # "refNumber":I
    .end local v15    # "msgCount":I
    .restart local v1    # "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .restart local v24    # "refNumber":I
    .restart local v30    # "encoding":I
    .restart local v31    # "msgCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v3

    .line 499
    .local v3, "carrierPackage":Ljava/lang/String;
    const-string v4, "MtkCdmaSMSDispatcher"

    if-eqz v3, :cond_14c

    .line 500
    const-string v5, "Found carrier package."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

    move-object/from16 v5, p3

    invoke-direct {v4, v0, v5, v1}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Ljava/util/ArrayList;[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 502
    .local v4, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;
    new-instance v6, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;

    invoke-direct {v6, v0, v4}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;)V

    invoke-virtual {v4, v3, v6}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;)V

    .line 504
    .end local v4    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;
    goto :goto_160

    .line 505
    :cond_14c
    move-object/from16 v5, p3

    const-string v6, "No carrier package."

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    array-length v4, v1

    move/from16 v8, v28

    :goto_156
    if-ge v8, v4, :cond_160

    aget-object v6, v1, v8

    .line 507
    .local v6, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {v0, v6}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 506
    .end local v6    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    add-int/lit8 v8, v8, 0x1

    goto :goto_156

    .line 510
    :cond_160
    :goto_160
    return-void
.end method

.method public sendMultipartTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI)V
    .registers 29
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

    .line 421
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v14, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMultipartTextWithEncodingType encoding = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p4

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkCdmaSMSDispatcher"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v0, v14, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->mEncodingType:Ljava/lang/ThreadLocal;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 423
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    invoke-virtual/range {v0 .. v13}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZIJ)V

    .line 425
    iget-object v0, v14, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->mEncodingType:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 426
    return-void
.end method

.method public sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .registers 6
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 142
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 144
    .local v0, "ss":I
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->isIms()Z

    move-result v1

    if-nez v1, :cond_2a

    if-eqz v0, :cond_2a

    .line 152
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->isSimAbsent()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    .line 153
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v3, v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    goto :goto_29

    .line 155
    :cond_20
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->getNotInServiceError(I)I

    move-result v3

    invoke-virtual {p1, v1, v3, v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 158
    :goto_29
    return-void

    .line 160
    :cond_2a
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 161
    return-void
.end method

.method public sendTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)V
    .registers 31
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

    .line 348
    move-object/from16 v15, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendTextWithEncodingType encoding = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p4

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkCdmaSMSDispatcher"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v0, v15, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->mEncodingType:Ljava/lang/ThreadLocal;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 350
    const/4 v12, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move-wide/from16 v13, v16

    invoke-virtual/range {v0 .. v14}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZIZJ)V

    .line 352
    iget-object v0, v15, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;->mEncodingType:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 353
    return-void
.end method

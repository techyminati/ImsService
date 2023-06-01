.class public Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;
.super Lcom/android/internal/telephony/ImsSmsDispatcher;
.source "MtkImsSmsDispatcher.java"


# static fields
.field private static final ENG:Z

.field private static final TAG:Ljava/lang/String; = "MtkImsSmsDispacher"


# instance fields
.field private mEncodingType:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mImsSmsIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPplSmsFilter:Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 102
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->ENG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;)V
    .registers 6
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "smsDispatchersController"    # Lcom/android/internal/telephony/SmsDispatchersController;

    .line 150
    sget-object v0, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher$$ExternalSyntheticLambda0;->INSTANCE:Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;Lcom/android/internal/telephony/ImsSmsDispatcher$FeatureConnectorFactory;)V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->mPplSmsFilter:Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;

    .line 103
    new-instance v0, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher$1;-><init>(Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->mEncodingType:Ljava/lang/ThreadLocal;

    .line 110
    new-instance v0, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher$2;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher$2;-><init>(Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->mImsSmsIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 151
    const-string v0, "MtkImsSmsDispacher"

    const-string v1, "Created!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 154
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->mImsSmsIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 156
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;

    .line 95
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getNewSubmitPduTrackerGsm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;IZI)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .registers 38
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destinationAddress"    # Ljava/lang/String;
    .param p3, "scAddress"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p6, "encoding"    # I
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .param p8, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p9, "lastPart"    # Z
    .param p10, "unsentPartCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p11, "anyPartFailed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p12, "messageUri"    # Landroid/net/Uri;
    .param p13, "fullMessageText"    # Ljava/lang/String;
    .param p14, "priority"    # I
    .param p15, "expectMore"    # Z
    .param p16, "validityPeriod"    # I

    .line 614
    move-object/from16 v15, p5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p8, :cond_8

    move v7, v0

    goto :goto_9

    :cond_8
    move v7, v1

    .line 615
    :goto_9
    invoke-static/range {p5 .. p5}, Lcom/mediatek/internal/telephony/MtkSmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v8

    iget v10, v15, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    iget v11, v15, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 614
    const/4 v3, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move/from16 v9, p6

    move/from16 v12, p16

    invoke-virtual/range {v2 .. v12}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->getSubmitPdu(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object v14

    .line 618
    .local v14, "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    if-eqz v14, :cond_66

    .line 619
    move-object/from16 v11, p0

    move-object/from16 v10, p2

    move-object/from16 v9, p3

    move-object/from16 v8, p4

    invoke-virtual {v11, v10, v9, v8, v14}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v19

    .line 621
    .local v19, "map":Ljava/util/HashMap;
    nop

    .line 622
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v5

    if-eqz p9, :cond_3d

    if-eqz p15, :cond_3a

    goto :goto_3d

    :cond_3a
    move/from16 v20, v1

    goto :goto_3f

    :cond_3d
    :goto_3d
    move/from16 v20, v0

    :goto_3f
    const/4 v12, 0x1

    const/4 v13, 0x1

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    .line 621
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move-object/from16 v8, p12

    move-object/from16 v9, p5

    move/from16 v10, v20

    move-object/from16 v11, p13

    move-object/from16 v20, v14

    .end local v14    # "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .local v20, "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    move/from16 v14, p14

    move/from16 v15, p16

    invoke-virtual/range {v0 .. v18}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->getSmsTracker(Ljava/lang/String;Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZIIZJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    return-object v0

    .line 626
    .end local v19    # "map":Ljava/util/HashMap;
    .end local v20    # "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .restart local v14    # "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_66
    const-string v0, "MtkImsSmsDispacher"

    const-string v1, "getNewSubmitPduTrackerGsm: getSubmitPdu() returned null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected getNewSubmitPduTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;IZIJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .registers 21
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destinationAddress"    # Ljava/lang/String;
    .param p3, "scAddress"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p6, "encoding"    # I
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .param p8, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p9, "lastPart"    # Z
    .param p10, "unsentPartCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p11, "anyPartFailed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p12, "messageUri"    # Landroid/net/Uri;
    .param p13, "fullMessageText"    # Ljava/lang/String;
    .param p14, "priority"    # I
    .param p15, "expectMore"    # Z
    .param p16, "validityPeriod"    # I
    .param p17, "messageId"    # J

    .line 251
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->ENG:Z

    if-eqz v0, :cond_b

    .line 252
    const-string v0, "MtkImsSmsDispacher"

    const-string v1, "getNewSubmitPduTracker w/ validity"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_b
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 256
    invoke-super/range {p0 .. p18}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getNewSubmitPduTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;IZIJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    return-object v0

    .line 261
    :cond_16
    invoke-direct/range {p0 .. p16}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->getNewSubmitPduTrackerGsm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;IZI)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    return-object v0
.end method

.method protected getPackageNameViaProcessId([Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "packageNames"    # [Ljava/lang/String;

    .line 632
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/mediatek/internal/telephony/util/MtkSMSDispatcherUtil;->getPackageNameViaProcessId(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSmsTracker(Ljava/lang/String;Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZZJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .registers 33
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p3, "sentIntent"    # Landroid/app/PendingIntent;
    .param p4, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p5, "format"    # Ljava/lang/String;
    .param p6, "messageUri"    # Landroid/net/Uri;
    .param p7, "expectMore"    # Z
    .param p8, "fullMessageText"    # Ljava/lang/String;
    .param p9, "isText"    # Z
    .param p10, "persistMessage"    # Z
    .param p11, "isForVvm"    # Z
    .param p12, "messageId"    # J
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
            "Landroid/net/Uri;",
            "Z",
            "Ljava/lang/String;",
            "ZZZJ)",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;"
        }
    .end annotation

    .local p2, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v8, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v16, p11

    move-wide/from16 v17, p12

    .line 545
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-virtual/range {v0 .. v18}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->getSmsTracker(Ljava/lang/String;Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZIIZJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

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

    .line 558
    .local p2, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-super/range {p0 .. p18}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getSmsTracker(Ljava/lang/String;Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZIIZJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    .line 563
    .local v0, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object v1, p0

    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/mediatek/internal/telephony/util/MtkSmsCommonUtil;->filterOutByPpl(Landroid/content/Context;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 564
    return-object v0
.end method

.method protected getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 14
    .param p1, "scAddr"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "destinationPort"    # I
    .param p4, "originalPort"    # I
    .param p5, "data"    # [B
    .param p6, "statusReportRequested"    # Z

    .line 129
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->isCdmaMo()Z

    move-result v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/mediatek/internal/telephony/util/MtkSMSDispatcherUtil;->getSubmitPdu(ZLjava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object v0

    return-object v0
.end method

.method protected getSubmitPdu(Ljava/lang/String;Ljava/lang/String;[B[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 12
    .param p1, "scAddr"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "smsHeader"    # [B
    .param p5, "statusReportRequested"    # Z

    .line 135
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->isCdmaMo()Z

    move-result v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/mediatek/internal/telephony/util/MtkSMSDispatcherUtil;->getSubmitPdu(ZLjava/lang/String;Ljava/lang/String;[B[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object v0

    return-object v0
.end method

.method protected getSubmitPdu(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 21
    .param p1, "isCdma"    # Z
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "destinationAddress"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "statusReportRequested"    # Z
    .param p6, "header"    # [B
    .param p7, "encoding"    # I
    .param p8, "languageTable"    # I
    .param p9, "languageShiftTable"    # I
    .param p10, "validityPeriod"    # I

    .line 143
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->isCdmaMo()Z

    move-result v0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-static/range {v0 .. v9}, Lcom/mediatek/internal/telephony/util/MtkSMSDispatcherUtil;->getSubmitPdu(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object v0

    return-object v0
.end method

.method protected onSendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;)I
    .registers 22
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

    .line 516
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->mEncodingType:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 517
    .local v1, "encodingType":I
    const-string v2, "MtkImsSmsDispacher"

    if-nez v1, :cond_2b

    .line 518
    invoke-super/range {p0 .. p12}, Lcom/android/internal/telephony/ImsSmsDispatcher;->onSendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;)I

    move-result v1

    .line 521
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSendMultipartText encoding = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, p3

    goto :goto_6e

    .line 523
    :cond_2b
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 524
    .local v3, "msgCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_30
    if-ge v4, v3, :cond_6d

    .line 525
    nop

    .line 526
    move-object v5, p3

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    .line 525
    const/4 v7, 0x0

    invoke-static {v7, v6, v7}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->calculateLength(ZLjava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v6

    .line 527
    .local v6, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v7, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-eq v1, v7, :cond_68

    if-eqz v1, :cond_48

    const/4 v7, 0x1

    if-ne v1, v7, :cond_68

    .line 530
    :cond_48
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[enc conflict between details["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] and encoding "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iput v1, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 534
    :cond_68
    aput-object v6, p12, v4

    .line 524
    .end local v6    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    :cond_6d
    move-object v5, p3

    .line 537
    .end local v3    # "msgCount":I
    .end local v4    # "i":I
    :goto_6e
    return v1
.end method

.method protected onSendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 27
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

    .line 397
    move-object v11, p0

    iget-object v0, v11, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->mEncodingType:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 398
    .local v12, "encodingType":I
    if-nez v12, :cond_14

    .line 399
    invoke-super/range {p0 .. p11}, Lcom/android/internal/telephony/ImsSmsDispatcher;->onSendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object v0

    return-object v0

    .line 403
    :cond_14
    const/4 v0, 0x0

    move-object/from16 v13, p3

    invoke-static {v0, v13, v0}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->calculateLength(ZLjava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v14

    .line 404
    .local v14, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/4 v1, 0x0

    if-eqz p5, :cond_1f

    const/4 v0, 0x1

    :cond_1f
    move v5, v0

    const/4 v6, 0x0

    iget v8, v14, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iget v9, v14, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    move-object v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move v7, v12

    move/from16 v10, p11

    invoke-virtual/range {v0 .. v10}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->getSubmitPdu(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object v0

    return-object v0
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 19
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "destPort"    # I
    .param p5, "originalPort"    # I
    .param p6, "data"    # [B
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .param p8, "deliveryIntent"    # Landroid/app/PendingIntent;

    .line 186
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->isCdmaMo()Z

    move-result v0

    if-nez v0, :cond_a

    .line 187
    invoke-virtual/range {p0 .. p8}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->sendDataGsm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_19

    .line 191
    :cond_a
    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-super/range {v1 .. v9}, Lcom/android/internal/telephony/ImsSmsDispatcher;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    .line 194
    :goto_19
    return-void
.end method

.method protected sendDataGsm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 27
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "destPort"    # I
    .param p5, "originalPort"    # I
    .param p6, "data"    # [B
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .param p8, "deliveryIntent"    # Landroid/app/PendingIntent;

    .line 297
    move-object/from16 v14, p0

    const-string v7, "MtkImsSmsDispacher"

    const-string v0, "sendData: enter"

    invoke-static {v7, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/4 v15, 0x1

    if-eqz p8, :cond_e

    move v6, v15

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    move v6, v0

    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object v16

    .line 300
    .local v16, "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    if-eqz v16, :cond_55

    .line 301
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v17

    .line 302
    .local v17, "map":Ljava/util/HashMap;
    nop

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    .line 302
    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    invoke-virtual/range {v0 .. v13}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->getSmsTracker(Ljava/lang/String;Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZZJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    .line 307
    .local v0, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {v14, v15, v0}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->sendSmsByCarrierApp(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v1

    if-nez v1, :cond_54

    .line 308
    invoke-virtual {v14, v0}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 310
    .end local v0    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .end local v17    # "map":Ljava/util/HashMap;
    :cond_54
    goto :goto_5a

    .line 311
    :cond_55
    const-string v0, "sendData(): getSubmitPdu() returned null"

    invoke-static {v7, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :goto_5a
    return-void
.end method

.method public sendMultipartData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 10
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

    .line 201
    .local p5, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/SmsRawData;>;"
    .local p6, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p7, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->isCdmaMo()Z

    move-result v0

    if-nez v0, :cond_a

    .line 202
    invoke-virtual/range {p0 .. p7}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->sendMultipartDataGsm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_11

    .line 205
    :cond_a
    const-string v0, "MtkImsSmsDispacher"

    const-string v1, "Don\'t support sendMultipartData for CDMA"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :goto_11
    return-void
.end method

.method public sendMultipartDataGsm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 39
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

    .line 320
    .local p5, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/SmsRawData;>;"
    .local p6, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p7, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v14, p0

    move-object/from16 v15, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    const-string v11, "MtkImsSmsDispacher"

    if-nez v15, :cond_12

    .line 321
    const-string v0, "Cannot send multipart data when data is null!"

    invoke-static {v11, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return-void

    .line 325
    :cond_12
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->getNextConcatenatedRef()I

    move-result v0

    and-int/lit16 v10, v0, 0xff

    .line 326
    .local v10, "refNumber":I
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 328
    .local v9, "msgCount":I
    new-array v8, v9, [Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 330
    .local v8, "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    const/4 v0, 0x0

    move v7, v0

    .local v7, "i":I
    :goto_20
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge v7, v9, :cond_e1

    .line 331
    add-int/lit8 v2, v7, 0x1

    move/from16 v6, p4

    invoke-static {v6, v10, v2, v9}, Lcom/mediatek/internal/telephony/MtkSmsHeader;->getSubmitPduHeader(IIII)[B

    move-result-object v16

    .line 334
    .local v16, "smsHeader":[B
    const/4 v2, 0x0

    .line 335
    .local v2, "sentIntent":Landroid/app/PendingIntent;
    if-eqz v12, :cond_3f

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v7, :cond_3f

    .line 336
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/app/PendingIntent;

    move-object/from16 v17, v2

    goto :goto_41

    .line 339
    :cond_3f
    move-object/from16 v17, v2

    .end local v2    # "sentIntent":Landroid/app/PendingIntent;
    .local v17, "sentIntent":Landroid/app/PendingIntent;
    :goto_41
    const/4 v2, 0x0

    .line 340
    .local v2, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz v13, :cond_54

    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v7, :cond_54

    .line 341
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/app/PendingIntent;

    move-object/from16 v18, v2

    goto :goto_56

    .line 344
    :cond_54
    move-object/from16 v18, v2

    .end local v2    # "deliveryIntent":Landroid/app/PendingIntent;
    .local v18, "deliveryIntent":Landroid/app/PendingIntent;
    :goto_56
    nop

    .line 345
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SmsRawData;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v3

    if-eqz v18, :cond_65

    move v5, v1

    goto :goto_66

    :cond_65
    move v5, v0

    .line 344
    :goto_66
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move-object/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;[B[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object v19

    .line 346
    .local v19, "pdus":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    if-eqz v19, :cond_d7

    .line 347
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SmsRawData;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v20

    .line 351
    .local v20, "map":Ljava/util/HashMap;
    nop

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v5

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v6, v21

    move/from16 v21, v7

    .end local v7    # "i":I
    .local v21, "i":I
    move/from16 v7, v22

    move-object/from16 v29, v8

    .end local v8    # "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .local v29, "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v8, v23

    move/from16 v22, v9

    .end local v9    # "msgCount":I
    .local v22, "msgCount":I
    move/from16 v9, v24

    move/from16 v23, v10

    .end local v10    # "refNumber":I
    .local v23, "refNumber":I
    move/from16 v10, v25

    move-object/from16 v30, v11

    move/from16 v11, v26

    move-wide/from16 v12, v27

    invoke-virtual/range {v0 .. v13}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->getSmsTracker(Ljava/lang/String;Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZZJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    move-object/from16 v2, v29

    .end local v29    # "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .local v2, "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    aput-object v0, v2, v21

    .line 356
    .end local v20    # "map":Ljava/util/HashMap;
    nop

    .line 330
    .end local v16    # "smsHeader":[B
    .end local v17    # "sentIntent":Landroid/app/PendingIntent;
    .end local v18    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v19    # "pdus":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    add-int/lit8 v7, v21, 0x1

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object v8, v2

    move/from16 v9, v22

    move/from16 v10, v23

    move-object/from16 v11, v30

    .end local v21    # "i":I
    .restart local v7    # "i":I
    goto/16 :goto_20

    .line 357
    .end local v2    # "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .end local v22    # "msgCount":I
    .end local v23    # "refNumber":I
    .restart local v8    # "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .restart local v9    # "msgCount":I
    .restart local v10    # "refNumber":I
    .restart local v16    # "smsHeader":[B
    .restart local v17    # "sentIntent":Landroid/app/PendingIntent;
    .restart local v18    # "deliveryIntent":Landroid/app/PendingIntent;
    .restart local v19    # "pdus":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_d7
    move-object/from16 v30, v11

    const-string v0, "sendMultipartDataGsm(): getSubmitPdu() returned null"

    move-object/from16 v3, v30

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return-void

    .line 330
    .end local v16    # "smsHeader":[B
    .end local v17    # "sentIntent":Landroid/app/PendingIntent;
    .end local v18    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v19    # "pdus":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_e1
    move/from16 v21, v7

    move-object v2, v8

    move/from16 v22, v9

    move/from16 v23, v10

    move-object v3, v11

    .line 362
    .end local v7    # "i":I
    .end local v8    # "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .end local v9    # "msgCount":I
    .end local v10    # "refNumber":I
    .restart local v2    # "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .restart local v22    # "msgCount":I
    .restart local v23    # "refNumber":I
    array-length v4, v2

    if-eqz v4, :cond_10b

    aget-object v4, v2, v0

    if-nez v4, :cond_f1

    goto :goto_10b

    .line 368
    :cond_f1
    array-length v4, v2

    :goto_f2
    if-ge v0, v4, :cond_10a

    aget-object v5, v2, v0

    .line 369
    .local v5, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    if-eqz v5, :cond_102

    .line 370
    invoke-virtual {v14, v1, v5}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->sendSmsByCarrierApp(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v6

    if-nez v6, :cond_107

    .line 371
    invoke-virtual {v14, v5}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_107

    .line 374
    :cond_102
    const-string v6, "Null tracker."

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    .end local v5    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_107
    :goto_107
    add-int/lit8 v0, v0, 0x1

    goto :goto_f2

    .line 377
    :cond_10a
    return-void

    .line 363
    :cond_10b
    :goto_10b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot send multipart data. trackers length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
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

    .line 428
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v15, p0

    move-object/from16 v14, p3

    move-object/from16 v13, p4

    move-object/from16 v12, p5

    invoke-virtual {v15, v14}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->getMultipartMessageText(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v19

    .line 429
    .local v19, "fullMessageText":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->getNextConcatenatedRef()I

    move-result v0

    and-int/lit16 v11, v0, 0xff

    .line 430
    .local v11, "refNumber":I
    const/16 v16, 0x0

    .line 431
    .local v16, "encoding":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 432
    .local v10, "msgCount":I
    const/4 v9, 0x1

    if-ge v10, v9, :cond_1f

    .line 433
    invoke-virtual {v15, v13}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->triggerSentIntentForFailure(Ljava/util/List;)V

    .line 434
    return-void

    .line 437
    :cond_1f
    new-array v8, v10, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    .line 439
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

    invoke-virtual/range {v0 .. v12}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->onSendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;)I

    move-result v12

    .line 443
    .end local v16    # "encoding":I
    .local v12, "encoding":I
    new-array v9, v15, [Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 446
    .local v9, "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    new-instance v10, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v10, v15}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 447
    .local v10, "unsentPartCount":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v11, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    invoke-direct {v11, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 449
    .local v11, "anyPartFailed":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v0, 0x0

    move v7, v0

    .local v7, "i":I
    :goto_53
    if-ge v7, v15, :cond_121

    .line 450
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    move-object v6, v0

    .line 451
    .local v6, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iput v14, v6, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 452
    add-int/lit8 v0, v7, 0x1

    iput v0, v6, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 453
    iput v15, v6, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 460
    const/4 v5, 0x1

    iput-boolean v5, v6, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 464
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v0

    const-class v1, Lcom/android/internal/telephony/TelephonyComponentFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v21

    .line 465
    .local v21, "telephonyComponentFactory":Lcom/android/internal/telephony/TelephonyComponentFactory;
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeSmsHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v4

    .line 467
    .local v4, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iput-object v6, v4, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 470
    if-ne v12, v5, :cond_88

    .line 471
    aget-object v0, v20, v7

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iput v0, v4, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 472
    aget-object v0, v20, v7

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    iput v0, v4, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 475
    :cond_88
    const/4 v0, 0x0

    .line 476
    .local v0, "sentIntent":Landroid/app/PendingIntent;
    if-eqz v13, :cond_9b

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v7, :cond_9b

    .line 477
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/app/PendingIntent;

    move-object/from16 v22, v0

    goto :goto_9d

    .line 480
    :cond_9b
    move-object/from16 v22, v0

    .end local v0    # "sentIntent":Landroid/app/PendingIntent;
    .local v22, "sentIntent":Landroid/app/PendingIntent;
    :goto_9d
    const/4 v0, 0x0

    .line 481
    .local v0, "deliveryIntent":Landroid/app/PendingIntent;
    move-object/from16 v3, p5

    if-eqz v3, :cond_b2

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v7, :cond_b2

    .line 482
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/app/PendingIntent;

    move-object/from16 v23, v0

    goto :goto_b4

    .line 485
    :cond_b2
    move-object/from16 v23, v0

    .end local v0    # "deliveryIntent":Landroid/app/PendingIntent;
    .local v23, "deliveryIntent":Landroid/app/PendingIntent;
    :goto_b4
    nop

    .line 486
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

    invoke-virtual/range {v0 .. v18}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->getNewSubmitPduTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;IZIJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    move-object/from16 v1, v29

    .end local v29    # "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .local v1, "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    aput-object v0, v1, v27

    .line 490
    aget-object v0, v1, v27

    if-nez v0, :cond_10f

    .line 491
    move-object/from16 v0, p0

    move-object/from16 v2, p4

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->triggerSentIntentForFailure(Ljava/util/List;)V

    .line 492
    return-void

    .line 490
    :cond_10f
    move-object/from16 v0, p0

    move-object/from16 v2, p4

    .line 449
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

    .line 496
    .end local v7    # "i":I
    .end local v9    # "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .end local v12    # "encoding":I
    .end local v14    # "refNumber":I
    .end local v15    # "msgCount":I
    .restart local v1    # "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .restart local v24    # "refNumber":I
    .restart local v30    # "encoding":I
    .restart local v31    # "msgCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v3

    .line 497
    .local v3, "carrierPackage":Ljava/lang/String;
    const-string v4, "MtkImsSmsDispacher"

    if-eqz v3, :cond_14c

    .line 498
    const-string v5, "Found carrier package."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

    move-object/from16 v5, p3

    invoke-direct {v4, v0, v5, v1}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Ljava/util/ArrayList;[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 500
    .local v4, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;
    new-instance v6, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;

    invoke-direct {v6, v0, v4}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;)V

    invoke-virtual {v4, v3, v6}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;)V

    .line 502
    .end local v4    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;
    goto :goto_160

    .line 503
    :cond_14c
    move-object/from16 v5, p3

    const-string v6, "No carrier package."

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    array-length v4, v1

    move/from16 v8, v28

    :goto_156
    if-ge v8, v4, :cond_160

    aget-object v6, v1, v8

    .line 505
    .local v6, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {v0, v6}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 504
    .end local v6    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    add-int/lit8 v8, v8, 0x1

    goto :goto_156

    .line 508
    :cond_160
    :goto_160
    return-void
.end method

.method public sendMultipartTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI)V
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

    .line 232
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->isCdmaMo()Z

    move-result v0

    if-nez v0, :cond_a

    .line 233
    invoke-virtual/range {p0 .. p12}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->sendMultipartTextWithEncodingTypeGsm(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI)V

    goto :goto_26

    .line 238
    :cond_a
    const-wide/16 v13, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-virtual/range {v1 .. v14}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZIJ)V

    .line 242
    :goto_26
    return-void
.end method

.method public sendMultipartTextWithEncodingTypeGsm(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI)V
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

    .line 415
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

    const-string v1, "MtkImsSmsDispacher"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->mEncodingType:Ljava/lang/ThreadLocal;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 417
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

    invoke-virtual/range {v0 .. v13}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZIJ)V

    .line 419
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->mEncodingType:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 420
    return-void
.end method

.method public sendTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)V
    .registers 29
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

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->isCdmaMo()Z

    move-result v0

    if-nez v0, :cond_a

    .line 215
    invoke-virtual/range {p0 .. p12}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->sendTextWithEncodingTypeGsm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)V

    goto :goto_28

    .line 220
    :cond_a
    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-virtual/range {v1 .. v15}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZIZJ)V

    .line 225
    :goto_28
    return-void
.end method

.method public sendTextWithEncodingTypeGsm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)V
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

    .line 384
    move-object/from16 v15, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendTextWithEncodingTypeGsm encoding = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p4

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkImsSmsDispacher"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v0, v15, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->mEncodingType:Ljava/lang/ThreadLocal;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 386
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

    invoke-virtual/range {v0 .. v14}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZIZJ)V

    .line 388
    iget-object v0, v15, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->mEncodingType:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 389
    return-void
.end method

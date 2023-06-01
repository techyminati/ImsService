.class public final Lcom/mediatek/internal/telephony/util/MtkSMSDispatcherUtil;
.super Ljava/lang/Object;
.source "MtkSMSDispatcherUtil.java"


# static fields
.field private static final ENG:Z

.field static final TAG:Ljava/lang/String; = "MtkSMSDispatcherUtil"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 66
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/util/MtkSMSDispatcherUtil;->ENG:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateLength(ZLjava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .registers 4
    .param p0, "isCdma"    # Z
    .param p1, "messageBody"    # Ljava/lang/CharSequence;
    .param p2, "use7bitOnly"    # Z

    .line 275
    if-eqz p0, :cond_7

    .line 276
    invoke-static {p1, p2}, Lcom/mediatek/internal/telephony/util/MtkSMSDispatcherUtil;->calculateLengthCdma(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0

    .line 278
    :cond_7
    invoke-static {p1, p2}, Lcom/mediatek/internal/telephony/util/MtkSMSDispatcherUtil;->calculateLengthGsm(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public static calculateLengthCdma(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .registers 3
    .param p0, "messageBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z

    .line 305
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public static calculateLengthGsm(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .registers 3
    .param p0, "messageBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z

    .line 291
    invoke-static {p0, p1}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method private static checkPhoneNumber(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 479
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_23

    :cond_8
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_23

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_23

    const/16 v0, 0x23

    if-eq p0, v0, :cond_23

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_23

    const/16 v0, 0x20

    if-eq p0, v0, :cond_23

    const/16 v0, 0x2d

    if-ne p0, v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    :goto_24
    return v0
.end method

.method public static checkPhoneNumber(Ljava/lang/String;)Z
    .registers 5
    .param p0, "address"    # Ljava/lang/String;

    .line 484
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 485
    return v0

    .line 488
    :cond_4
    const-string v1, "MtkSMSDispatcherUtil"

    const-string v2, "checkPhoneNumber"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "n":I
    :goto_10
    if-ge v1, v2, :cond_22

    .line 490
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/util/MtkSMSDispatcherUtil;->checkPhoneNumber(C)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 491
    nop

    .line 489
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 493
    :cond_20
    const/4 v0, 0x0

    return v0

    .line 497
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_22
    return v0
.end method

.method public static getPackageNameViaProcessId(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .registers 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageNames"    # [Ljava/lang/String;

    .line 355
    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 356
    .local v1, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 358
    .local v2, "rsp":Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_e

    .line 359
    aget-object v1, v0, v4

    move-object/from16 v7, p0

    goto :goto_61

    .line 360
    :cond_e
    array-length v3, v0

    if-le v3, v5, :cond_5f

    .line 361
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 362
    .local v3, "callingPid":I
    const/4 v5, 0x0

    .line 364
    .local v5, "index":Ljava/util/Iterator;
    const-string v6, "activity"

    move-object/from16 v7, p0

    invoke-virtual {v7, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 366
    .local v6, "am":Landroid/app/ActivityManager;
    invoke-virtual {v6}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v8

    .line 367
    .local v8, "processList":Ljava/util/List;
    if-eqz v8, :cond_61

    .line 368
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 369
    :goto_2a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_61

    .line 370
    nop

    .line 371
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 372
    .local v9, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v10, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v10, :cond_5d

    .line 373
    iget-object v10, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v11, v10

    move v12, v4

    :goto_3f
    if-ge v12, v11, :cond_5c

    aget-object v13, v10, v12

    .line 374
    .local v13, "pkgInProcess":Ljava/lang/String;
    array-length v14, v0

    move v15, v4

    :goto_45
    if-ge v15, v14, :cond_55

    aget-object v4, v0, v15

    .line 375
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_51

    .line 376
    move-object v1, v4

    .line 377
    goto :goto_55

    .line 374
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_51
    add-int/lit8 v15, v15, 0x1

    const/4 v4, 0x0

    goto :goto_45

    .line 380
    :cond_55
    :goto_55
    if-eqz v1, :cond_58

    .line 381
    goto :goto_5c

    .line 373
    .end local v13    # "pkgInProcess":Ljava/lang/String;
    :cond_58
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x0

    goto :goto_3f

    .line 384
    :cond_5c
    :goto_5c
    goto :goto_61

    .line 386
    .end local v9    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_5d
    const/4 v4, 0x0

    goto :goto_2a

    .line 360
    .end local v3    # "callingPid":I
    .end local v5    # "index":Ljava/util/Iterator;
    .end local v6    # "am":Landroid/app/ActivityManager;
    .end local v8    # "processList":Ljava/util/List;
    :cond_5f
    move-object/from16 v7, p0

    .line 390
    :cond_61
    :goto_61
    if-eqz v1, :cond_64

    .line 391
    move-object v2, v1

    .line 394
    :cond_64
    sget-boolean v3, Lcom/mediatek/internal/telephony/util/MtkSMSDispatcherUtil;->ENG:Z

    if-eqz v3, :cond_7e

    .line 395
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPackageNameViaProcessId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MtkSMSDispatcherUtil"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_7e
    return-object v2
.end method

.method public static getSubmitPdu(ZLjava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 8
    .param p0, "isCdma"    # Z
    .param p1, "scAddr"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "destinationPort"    # I
    .param p4, "originalPort"    # I
    .param p5, "data"    # [B
    .param p6, "statusReportRequested"    # Z

    .line 327
    if-eqz p0, :cond_4

    .line 329
    const/4 v0, 0x0

    return-object v0

    .line 331
    :cond_4
    invoke-static/range {p1 .. p6}, Lcom/mediatek/internal/telephony/util/MtkSMSDispatcherUtil;->getSubmitPduGsm(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(ZLjava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 7
    .param p0, "isCdma"    # Z
    .param p1, "scAddr"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "message"    # [B
    .param p5, "statusReportRequested"    # Z

    .line 225
    if-eqz p0, :cond_7

    .line 226
    invoke-static {p1, p2, p3, p4, p5}, Lcom/mediatek/internal/telephony/util/MtkSMSDispatcherUtil;->getSubmitPduCdma(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object v0

    return-object v0

    .line 228
    :cond_7
    invoke-static {p1, p2, p3, p4, p5}, Lcom/mediatek/internal/telephony/util/MtkSMSDispatcherUtil;->getSubmitPduGsm(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 7
    .param p0, "isCdma"    # Z
    .param p1, "scAddr"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "statusReportRequested"    # Z
    .param p5, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;

    .line 84
    if-eqz p0, :cond_7

    .line 85
    invoke-static {p1, p2, p3, p4, p5}, Lcom/mediatek/internal/telephony/util/MtkSMSDispatcherUtil;->getSubmitPduCdma(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object v0

    return-object v0

    .line 87
    :cond_7
    invoke-static {p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/util/MtkSMSDispatcherUtil;->getSubmitPduGsm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;II)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 9
    .param p0, "isCdma"    # Z
    .param p1, "scAddr"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "statusReportRequested"    # Z
    .param p5, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p6, "priority"    # I
    .param p7, "validityPeriod"    # I

    .line 121
    if-eqz p0, :cond_7

    .line 122
    invoke-static/range {p1 .. p6}, Lcom/mediatek/internal/telephony/util/MtkSMSDispatcherUtil;->getSubmitPduCdma(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;I)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object v0

    return-object v0

    .line 125
    :cond_7
    invoke-static {p1, p2, p3, p4, p7}, Lcom/mediatek/internal/telephony/util/MtkSMSDispatcherUtil;->getSubmitPduGsm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 11
    .param p0, "isCdma"    # Z
    .param p1, "scAddress"    # Ljava/lang/String;
    .param p2, "destinationAddress"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "statusReportRequested"    # Z
    .param p5, "header"    # [B
    .param p6, "encoding"    # I
    .param p7, "languageTable"    # I
    .param p8, "languageShiftTable"    # I
    .param p9, "validityPeriod"    # I

    .line 460
    if-nez p0, :cond_7

    .line 461
    invoke-static/range {p1 .. p9}, Lcom/mediatek/internal/telephony/util/MtkSMSDispatcherUtil;->getSubmitPduGsm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object v0

    return-object v0

    .line 465
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSubmitPdu(ZLjava/lang/String;Ljava/lang/String;[B[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 7
    .param p0, "isCdma"    # Z
    .param p1, "scAddress"    # Ljava/lang/String;
    .param p2, "destinationAddress"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "smsHeaderData"    # [B
    .param p5, "statusReportRequested"    # Z

    .line 415
    if-nez p0, :cond_7

    .line 416
    invoke-static {p1, p2, p3, p4, p5}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;[B[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0

    .line 420
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSubmitPduCdma(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 6
    .param p0, "scAddr"    # Ljava/lang/String;
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "destPort"    # I
    .param p3, "message"    # [B
    .param p4, "statusReportRequested"    # Z

    .line 244
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPduCdma(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 6
    .param p0, "scAddr"    # Ljava/lang/String;
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;

    .line 180
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPduCdma(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;I)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 7
    .param p0, "scAddr"    # Ljava/lang/String;
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p5, "priority"    # I

    .line 208
    invoke-static/range {p0 .. p5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPduGsm(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 7
    .param p0, "scAddr"    # Ljava/lang/String;
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "destinationPort"    # I
    .param p3, "originalPort"    # I
    .param p4, "data"    # [B
    .param p5, "statusReportRequested"    # Z

    .line 349
    invoke-static/range {p0 .. p5}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPduGsm(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 6
    .param p0, "scAddr"    # Ljava/lang/String;
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "destPort"    # I
    .param p3, "message"    # [B
    .param p4, "statusReportRequested"    # Z

    .line 260
    invoke-static {p0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPduGsm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 5
    .param p0, "scAddr"    # Ljava/lang/String;
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z

    .line 142
    invoke-static {p0, p1, p2, p3}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPduGsm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 6
    .param p0, "scAddr"    # Ljava/lang/String;
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "validityPeriod"    # I

    .line 163
    invoke-static {p0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPduGsm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 10
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "header"    # [B
    .param p5, "encoding"    # I
    .param p6, "languageTable"    # I
    .param p7, "languageShiftTable"    # I
    .param p8, "validityPeriod"    # I

    .line 473
    invoke-static/range {p0 .. p8}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPduGsm(Ljava/lang/String;Ljava/lang/String;[B[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 6
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "smsHeaderData"    # [B
    .param p4, "statusReportRequested"    # Z

    .line 439
    invoke-static {p0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;[B[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

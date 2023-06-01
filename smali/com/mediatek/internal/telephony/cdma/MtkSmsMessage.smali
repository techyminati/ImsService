.class public Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;
.super Lcom/android/internal/telephony/cdma/SmsMessage;
.source "MtkSmsMessage.java"


# static fields
.field private static final LOGGABLE_TAG:Ljava/lang/String; = "CDMA:SMS"

.field private static final LOG_TAG:Ljava/lang/String; = "MtkCdmaSmsMessage"

.field private static final RETURN_ACK:I = 0x1

.field private static sPlusCodeUtils:Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 76
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeProcessor;->getPlusCodeUtils()Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->sPlusCodeUtils:Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 71
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .registers 7
    .param p0, "messageBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "encodingType"    # I

    .line 588
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 589
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x111013d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 590
    const-string v1, "MtkCdmaSmsMessage"

    const-string v2, "here use BearerData.calcTextEncodingDetails, but divide in parent class will use Sms7BitEncodingTranslator.translate(messageBody) returned string instead again in this case, Caution!!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    const-string v3, "search calculateLengthCDMA for help!"

    invoke-static {v1, v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 596
    :cond_1e
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->calcTextEncodingDetails(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    return-object v1
.end method

.method public static createEfPdu(Ljava/lang/String;Ljava/lang/String;J)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .registers 13
    .param p0, "destinationAddress"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "timeStamp"    # J

    .line 347
    const/4 v0, 0x0

    if-eqz p0, :cond_58

    if-nez p1, :cond_6

    goto :goto_58

    .line 351
    :cond_6
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 352
    .local v1, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p1, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 353
    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 375
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    const-string v2, "createEfPdu, input timeStamp = "

    const-string v3, "MtkCdmaSmsMessage"

    if-lez v0, :cond_36

    .line 376
    move-wide v4, p2

    .line 377
    .local v4, "scTimeMillis":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", out scTimeMillis = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    nop

    .line 381
    .end local v4    # "scTimeMillis":J
    goto :goto_4d

    .line 382
    :cond_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", dont assign time zone to this invalid value"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :goto_4d
    const/4 v3, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object v2, p0

    move-object v4, v1

    move-wide v5, p2

    invoke-static/range {v2 .. v8}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->privateGetPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;JII)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0

    .line 348
    .end local v1    # "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_58
    :goto_58
    return-object v0
.end method

.method public static createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;
    .registers 9
    .param p0, "index"    # I
    .param p1, "data"    # [B

    .line 90
    const-string v0, "MtkCdmaSmsMessage"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;-><init>()V

    .line 92
    .local v2, "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    iput p0, v2, Lcom/android/internal/telephony/cdma/SmsMessage;->mIndexOnIcc:I

    .line 97
    const/4 v3, 0x0

    aget-byte v4, p1, v3

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-nez v4, :cond_17

    .line 98
    const-string v3, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-object v1

    .line 101
    :cond_17
    aget-byte v4, p1, v3

    and-int/lit8 v4, v4, 0x7

    iput v4, v2, Lcom/android/internal/telephony/cdma/SmsMessage;->mStatusOnIcc:I

    .line 106
    aget-byte v4, p1, v5

    and-int/lit16 v4, v4, 0xff

    .line 110
    .local v4, "size":I
    new-array v5, v4, [B

    .line 111
    .local v5, "pdu":[B
    const/4 v6, 0x2

    invoke-static {p1, v6, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->parsePduFromEfRecord([B)V
    :try_end_2a
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_2a} :catch_2b

    .line 115
    return-object v2

    .line 116
    .end local v2    # "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    .end local v4    # "size":I
    .end local v5    # "pdu":[B
    :catch_2b
    move-exception v2

    .line 117
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v0, v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    return-object v1
.end method

.method private static getMaskString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .line 635
    if-nez p0, :cond_5

    .line 636
    const-string v0, "null"

    return-object v0

    .line 637
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_29

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "xxxxx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 640
    :cond_29
    const-string v0, "xx"

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .registers 10
    .param p0, "destAddr"    # Ljava/lang/String;
    .param p1, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p2, "statusReportRequested"    # Z

    .line 333
    const-wide/16 v3, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v0, p0

    move v1, p2

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->privateGetPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;JII)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .registers 12
    .param p0, "scAddr"    # Ljava/lang/String;
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "destPort"    # I
    .param p3, "originalPort"    # I
    .param p4, "data"    # [B
    .param p5, "statusReportRequested"    # Z

    .line 296
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 297
    .local v0, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p2, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 298
    iput p3, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 299
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 301
    new-instance v2, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v2}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 302
    .local v2, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iput-object v0, v2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 304
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 308
    .local v3, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    if-nez p3, :cond_25

    .line 309
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 310
    const-string v4, "MtkCdmaSmsMessage"

    const-string v5, "getSubmitPdu(with dest&original port), clear the header."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 312
    :cond_25
    iput-object v2, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 314
    :goto_27
    iput v1, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 315
    const/4 v1, 0x1

    iput-boolean v1, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 316
    iput-object p4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 318
    invoke-static {p1, p5, v3}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    return-object v1
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;IIIZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .registers 22
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destAddrStr"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p5, "encodingtype"    # I
    .param p6, "validityPeriod"    # I
    .param p7, "priority"    # I
    .param p8, "use7BitAscii"    # Z

    .line 540
    move-object v0, p2

    move/from16 v1, p5

    move/from16 v2, p6

    const/4 v3, 0x0

    const-string v4, "MtkCdmaSmsMessage"

    if-eqz p1, :cond_61

    if-nez v0, :cond_f

    move-object/from16 v12, p4

    goto :goto_63

    .line 545
    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 546
    const-string v5, "getSubmitPdu, destination address is empty. do nothing."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    return-object v3

    .line 550
    :cond_1b
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_27

    .line 551
    const-string v5, "getSubmitPdu, message text is empty. do nothing."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    return-object v3

    .line 555
    :cond_27
    const/16 v3, 0xf4

    if-le v2, v3, :cond_31

    const/16 v3, 0xff

    if-gt v2, v3, :cond_31

    .line 556
    const/16 v2, 0xf4

    .line 559
    .end local p6    # "validityPeriod":I
    .local v2, "validityPeriod":I
    :cond_31
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 560
    .local v3, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object v0, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 561
    move-object/from16 v12, p4

    iput-object v12, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 564
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v1, v5, :cond_48

    .line 565
    if-eqz p8, :cond_43

    goto :goto_45

    .line 566
    :cond_43
    const/16 v4, 0x9

    :goto_45
    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_51

    .line 567
    :cond_48
    if-ne v1, v4, :cond_4e

    .line 568
    const/4 v4, 0x0

    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_51

    .line 570
    :cond_4e
    const/4 v4, 0x4

    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 572
    :goto_51
    iput-boolean v5, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 574
    const-wide/16 v8, 0x0

    move-object v5, p1

    move/from16 v6, p3

    move-object v7, v3

    move v10, v2

    move/from16 v11, p7

    invoke-static/range {v5 .. v11}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->privateGetPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;JII)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v4

    return-object v4

    .line 540
    .end local v2    # "validityPeriod":I
    .end local v3    # "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    .restart local p6    # "validityPeriod":I
    :cond_61
    move-object/from16 v12, p4

    .line 541
    :goto_63
    const-string v5, "getSubmitPdu, null sms text or destination address. do nothing."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    return-object v3
.end method

.method private static handlePlusCodeInternal(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "ton"    # I
    .param p1, "number"    # Ljava/lang/String;

    .line 645
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->sPlusCodeUtils:Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;->removeIddNddAddPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 646
    .local v0, "ret":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 647
    const/4 v1, 0x0

    return-object v1

    .line 649
    :cond_e
    const/4 v1, 0x1

    if-ne p0, v1, :cond_2b

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_2b

    .line 650
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 652
    :cond_2b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePlusCodeInternal, ton = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " number = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    invoke-static {p1}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " the address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 652
    const-string v2, "MtkCdmaSmsMessage"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    return-object v0
.end method

.method public static newMtkSmsMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;
    .registers 4
    .param p0, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 607
    if-nez p0, :cond_4

    .line 608
    const/4 v0, 0x0

    return-object v0

    .line 610
    :cond_4
    new-instance v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;-><init>()V

    .line 611
    .local v0, "mtkSms":Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mScAddress:Ljava/lang/String;

    .line 612
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iput-object v1, v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 613
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mMessageBody:Ljava/lang/String;

    .line 614
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mPseudoSubject:Ljava/lang/String;

    .line 615
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getEmailFrom()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mEmailFrom:Ljava/lang/String;

    .line 616
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getEmailBody()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mEmailBody:Ljava/lang/String;

    .line 617
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->isEmail()Z

    move-result v1

    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mIsEmail:Z

    .line 618
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTimestampMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mScTimeMillis:J

    .line 619
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mPdu:[B

    .line 620
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mUserData:[B

    .line 621
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 622
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mIsMwi:Z

    .line 623
    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mMwiSense:Z

    .line 624
    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mMwiDontStore:Z

    .line 625
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getStatusOnIcc()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mStatusOnIcc:I

    .line 626
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getIndexOnIcc()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mIndexOnIcc:I

    .line 627
    iget v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    iput v1, v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mMessageRef:I

    .line 628
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getStatus()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    iput v1, v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->status:I

    .line 629
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iput-object v1, v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 630
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iput-object v1, v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    .line 631
    return-object v0
.end method

.method private static privateGetPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;JII)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .registers 23
    .param p0, "destAddrStr"    # Ljava/lang/String;
    .param p1, "statusReportRequested"    # Z
    .param p2, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p3, "timeStamp"    # J
    .param p5, "validityPeriod"    # I
    .param p6, "priority"    # I

    .line 413
    move/from16 v1, p5

    move/from16 v2, p6

    .line 414
    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 413
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v3

    .line 415
    .local v3, "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    const/4 v4, 0x0

    if-nez v3, :cond_10

    .line 416
    return-object v4

    .line 418
    :cond_10
    iget v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    const/16 v5, 0x24

    const-string v6, "MtkCdmaSmsMessage"

    if-le v0, v5, :cond_1e

    .line 419
    const-string v0, "number of digit exceeds the SMS_ADDRESS_MAX"

    invoke-static {v6, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return-object v4

    .line 422
    :cond_1e
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    move-object v5, v0

    .line 423
    .local v5, "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v0, 0x2

    iput v0, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 425
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->getNextMessageId()I

    move-result v7

    iput v7, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 427
    move/from16 v7, p1

    iput-boolean v7, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 428
    const/4 v8, 0x0

    iput-boolean v8, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 429
    iput-boolean v8, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 430
    iput-boolean v8, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 432
    move-object/from16 v9, p2

    iput-object v9, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 434
    const-wide/16 v10, 0x0

    cmp-long v10, p3, v10

    if-lez v10, :cond_48

    .line 436
    invoke-static/range {p3 .. p4}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->fromMillis(J)Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    move-result-object v10

    iput-object v10, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 440
    :cond_48
    const/4 v10, 0x1

    if-ltz v1, :cond_50

    .line 441
    iput-boolean v10, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelativeSet:Z

    .line 442
    iput v1, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelative:I

    goto :goto_52

    .line 444
    :cond_50
    iput-boolean v8, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelativeSet:Z

    .line 448
    :goto_52
    if-ltz v2, :cond_59

    .line 449
    iput-boolean v10, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 450
    iput v2, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    goto :goto_5b

    .line 452
    :cond_59
    iput-boolean v8, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 455
    :goto_5b
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v11

    .line 456
    .local v11, "encodedBearerData":[B
    const-string v12, "CDMA:SMS"

    invoke-static {v12, v0}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MO (encoded) BearerData = "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    if-eqz v11, :cond_9a

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MO raw BearerData = \'"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-static {v11}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\'"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 459
    invoke-static {v6, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_9a
    if-nez v11, :cond_9d

    .line 464
    return-object v4

    .line 466
    :cond_9d
    iget-boolean v0, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    if-eqz v0, :cond_a4

    .line 467
    const/16 v0, 0x1005

    goto :goto_a6

    :cond_a4
    const/16 v0, 0x1002

    :goto_a6
    move v12, v0

    .line 470
    .local v12, "teleservice":I
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    move-object v13, v0

    .line 471
    .local v13, "envelope":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    iput v8, v13, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 472
    iput v12, v13, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 473
    iput-object v3, v13, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 474
    iput v10, v13, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 475
    iput-object v11, v13, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 487
    :try_start_b7
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v10, 0x64

    invoke-direct {v0, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 488
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v10, Ljava/io/DataOutputStream;

    invoke-direct {v10, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 489
    .local v10, "dos":Ljava/io/DataOutputStream;
    iget v14, v13, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 490
    invoke-virtual {v10, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 491
    invoke-virtual {v10, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 492
    iget v14, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->write(I)V

    .line 493
    iget v14, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->write(I)V

    .line 494
    iget v14, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->write(I)V

    .line 495
    iget v14, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->write(I)V

    .line 496
    iget v14, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->write(I)V

    .line 497
    iget-object v14, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    iget-object v15, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v15, v15

    invoke-virtual {v10, v14, v8, v15}, Ljava/io/DataOutputStream;->write([BII)V

    .line 499
    invoke-virtual {v10, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 500
    invoke-virtual {v10, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 501
    invoke-virtual {v10, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 502
    array-length v14, v11

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->write(I)V

    .line 503
    array-length v14, v11

    invoke-virtual {v10, v11, v8, v14}, Ljava/io/DataOutputStream;->write([BII)V

    .line 504
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V

    .line 506
    new-instance v8, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    invoke-direct {v8}, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;-><init>()V

    .line 507
    .local v8, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    iput-object v14, v8, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 508
    iput-object v4, v8, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B
    :try_end_110
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_110} :catch_111

    .line 509
    return-object v8

    .line 510
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v10    # "dos":Ljava/io/DataOutputStream;
    :catch_111
    move-exception v0

    .line 511
    .local v0, "ex":Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "creating SubmitPdu failed: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    .end local v0    # "ex":Ljava/io/IOException;
    return-object v4
.end method

.method private static replaceIddNddWithPluscode(Lcom/android/internal/telephony/SmsAddress;)V
    .registers 5
    .param p0, "addr"    # Lcom/android/internal/telephony/SmsAddress;

    .line 660
    if-nez p0, :cond_3

    .line 661
    return-void

    .line 664
    :cond_3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 665
    .local v0, "orignalStr":Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->handlePlusCodeInternal(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 666
    .local v1, "number":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 667
    return-void

    .line 669
    :cond_17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 670
    .local v2, "changed":Z
    if-eqz v2, :cond_27

    .line 671
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .line 672
    iput-object v1, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 674
    :cond_27
    return-void
.end method


# virtual methods
.method public getDestinationAddress()Ljava/lang/String;
    .registers 2

    .line 683
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginatingAddress()Ljava/lang/String;
    .registers 2

    .line 266
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->replaceIddNddWithPluscode(Lcom/android/internal/telephony/SmsAddress;)V

    .line 267
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parsePduFromEfRecord([B)V
    .registers 21
    .param p1, "pdu"    # [B

    .line 128
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "MtkCdmaSmsMessage"

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v4, v0

    .line 129
    .local v4, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v5, v0

    .line 130
    .local v5, "dis":Ljava/io/DataInputStream;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    move-object v6, v0

    .line 131
    .local v6, "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    move-object v7, v0

    .line 132
    .local v7, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;-><init>()V

    move-object v8, v0

    .line 134
    .local v8, "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :try_start_24
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 135
    :goto_2a
    invoke-virtual {v5}, Ljava/io/DataInputStream;->available()I

    move-result v0

    if-lez v0, :cond_1f1

    .line 136
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 137
    .local v0, "parameterId":I
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v9

    .line 138
    .local v9, "parameterLen":I
    new-array v10, v9, [B
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_3a} :catch_1fc

    .line 139
    .local v10, "parameterData":[B
    const/4 v11, 0x2

    const/4 v12, 0x6

    const/4 v13, 0x3

    const/16 v15, 0x8

    const/4 v14, 0x0

    packed-switch v0, :pswitch_data_21c

    .line 250
    move-object/from16 v18, v8

    move/from16 v17, v9

    .end local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .end local v9    # "parameterLen":I
    .local v17, "parameterLen":I
    .local v18, "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :try_start_47
    new-instance v8, Ljava/lang/Exception;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_49} :catch_1fa

    goto/16 :goto_1d7

    .line 246
    .end local v17    # "parameterLen":I
    .end local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v9    # "parameterLen":I
    :pswitch_4b
    :try_start_4b
    invoke-virtual {v5, v10, v14, v9}, Ljava/io/DataInputStream;->read([BII)I

    .line 247
    iput-object v10, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 248
    move-object/from16 v18, v8

    goto/16 :goto_1d3

    .line 238
    :pswitch_54
    invoke-virtual {v5, v10, v14, v9}, Ljava/io/DataInputStream;->read([BII)I

    .line 239
    new-instance v13, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v13, v10}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 240
    .local v13, "ccBis":Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v13, v12}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v12

    aget-byte v12, v12, v14

    iput-byte v12, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    .line 241
    invoke-virtual {v13, v11}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v11

    aget-byte v11, v11, v14

    iput-byte v11, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    .line 242
    iget-byte v11, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    if-eqz v11, :cond_7c

    .line 243
    invoke-virtual {v13, v15}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v11

    aget-byte v11, v11, v14

    iput-byte v11, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    move-object/from16 v18, v8

    goto/16 :goto_1d3

    .line 242
    :cond_7c
    move-object/from16 v18, v8

    goto/16 :goto_1d3

    .line 233
    .end local v13    # "ccBis":Lcom/android/internal/util/BitwiseInputStream;
    :pswitch_80
    invoke-virtual {v5, v10, v14, v9}, Ljava/io/DataInputStream;->read([BII)I

    .line 234
    new-instance v11, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v11, v10}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 235
    .local v11, "replyOptBis":Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v11, v12}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v12

    iput v12, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 236
    move-object/from16 v18, v8

    goto/16 :goto_1d3

    .line 214
    .end local v11    # "replyOptBis":Lcom/android/internal/util/BitwiseInputStream;
    :pswitch_92
    invoke-virtual {v5, v10, v14, v9}, Ljava/io/DataInputStream;->read([BII)I

    .line 215
    new-instance v11, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v11, v10}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 216
    .local v11, "subAddrBis":Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v11, v13}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v12

    iput v12, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->type:I

    .line 217
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v12

    aget-byte v12, v12, v14

    iput-byte v12, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->odd:B

    .line 218
    invoke-virtual {v11, v15}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v12

    .line 219
    .local v12, "subAddrLen":I
    new-array v14, v12, [B

    .line 220
    .local v14, "subdata":[B
    const/4 v15, 0x0

    .local v15, "index":I
    :goto_b0
    if-ge v15, v12, :cond_c8

    .line 221
    move/from16 v16, v12

    const/4 v13, 0x4

    .end local v12    # "subAddrLen":I
    .local v16, "subAddrLen":I
    invoke-virtual {v11, v13}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v12

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    .line 223
    .local v12, "b":B
    invoke-static {v12}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->convertDtmfToAscii(B)B

    move-result v13

    aput-byte v13, v14, v15

    .line 220
    add-int/lit8 v15, v15, 0x1

    move/from16 v12, v16

    const/4 v13, 0x3

    goto :goto_b0

    .end local v16    # "subAddrLen":I
    .local v12, "subAddrLen":I
    :cond_c8
    move/from16 v16, v12

    .line 225
    .end local v12    # "subAddrLen":I
    .end local v15    # "index":I
    .restart local v16    # "subAddrLen":I
    iput-object v14, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    .line 226
    const/4 v12, 0x3

    if-ne v0, v12, :cond_d5

    .line 227
    iput-object v8, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    move-object/from16 v18, v8

    goto/16 :goto_1d3

    .line 229
    :cond_d5
    iput-object v8, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_d7} :catch_db

    .line 231
    move-object/from16 v18, v8

    goto/16 :goto_1d3

    .line 255
    .end local v0    # "parameterId":I
    .end local v9    # "parameterLen":I
    .end local v10    # "parameterData":[B
    .end local v11    # "subAddrBis":Lcom/android/internal/util/BitwiseInputStream;
    .end local v14    # "subdata":[B
    .end local v16    # "subAddrLen":I
    :catch_db
    move-exception v0

    move-object/from16 v18, v8

    goto/16 :goto_1ff

    .line 158
    .restart local v0    # "parameterId":I
    .restart local v9    # "parameterLen":I
    .restart local v10    # "parameterData":[B
    :pswitch_e0
    :try_start_e0
    invoke-virtual {v5, v10, v14, v9}, Ljava/io/DataInputStream;->read([BII)I

    .line 159
    new-instance v12, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v12, v10}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 160
    .local v12, "addrBis":Lcom/android/internal/util/BitwiseInputStream;
    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v14

    iput v14, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 161
    invoke-virtual {v12, v13}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v14

    iput v14, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 162
    const/4 v14, 0x0

    .line 163
    .local v14, "numberType":I
    iget v11, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_f8} :catch_1fc

    if-ne v11, v13, :cond_10d

    .line 164
    const/4 v11, 0x3

    :try_start_fb
    invoke-virtual {v12, v11}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v11

    move v14, v11

    .line 165
    iput v14, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 166
    iget v11, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    if-nez v11, :cond_10d

    .line 167
    const/4 v11, 0x4

    invoke-virtual {v12, v11}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v13

    iput v13, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_10d} :catch_db

    .line 169
    :cond_10d
    :try_start_10d
    invoke-virtual {v12, v15}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v11

    iput v11, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 170
    iget v11, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    new-array v11, v11, [B

    .line 171
    .local v11, "data":[B
    const/4 v13, 0x0

    .line 172
    .local v13, "b":B
    iget v15, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I
    :try_end_11a
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_11a} :catch_1fc

    if-nez v15, :cond_139

    .line 174
    const/4 v15, 0x0

    .restart local v15    # "index":I
    :goto_11d
    move-object/from16 v18, v8

    .end local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :try_start_11f
    iget v8, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    if-ge v15, v8, :cond_136

    .line 175
    const/4 v8, 0x4

    invoke-virtual {v12, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v16

    and-int/lit8 v8, v16, 0xf

    int-to-byte v13, v8

    .line 178
    invoke-static {v13}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->convertDtmfToAscii(B)B

    move-result v8

    aput-byte v8, v11, v15

    .line 174
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v8, v18

    goto :goto_11d

    :cond_136
    move/from16 v17, v9

    .end local v15    # "index":I
    goto :goto_181

    .line 180
    .end local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :cond_139
    move-object/from16 v18, v8

    .end local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    iget v8, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 v15, 0x1

    if-ne v8, v15, :cond_17a

    .line 181
    iget v8, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    if-nez v8, :cond_15e

    .line 182
    const/4 v8, 0x0

    .local v8, "index":I
    :goto_145
    iget v15, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    if-ge v8, v15, :cond_15b

    .line 183
    move/from16 v17, v9

    const/16 v15, 0x8

    .end local v9    # "parameterLen":I
    .restart local v17    # "parameterLen":I
    invoke-virtual {v12, v15}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v9

    and-int/lit16 v9, v9, 0xff

    int-to-byte v13, v9

    .line 184
    aput-byte v13, v11, v8

    .line 182
    add-int/lit8 v8, v8, 0x1

    move/from16 v9, v17

    goto :goto_145

    .end local v17    # "parameterLen":I
    .restart local v9    # "parameterLen":I
    :cond_15b
    move/from16 v17, v9

    .end local v8    # "index":I
    .end local v9    # "parameterLen":I
    .restart local v17    # "parameterLen":I
    goto :goto_181

    .line 186
    .end local v17    # "parameterLen":I
    .restart local v9    # "parameterLen":I
    :cond_15e
    move/from16 v17, v9

    .end local v9    # "parameterLen":I
    .restart local v17    # "parameterLen":I
    iget v8, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_174

    .line 187
    const/4 v8, 0x2

    if-ne v14, v8, :cond_16e

    .line 188
    const-string v8, "TODO: Addr is email id"

    invoke-static {v3, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_181

    .line 190
    :cond_16e
    const-string v8, "TODO: Addr is data network address"

    invoke-static {v3, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_181

    .line 193
    :cond_174
    const-string v8, "Addr is of incorrect type"

    invoke-static {v3, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_181

    .line 196
    .end local v17    # "parameterLen":I
    .restart local v9    # "parameterLen":I
    :cond_17a
    move/from16 v17, v9

    .end local v9    # "parameterLen":I
    .restart local v17    # "parameterLen":I
    const-string v8, "Incorrect Digit mode"

    invoke-static {v3, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :goto_181
    iput-object v11, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 199
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Addr="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 204
    iput-object v7, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 205
    iput-object v7, v1, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 206
    const/4 v8, 0x4

    if-ne v0, v8, :cond_1d3

    .line 207
    iput-object v7, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 208
    iput-object v7, v1, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    goto :goto_1d3

    .line 154
    .end local v11    # "data":[B
    .end local v12    # "addrBis":Lcom/android/internal/util/BitwiseInputStream;
    .end local v13    # "b":B
    .end local v14    # "numberType":I
    .end local v17    # "parameterLen":I
    .end local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .local v8, "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v9    # "parameterLen":I
    :pswitch_1a7
    move-object/from16 v18, v8

    move/from16 v17, v9

    .end local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .end local v9    # "parameterLen":I
    .restart local v17    # "parameterLen":I
    .restart local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v8

    iput v8, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 155
    goto :goto_1d3

    .line 146
    .end local v17    # "parameterLen":I
    .end local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v9    # "parameterLen":I
    :pswitch_1b2
    move-object/from16 v18, v8

    move/from16 v17, v9

    .end local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .end local v9    # "parameterLen":I
    .restart local v17    # "parameterLen":I
    .restart local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v8

    iput v8, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 147
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "teleservice = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    nop

    .line 252
    .end local v0    # "parameterId":I
    .end local v10    # "parameterData":[B
    .end local v17    # "parameterLen":I
    :cond_1d3
    :goto_1d3
    move-object/from16 v8, v18

    goto/16 :goto_2a

    .line 250
    .restart local v0    # "parameterId":I
    .restart local v10    # "parameterData":[B
    .restart local v17    # "parameterLen":I
    :goto_1d7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unsupported parameterId ("

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "dis":Ljava/io/DataInputStream;
    .end local v6    # "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .end local v7    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .end local p0    # "this":Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;
    .end local p1    # "pdu":[B
    throw v8

    .line 253
    .end local v0    # "parameterId":I
    .end local v10    # "parameterData":[B
    .end local v17    # "parameterLen":I
    .restart local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "dis":Ljava/io/DataInputStream;
    .restart local v6    # "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .restart local v7    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;
    .restart local p1    # "pdu":[B
    :cond_1f1
    move-object/from16 v18, v8

    .end local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V

    .line 254
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_1f9
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_1f9} :catch_1fa

    .line 257
    goto :goto_213

    .line 255
    :catch_1fa
    move-exception v0

    goto :goto_1ff

    .end local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :catch_1fc
    move-exception v0

    move-object/from16 v18, v8

    .line 256
    .end local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :goto_1ff
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parsePduFromEfRecord: conversion from pdu to SmsMessage failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_213
    iput-object v6, v1, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 260
    iput-object v2, v1, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mPdu:[B

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->parseSms()V

    .line 262
    return-void

    nop

    :pswitch_data_21c
    .packed-switch 0x0
        :pswitch_1b2
        :pswitch_1a7
        :pswitch_e0
        :pswitch_92
        :pswitch_e0
        :pswitch_92
        :pswitch_80
        :pswitch_54
        :pswitch_4b
    .end packed-switch
.end method

.method public parseSms()V
    .registers 6

    .line 694
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    const-string v1, "MtkCdmaSmsMessage"

    const/high16 v2, 0x40000

    if-ne v0, v2, :cond_41

    .line 695
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    .line 696
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    if-eqz v0, :cond_24

    .line 697
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    iput v2, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    .line 699
    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseSms: get MWI "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    .line 700
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 699
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    return-void

    .line 703
    :cond_41
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([B)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    .line 704
    const-string v0, "CDMA:SMS"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MT raw BearerData = \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 706
    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 705
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MT (decoded) BearerData = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :cond_8b
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_14a

    .line 713
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mMessageRef:I

    .line 714
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v0, :cond_b3

    .line 715
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mUserData:[B

    .line 716
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 717
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mMessageBody:Ljava/lang/String;

    .line 720
    :cond_b3
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_bc

    .line 721
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->decodeSmsDisplayAddress(Lcom/android/internal/telephony/SmsAddress;)V

    .line 724
    :cond_bc
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_c5

    .line 725
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->decodeSmsDisplayAddress(Lcom/android/internal/telephony/SmsAddress;)V

    .line 728
    :cond_c5
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v0, :cond_d5

    .line 729
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->toMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mScTimeMillis:J

    .line 733
    :cond_d5
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_119

    .line 741
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-nez v0, :cond_107

    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELIVERY_ACK message without msgStatus ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mUserData:[B

    if-nez v3, :cond_f3

    const-string v3, "also missing"

    goto :goto_f5

    :cond_f3
    const-string v3, "does have"

    :goto_f5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userData)."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 742
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iput v2, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->status:I

    goto :goto_142

    .line 747
    :cond_107
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->status:I

    .line 748
    iget v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->status:I

    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->status:I

    goto :goto_142

    .line 750
    :cond_119
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_142

    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    if-ne v0, v2, :cond_127

    goto :goto_142

    .line 752
    :cond_127
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 755
    :cond_142
    :goto_142
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mMessageBody:Ljava/lang/String;

    if-eqz v0, :cond_149

    .line 756
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->parseMessageBody()V

    .line 758
    :cond_149
    return-void

    .line 710
    :cond_14a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported message: BearerData decode failed."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

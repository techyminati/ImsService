.class public Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;
.super Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;
.source "MtkGsmSMSDispatcher.java"


# static fields
.field private static final ENG:Z

.field protected static final EVENT_COPY_TEXT_MESSAGE_DONE:I = 0x6a

.field protected static MSG_REF_NUM:Ljava/lang/String; = null

.field protected static PDU_SIZE:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MtkGsmSMSDispatcher"


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

.field protected mLock:Ljava/lang/Object;

.field private mStorageAvailable:Z

.field private mSuccess:Z

.field protected messageCountNeedCopy:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 122
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->ENG:Z

    .line 141
    const-string v0, "pdu_size"

    sput-object v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->PDU_SIZE:Ljava/lang/String;

    .line 142
    const-string v0, "msg_ref_num"

    sput-object v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->MSG_REF_NUM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;)V
    .registers 7
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "smsDispatchersController"    # Lcom/android/internal/telephony/SmsDispatchersController;
    .param p3, "gsmInboundSmsHandler"    # Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    .line 150
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;)V

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mStorageAvailable:Z

    .line 128
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mSuccess:Z

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->messageCountNeedCopy:I

    .line 132
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mLock:Ljava/lang/Object;

    .line 134
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher$1;-><init>(Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mEncodingType:Ljava/lang/ThreadLocal;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 152
    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 153
    .local v0, "phoneId":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v2, 0xf

    invoke-virtual {v1, p0, v2, v0}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 154
    const-string v1, "MtkGsmSMSDispatcher"

    const-string v2, "MtkGsmSMSDispatcher created"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void
.end method

.method private getUiccControllerPhoneId(Landroid/os/Message;)Ljava/lang/Integer;
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 259
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 261
    .local v0, "phoneId":Ljava/lang/Integer;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 262
    .local v1, "ar":Landroid/os/AsyncResult;
    if-eqz v1, :cond_17

    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_17

    .line 263
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    .line 265
    :cond_17
    return-object v0
.end method

.method private isValidSmsAddress(Ljava/lang/String;)Z
    .registers 5
    .param p1, "address"    # Ljava/lang/String;

    .line 501
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, "encodedAddress":Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 504
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_11

    goto :goto_13

    :cond_11
    const/4 v1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v1, 0x1

    .line 503
    :goto_14
    return v1
.end method


# virtual methods
.method public copyTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I
    .registers 32
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

    .line 352
    .local p3, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p4

    const-string v0, "MtkGsmSMSDispatcher"

    const-string v4, "GsmSMSDispatcher: copy text message to icc card"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-static/range {p1 .. p1}, Lcom/mediatek/internal/telephony/util/MtkSMSDispatcherUtil;->checkPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 355
    const-string v0, "MtkGsmSMSDispatcher"

    const-string v4, "[copyText invalid sc address"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/4 v0, 0x0

    move-object v12, v0

    .end local p1    # "scAddress":Ljava/lang/String;
    .local v0, "scAddress":Ljava/lang/String;
    goto :goto_1f

    .line 354
    .end local v0    # "scAddress":Ljava/lang/String;
    .restart local p1    # "scAddress":Ljava/lang/String;
    :cond_1d
    move-object/from16 v12, p1

    .line 359
    .end local p1    # "scAddress":Ljava/lang/String;
    .local v12, "scAddress":Ljava/lang/String;
    :goto_1f
    const/4 v13, 0x1

    iput-boolean v13, v1, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mSuccess:Z

    .line 361
    const/4 v0, 0x1

    .line 363
    .local v0, "isDeliverPdu":Z
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v14

    .line 367
    .local v14, "msgCount":I
    const-string v4, "MtkGsmSMSDispatcher"

    const-string v5, "[copyText storage available"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    if-eq v3, v13, :cond_4d

    const/4 v4, 0x3

    if-ne v3, v4, :cond_34

    goto :goto_4d

    .line 376
    :cond_34
    const/4 v4, 0x5

    if-eq v3, v4, :cond_43

    const/4 v4, 0x7

    if-ne v3, v4, :cond_3b

    goto :goto_43

    .line 380
    :cond_3b
    const-string v4, "MtkGsmSMSDispatcher"

    const-string v5, "[copyText invalid status, default is deliver pdu"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    return v13

    .line 377
    :cond_43
    :goto_43
    const/4 v0, 0x0

    .line 378
    const-string v4, "MtkGsmSMSDispatcher"

    const-string v5, "[copyText to encode submit pdu"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v15, v0

    goto :goto_56

    .line 374
    :cond_4d
    :goto_4d
    const-string v4, "MtkGsmSMSDispatcher"

    const-string v5, "[copyText to encode deliver pdu"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v0, 0x1

    move v15, v0

    .line 385
    .end local v0    # "isDeliverPdu":Z
    .local v15, "isDeliverPdu":Z
    :goto_56
    if-nez v15, :cond_68

    invoke-static/range {p2 .. p2}, Lcom/mediatek/internal/telephony/util/MtkSMSDispatcherUtil;->checkPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_68

    .line 386
    const-string v0, "MtkGsmSMSDispatcher"

    const-string v4, "[copyText invalid dest address"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/16 v0, 0x8

    return v0

    .line 390
    :cond_68
    const-string v0, "MtkGsmSMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[copyText msgCount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    if-le v14, v13, :cond_88

    .line 392
    const-string v0, "MtkGsmSMSDispatcher"

    const-string v4, "[copyText multi-part message"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91

    .line 393
    :cond_88
    if-ne v14, v13, :cond_24b

    .line 394
    const-string v0, "MtkGsmSMSDispatcher"

    const-string v4, "[copyText single-part message"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :goto_91
    invoke-static {}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v0

    and-int/lit16 v11, v0, 0xff

    .line 401
    .local v11, "refNumber":I
    const/4 v0, 0x0

    .line 402
    .local v0, "encoding":I
    new-array v10, v14, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    .line 403
    .local v10, "details":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/4 v4, 0x0

    move v9, v0

    .end local v0    # "encoding":I
    .local v4, "i":I
    .local v9, "encoding":I
    :goto_9c
    const/4 v0, 0x0

    if-ge v4, v14, :cond_bd

    .line 404
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5, v0}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    aput-object v0, v10, v4

    .line 405
    aget-object v0, v10, v4

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-eq v9, v0, :cond_ba

    if-eqz v9, :cond_b5

    if-ne v9, v13, :cond_ba

    .line 408
    :cond_b5
    aget-object v0, v10, v4

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move v9, v0

    .line 403
    :cond_ba
    add-int/lit8 v4, v4, 0x1

    goto :goto_9c

    .line 412
    .end local v4    # "i":I
    :cond_bd
    const/4 v4, 0x0

    move v8, v4

    .local v8, "i":I
    :goto_bf
    if-ge v8, v14, :cond_22d

    .line 413
    iget-boolean v4, v1, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mSuccess:Z

    if-nez v4, :cond_cd

    .line 414
    const-string v0, "MtkGsmSMSDispatcher"

    const-string v4, "[copyText Exception happened when copy message"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return v13

    .line 417
    :cond_cd
    const/4 v4, -0x1

    .line 418
    .local v4, "singleShiftId":I
    const/4 v5, -0x1

    .line 419
    .local v5, "lockingShiftId":I
    aget-object v6, v10, v8

    iget v7, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->shiftLangId:I

    .line 420
    .local v7, "language":I
    move v6, v9

    .line 422
    .local v6, "encoding_method":I
    if-ne v9, v13, :cond_12a

    .line 423
    const-string v0, "MtkGsmSMSDispatcher"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v4

    .end local v4    # "singleShiftId":I
    .local v16, "singleShiftId":I
    const-string v4, "Detail: "

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ted"

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v10, v8

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    aget-object v0, v10, v8

    iget-boolean v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useLockingShift:Z

    if-eqz v0, :cond_10e

    aget-object v0, v10, v8

    iget-boolean v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useSingleShift:Z

    if-eqz v0, :cond_10e

    .line 425
    move v4, v7

    .line 426
    .end local v16    # "singleShiftId":I
    .restart local v4    # "singleShiftId":I
    move v5, v7

    .line 427
    const/16 v6, 0xd

    move/from16 v16, v4

    move v13, v5

    move/from16 v17, v6

    goto :goto_12f

    .line 428
    .end local v4    # "singleShiftId":I
    .restart local v16    # "singleShiftId":I
    :cond_10e
    aget-object v0, v10, v8

    iget-boolean v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useLockingShift:Z

    if-eqz v0, :cond_11b

    .line 429
    move v5, v7

    .line 430
    const/16 v6, 0xc

    move v13, v5

    move/from16 v17, v6

    goto :goto_12f

    .line 431
    :cond_11b
    aget-object v0, v10, v8

    iget-boolean v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useSingleShift:Z

    if-eqz v0, :cond_12c

    .line 432
    move v4, v7

    .line 433
    .end local v16    # "singleShiftId":I
    .restart local v4    # "singleShiftId":I
    const/16 v6, 0xb

    move/from16 v16, v4

    move v13, v5

    move/from16 v17, v6

    goto :goto_12f

    .line 422
    :cond_12a
    move/from16 v16, v4

    .line 437
    .end local v4    # "singleShiftId":I
    .restart local v16    # "singleShiftId":I
    :cond_12c
    move v13, v5

    move/from16 v17, v6

    .end local v5    # "lockingShiftId":I
    .end local v6    # "encoding_method":I
    .local v13, "lockingShiftId":I
    .local v17, "encoding_method":I
    :goto_12f
    const/4 v0, 0x0

    .line 438
    .local v0, "smsHeader":[B
    const/4 v4, 0x1

    if-le v14, v4, :cond_14f

    .line 439
    const-string v4, "MtkGsmSMSDispatcher"

    const-string v5, "[copyText get pdu header for multi-part message"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const/4 v4, -0x1

    add-int/lit8 v6, v8, 0x1

    move v5, v11

    move/from16 v18, v7

    .end local v7    # "language":I
    .local v18, "language":I
    move v7, v14

    move/from16 v19, v8

    .end local v8    # "i":I
    .local v19, "i":I
    move/from16 v8, v16

    move/from16 v20, v9

    .end local v9    # "encoding":I
    .local v20, "encoding":I
    move v9, v13

    invoke-static/range {v4 .. v9}, Lcom/mediatek/internal/telephony/MtkSmsHeader;->getSubmitPduHeaderWithLang(IIIIII)[B

    move-result-object v0

    move-object/from16 v21, v0

    goto :goto_157

    .line 438
    .end local v18    # "language":I
    .end local v19    # "i":I
    .end local v20    # "encoding":I
    .restart local v7    # "language":I
    .restart local v8    # "i":I
    .restart local v9    # "encoding":I
    :cond_14f
    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    .end local v7    # "language":I
    .end local v8    # "i":I
    .end local v9    # "encoding":I
    .restart local v18    # "language":I
    .restart local v19    # "i":I
    .restart local v20    # "encoding":I
    move-object/from16 v21, v0

    .line 445
    .end local v0    # "smsHeader":[B
    .local v21, "smsHeader":[B
    :goto_157
    const/16 v0, 0x6a

    if-eqz v15, :cond_1bb

    .line 446
    nop

    .line 447
    move/from16 v8, v19

    .end local v19    # "i":I
    .restart local v8    # "i":I
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    .line 446
    move-object v4, v12

    move-object/from16 v5, p2

    move-object/from16 v7, v21

    move/from16 v19, v13

    move v13, v8

    .end local v8    # "i":I
    .local v13, "i":I
    .local v19, "lockingShiftId":I
    move-wide/from16 v8, p5

    move-object/from16 v22, v10

    .end local v10    # "details":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .local v22, "details":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move/from16 v10, v20

    move/from16 v23, v11

    .end local v11    # "refNumber":I
    .local v23, "refNumber":I
    move/from16 v11, v18

    invoke-static/range {v4 .. v11}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getDeliverPduWithLang(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJII)Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;

    move-result-object v4

    .line 449
    .local v4, "pdu":Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;
    if-eqz v4, :cond_1ba

    .line 450
    const-string v5, "MtkGsmSMSDispatcher"

    const-string v6, "[copyText write deliver pdu into SIM"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v5, v1, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, v4, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;->encodedScAddress:[B

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;->encodedMessage:[B

    .line 452
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    .line 453
    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 451
    invoke-interface {v5, v3, v6, v7, v0}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 455
    iget-object v5, v1, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 457
    :try_start_19c
    const-string v0, "MtkGsmSMSDispatcher"

    const-string v6, "[copyText wait until the message be wrote in SIM"

    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v0, v1, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1a8
    .catch Ljava/lang/InterruptedException; {:try_start_19c .. :try_end_1a8} :catch_1ad
    .catchall {:try_start_19c .. :try_end_1a8} :catchall_1ab

    .line 462
    nop

    .line 463
    :try_start_1a9
    monitor-exit v5

    goto :goto_1ba

    :catchall_1ab
    move-exception v0

    goto :goto_1b8

    .line 459
    :catch_1ad
    move-exception v0

    .line 460
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v6, "MtkGsmSMSDispatcher"

    const-string v7, "Fail to copy text message into SIM"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    monitor-exit v5

    const/4 v5, 0x1

    return v5

    .line 463
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1b8
    monitor-exit v5
    :try_end_1b9
    .catchall {:try_start_1a9 .. :try_end_1b9} :catchall_1ab

    throw v0

    .line 465
    .end local v4    # "pdu":Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;
    :cond_1ba
    :goto_1ba
    goto :goto_21a

    .line 466
    .end local v22    # "details":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v23    # "refNumber":I
    .restart local v10    # "details":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .restart local v11    # "refNumber":I
    .local v13, "lockingShiftId":I
    .local v19, "i":I
    :cond_1bb
    move-object/from16 v22, v10

    move/from16 v23, v11

    move/from16 v24, v19

    move/from16 v19, v13

    move/from16 v13, v24

    .line 467
    .end local v10    # "details":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v11    # "refNumber":I
    .local v13, "i":I
    .local v19, "lockingShiftId":I
    .restart local v22    # "details":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .restart local v23    # "refNumber":I
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v11, -0x1

    .line 466
    move-object v4, v12

    move-object/from16 v5, p2

    move-object/from16 v8, v21

    move/from16 v9, v17

    move/from16 v10, v18

    invoke-static/range {v4 .. v11}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPduWithLang(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v4

    .line 470
    .local v4, "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v4, :cond_21a

    .line 471
    const-string v5, "MtkGsmSMSDispatcher"

    const-string v6, "[copyText write submit pdu into SIM"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v5, v1, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, v4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 473
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    .line 474
    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 472
    invoke-interface {v5, v3, v6, v7, v0}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 476
    iget-object v5, v1, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 478
    :try_start_1fc
    const-string v0, "MtkGsmSMSDispatcher"

    const-string v6, "[copyText wait until the message be wrote in SIM"

    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v0, v1, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_208
    .catch Ljava/lang/InterruptedException; {:try_start_1fc .. :try_end_208} :catch_20d
    .catchall {:try_start_1fc .. :try_end_208} :catchall_20b

    .line 483
    nop

    .line 484
    :try_start_209
    monitor-exit v5

    goto :goto_21a

    :catchall_20b
    move-exception v0

    goto :goto_218

    .line 480
    :catch_20d
    move-exception v0

    .line 481
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    const-string v6, "MtkGsmSMSDispatcher"

    const-string v7, "fail to copy text message into SIM"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    monitor-exit v5

    const/4 v5, 0x1

    return v5

    .line 484
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_218
    monitor-exit v5
    :try_end_219
    .catchall {:try_start_209 .. :try_end_219} :catchall_20b

    throw v0

    .line 488
    .end local v4    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_21a
    :goto_21a
    const-string v0, "MtkGsmSMSDispatcher"

    const-string v4, "[copyText thread is waked up"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    .end local v16    # "singleShiftId":I
    .end local v17    # "encoding_method":I
    .end local v18    # "language":I
    .end local v19    # "lockingShiftId":I
    .end local v21    # "smsHeader":[B
    add-int/lit8 v8, v13, 0x1

    move/from16 v9, v20

    move-object/from16 v10, v22

    move/from16 v11, v23

    const/4 v0, 0x0

    const/4 v13, 0x1

    .end local v13    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_bf

    .end local v20    # "encoding":I
    .end local v22    # "details":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v23    # "refNumber":I
    .restart local v9    # "encoding":I
    .restart local v10    # "details":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .restart local v11    # "refNumber":I
    :cond_22d
    move v13, v8

    move/from16 v20, v9

    move-object/from16 v22, v10

    move/from16 v23, v11

    .line 491
    .end local v8    # "i":I
    .end local v9    # "encoding":I
    .end local v10    # "details":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v11    # "refNumber":I
    .restart local v20    # "encoding":I
    .restart local v22    # "details":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .restart local v23    # "refNumber":I
    iget-boolean v0, v1, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mSuccess:Z

    const/4 v4, 0x1

    if-ne v0, v4, :cond_242

    .line 492
    const-string v0, "MtkGsmSMSDispatcher"

    const-string v4, "[copyText all messages have been copied into SIM"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/4 v0, 0x0

    return v0

    .line 496
    :cond_242
    const-string v0, "MtkGsmSMSDispatcher"

    const-string v4, "[copyText copy failed"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const/4 v4, 0x1

    return v4

    .line 396
    .end local v20    # "encoding":I
    .end local v22    # "details":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v23    # "refNumber":I
    :cond_24b
    move v4, v13

    const-string v0, "MtkGsmSMSDispatcher"

    const-string v5, "[copyText invalid message count"

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return v4
.end method

.method public dispose()V
    .registers 2

    .line 159
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispose()V

    .line 160
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsStatus(Landroid/os/Handler;)V

    .line 161
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 162
    return-void
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    .line 169
    const-string v0, "3gpp"

    return-object v0
.end method

.method protected getNewSubmitPduTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;IZIJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .registers 40
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

    .line 225
    move-object/from16 v15, p5

    sget-boolean v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->ENG:Z

    const-string v1, "MtkGsmSMSDispatcher"

    if-eqz v0, :cond_d

    .line 226
    const-string v0, "getNewSubmitPduTracker w/ validity"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_d
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p8, :cond_13

    move v6, v0

    goto :goto_14

    :cond_13
    move v6, v2

    .line 229
    :goto_14
    invoke-static/range {p5 .. p5}, Lcom/mediatek/internal/telephony/MtkSmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v7

    iget v9, v15, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    iget v10, v15, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 228
    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move/from16 v8, p6

    move/from16 v11, p16

    invoke-static/range {v3 .. v11}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v14

    .line 232
    .local v14, "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v14, :cond_6e

    .line 233
    move-object/from16 v11, p0

    move-object/from16 v10, p2

    move-object/from16 v9, p3

    move-object/from16 v8, p4

    invoke-virtual {v11, v10, v9, v8, v14}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v19

    .line 235
    .local v19, "map":Ljava/util/HashMap;
    nop

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v5

    if-eqz p9, :cond_45

    if-eqz p15, :cond_42

    goto :goto_45

    :cond_42
    move/from16 v17, v2

    goto :goto_47

    :cond_45
    :goto_45
    move/from16 v17, v0

    :goto_47
    const/4 v12, 0x1

    const/4 v13, 0x1

    const/16 v16, 0x0

    .line 235
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move-object/from16 v8, p12

    move-object/from16 v9, p5

    move/from16 v10, v17

    move-object/from16 v11, p13

    move-object/from16 v20, v14

    .end local v14    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .local v20, "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    move/from16 v14, p14

    move/from16 v15, p16

    move-wide/from16 v17, p17

    invoke-virtual/range {v0 .. v18}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->getSmsTracker(Ljava/lang/String;Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZIIZJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    return-object v0

    .line 240
    .end local v19    # "map":Ljava/util/HashMap;
    .end local v20    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .restart local v14    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_6e
    const-string v0, "GsmSMSDispatcher.getNewSubmitPduTracker(): getSubmitPdu() returned null"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPackageNameViaProcessId([Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "packageNames"    # [Ljava/lang/String;

    .line 734
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mContext:Landroid/content/Context;

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

    .line 795
    .local p2, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-super/range {p0 .. p18}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsTracker(Ljava/lang/String;Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZIIZJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    .line 799
    .local v0, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object v1, p0

    iget-object v2, v1, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/mediatek/internal/telephony/util/MtkSmsCommonUtil;->filterOutByPpl(Landroid/content/Context;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 800
    return-object v0
.end method

.method protected getSmsTracker(Ljava/lang/String;Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZZJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .registers 36
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p3, "sentIntent"    # Landroid/app/PendingIntent;
    .param p4, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p5, "format"    # Ljava/lang/String;
    .param p6, "unsentPartCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p7, "anyPartFailed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p8, "messageUri"    # Landroid/net/Uri;
    .param p9, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p10, "isExpectMore"    # Z
    .param p11, "fullMessageText"    # Ljava/lang/String;
    .param p12, "isText"    # Z
    .param p13, "persistMessage"    # Z
    .param p14, "isForVvm"    # Z
    .param p15, "messageId"    # J
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

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v16, p14

    move-wide/from16 v17, p15

    .line 780
    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-super/range {v0 .. v18}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsTracker(Ljava/lang/String;Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZIIZJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    .line 784
    .local v0, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/mediatek/internal/telephony/util/MtkSmsCommonUtil;->filterOutByPpl(Landroid/content/Context;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 785
    return-object v0
.end method

.method public handleIccFull()V
    .registers 2

    .line 673
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsStorageMonitor;->handleIccFull()V

    .line 674
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 180
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_86

    .line 212
    invoke-super {p0, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_84

    .line 195
    :sswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 196
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 197
    :try_start_11
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_19

    move v2, v4

    goto :goto_1a

    :cond_19
    move v2, v3

    :goto_1a
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mSuccess:Z

    .line 199
    if-ne v2, v4, :cond_2b

    .line 200
    const-string v2, "MtkGsmSMSDispatcher"

    const-string v3, "[copyText success to copy one"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->messageCountNeedCopy:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->messageCountNeedCopy:I

    goto :goto_34

    .line 203
    :cond_2b
    const-string v2, "MtkGsmSMSDispatcher"

    const-string v4, "[copyText fail to copy one"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iput v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->messageCountNeedCopy:I

    .line 207
    :goto_34
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 208
    monitor-exit v1

    .line 209
    goto :goto_84

    .line 208
    :catchall_3b
    move-exception v2

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_11 .. :try_end_3d} :catchall_3b

    throw v2

    .line 182
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_3e
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->getUiccControllerPhoneId(Landroid/os/Message;)Ljava/lang/Integer;

    move-result-object v0

    .line 183
    .local v0, "phoneId":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    if-eq v1, v2, :cond_65

    .line 184
    const-string v1, "MtkGsmSMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong phone id event coming, PhoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    goto :goto_84

    .line 187
    :cond_65
    const-string v1, "MtkGsmSMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_ICC_CHANGED, PhoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " match exactly."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->onUpdateIccAvailability()V

    .line 190
    nop

    .line 214
    .end local v0    # "phoneId":Ljava/lang/Integer;
    :goto_84
    return-void

    nop

    :sswitch_data_86
    .sparse-switch
        0xf -> :sswitch_3e
        0x6a -> :sswitch_a
    .end sparse-switch
.end method

.method public handleQueryCbActivation(Landroid/os/AsyncResult;)V
    .registers 9
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 683
    const/4 v0, 0x0

    .line 685
    .local v0, "result":Ljava/lang/Boolean;
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v2, "MtkGsmSMSDispatcher"

    if-nez v1, :cond_64

    .line 686
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 689
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_19

    .line 690
    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v3

    goto :goto_64

    .line 692
    :cond_19
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 693
    .local v3, "cbConfig":Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cbConfig: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromCodeScheme()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5d

    .line 696
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToCodeScheme()I

    move-result v5

    if-ne v5, v6, :cond_5d

    .line 697
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v5

    if-ne v5, v6, :cond_5d

    .line 698
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v5

    if-ne v5, v6, :cond_5d

    .line 699
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->isSelected()Z

    move-result v5

    if-nez v5, :cond_5d

    .line 701
    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, v4}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v5

    goto :goto_64

    .line 703
    :cond_5d
    new-instance v4, Ljava/lang/Boolean;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v4

    .line 708
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    .end local v3    # "cbConfig":Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    :cond_64
    :goto_64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCbActivation: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v0, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 710
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 711
    return-void
.end method

.method public isSmsReady()Z
    .registers 3

    .line 728
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;

    .line 730
    .local v0, "pSmsDispatcherctrl":Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->isSmsReady()Z

    move-result v1

    return v1
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

    .line 644
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mEncodingType:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 645
    .local v1, "encodingType":I
    const-string v2, "MtkGsmSMSDispatcher"

    if-nez v1, :cond_2b

    .line 646
    invoke-super/range {p0 .. p12}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->onSendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;)I

    move-result v1

    .line 649
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

    .line 651
    :cond_2b
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 652
    .local v3, "msgCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_30
    if-ge v4, v3, :cond_6d

    .line 653
    nop

    .line 654
    move-object v5, p3

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    .line 653
    const/4 v7, 0x0

    invoke-static {v7, v6, v7}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->calculateLength(ZLjava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v6

    .line 655
    .local v6, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v7, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-eq v1, v7, :cond_68

    if-eqz v1, :cond_48

    const/4 v7, 0x1

    if-ne v1, v7, :cond_68

    .line 658
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

    .line 660
    iput v1, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 662
    :cond_68
    aput-object v6, p12, v4

    .line 652
    .end local v6    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    :cond_6d
    move-object v5, p3

    .line 665
    .end local v3    # "msgCount":I
    .end local v4    # "i":I
    :goto_6e
    return v1
.end method

.method protected onSendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 25
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

    .line 525
    move-object v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mEncodingType:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 526
    .local v1, "encodingType":I
    if-nez v1, :cond_14

    .line 527
    invoke-super/range {p0 .. p11}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->onSendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object v2

    return-object v2

    .line 531
    :cond_14
    const/4 v2, 0x0

    move-object/from16 v11, p3

    invoke-static {v2, v11, v2}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->calculateLength(ZLjava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v12

    .line 532
    .local v12, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    if-eqz p5, :cond_1e

    const/4 v2, 0x1

    :cond_1e
    move v5, v2

    const/4 v6, 0x0

    iget v8, v12, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iget v9, v12, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    move-object v2, p2

    move-object v3, p1

    move-object/from16 v4, p3

    move v7, v1

    move/from16 v10, p11

    invoke-static/range {v2 .. v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v2

    return-object v2
.end method

.method public sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 27
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "destPort"    # I
    .param p5, "originalPort"    # I
    .param p6, "data"    # [B
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .param p8, "deliveryIntent"    # Landroid/app/PendingIntent;

    .line 271
    move-object/from16 v14, p0

    const-string v0, "MtkGsmSMSDispatcher"

    const-string v1, "MtkGsmSmsDispatcher.sendData: enter"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v15, 0x1

    if-eqz p8, :cond_e

    move v7, v15

    goto :goto_10

    :cond_e
    const/4 v1, 0x0

    move v7, v1

    :goto_10
    move-object/from16 v2, p3

    move-object/from16 v3, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-static/range {v2 .. v7}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v16

    .line 275
    .local v16, "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v16, :cond_53

    .line 276
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v17

    .line 277
    .local v17, "map":Ljava/util/HashMap;
    nop

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    .line 277
    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    invoke-virtual/range {v0 .. v13}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->getSmsTracker(Ljava/lang/String;Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZZJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    .line 282
    .local v0, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {v14, v15, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->sendSmsByCarrierApp(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 283
    invoke-virtual {v14, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 285
    .end local v0    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .end local v17    # "map":Ljava/util/HashMap;
    :cond_52
    goto :goto_58

    .line 286
    :cond_53
    const-string v1, "GsmSMSDispatcher.sendData(): getSubmitPdu() returned null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :goto_58
    return-void
.end method

.method public sendMultipartData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
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

    .line 295
    .local p5, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/SmsRawData;>;"
    .local p6, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p7, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v14, p0

    move-object/from16 v15, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    const-string v11, "MtkGsmSMSDispatcher"

    if-nez v15, :cond_12

    .line 296
    const-string v0, "Cannot send multipart data when data is null!"

    invoke-static {v11, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return-void

    .line 300
    :cond_12
    invoke-static {}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v0

    and-int/lit16 v10, v0, 0xff

    .line 301
    .local v10, "refNumber":I
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 303
    .local v9, "msgCount":I
    new-array v8, v9, [Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 305
    .local v8, "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    const/4 v0, 0x0

    move v7, v0

    .local v7, "i":I
    :goto_20
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge v7, v9, :cond_d2

    .line 306
    add-int/lit8 v2, v7, 0x1

    move/from16 v6, p4

    invoke-static {v6, v10, v2, v9}, Lcom/mediatek/internal/telephony/MtkSmsHeader;->getSubmitPduHeader(IIII)[B

    move-result-object v5

    .line 309
    .local v5, "smsHeader":[B
    const/4 v2, 0x0

    .line 310
    .local v2, "sentIntent":Landroid/app/PendingIntent;
    if-eqz v12, :cond_3f

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v7, :cond_3f

    .line 311
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/app/PendingIntent;

    move-object/from16 v16, v2

    goto :goto_41

    .line 314
    :cond_3f
    move-object/from16 v16, v2

    .end local v2    # "sentIntent":Landroid/app/PendingIntent;
    .local v16, "sentIntent":Landroid/app/PendingIntent;
    :goto_41
    const/4 v2, 0x0

    .line 315
    .local v2, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz v13, :cond_54

    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v7, :cond_54

    .line 316
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/app/PendingIntent;

    move-object/from16 v17, v2

    goto :goto_56

    .line 319
    :cond_54
    move-object/from16 v17, v2

    .end local v2    # "deliveryIntent":Landroid/app/PendingIntent;
    .local v17, "deliveryIntent":Landroid/app/PendingIntent;
    :goto_56
    nop

    .line 320
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SmsRawData;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v2

    if-eqz v17, :cond_64

    move v0, v1

    .line 319
    :cond_64
    move-object/from16 v4, p2

    move-object/from16 v3, p3

    invoke-static {v3, v4, v2, v5, v0}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;[B[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v18

    .line 322
    .local v18, "pdus":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SmsRawData;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, v19

    move-object/from16 v19, v5

    .end local v5    # "smsHeader":[B
    .local v19, "smsHeader":[B
    move-object/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v20

    .line 326
    .local v20, "map":Ljava/util/HashMap;
    nop

    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->getFormat()Ljava/lang/String;

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

    move-object/from16 v3, v16

    move-object/from16 v4, v17

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

    invoke-virtual/range {v0 .. v13}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->getSmsTracker(Ljava/lang/String;Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZZJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    move-object/from16 v2, v29

    .end local v29    # "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .local v2, "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    aput-object v0, v2, v21

    .line 305
    .end local v16    # "sentIntent":Landroid/app/PendingIntent;
    .end local v17    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v18    # "pdus":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v19    # "smsHeader":[B
    .end local v20    # "map":Ljava/util/HashMap;
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

    .end local v2    # "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .end local v22    # "msgCount":I
    .end local v23    # "refNumber":I
    .restart local v8    # "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .restart local v9    # "msgCount":I
    .restart local v10    # "refNumber":I
    :cond_d2
    move/from16 v21, v7

    move-object v2, v8

    move/from16 v22, v9

    move/from16 v23, v10

    move-object/from16 v30, v11

    .line 333
    .end local v7    # "i":I
    .end local v8    # "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .end local v9    # "msgCount":I
    .end local v10    # "refNumber":I
    .restart local v2    # "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .restart local v22    # "msgCount":I
    .restart local v23    # "refNumber":I
    array-length v3, v2

    if-eqz v3, :cond_108

    aget-object v3, v2, v0

    if-nez v3, :cond_e5

    move-object/from16 v6, v30

    goto :goto_10a

    .line 339
    :cond_e5
    array-length v3, v2

    :goto_e6
    if-ge v0, v3, :cond_107

    aget-object v4, v2, v0

    .line 340
    .local v4, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    if-eqz v4, :cond_fb

    .line 341
    invoke-virtual {v14, v1, v4}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->sendSmsByCarrierApp(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v5

    if-nez v5, :cond_f8

    .line 342
    invoke-virtual {v14, v4}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    move-object/from16 v6, v30

    goto :goto_102

    .line 341
    :cond_f8
    move-object/from16 v6, v30

    goto :goto_102

    .line 345
    :cond_fb
    const-string v5, "Null tracker."

    move-object/from16 v6, v30

    invoke-static {v6, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    .end local v4    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :goto_102
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v30, v6

    goto :goto_e6

    .line 348
    :cond_107
    return-void

    .line 333
    :cond_108
    move-object/from16 v6, v30

    .line 334
    :goto_10a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot send multipart data. trackers length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
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

    .line 556
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v15, p0

    move-object/from16 v14, p3

    move-object/from16 v13, p4

    move-object/from16 v12, p5

    invoke-virtual {v15, v14}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->getMultipartMessageText(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v19

    .line 557
    .local v19, "fullMessageText":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v0

    and-int/lit16 v11, v0, 0xff

    .line 558
    .local v11, "refNumber":I
    const/16 v16, 0x0

    .line 559
    .local v16, "encoding":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 560
    .local v10, "msgCount":I
    const/4 v9, 0x1

    if-ge v10, v9, :cond_1f

    .line 561
    invoke-virtual {v15, v13}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->triggerSentIntentForFailure(Ljava/util/List;)V

    .line 562
    return-void

    .line 565
    :cond_1f
    new-array v8, v10, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    .line 567
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

    invoke-virtual/range {v0 .. v12}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->onSendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;)I

    move-result v12

    .line 571
    .end local v16    # "encoding":I
    .local v12, "encoding":I
    new-array v9, v15, [Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 574
    .local v9, "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    new-instance v10, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v10, v15}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 575
    .local v10, "unsentPartCount":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v11, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    invoke-direct {v11, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 577
    .local v11, "anyPartFailed":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v0, 0x0

    move v7, v0

    .local v7, "i":I
    :goto_53
    if-ge v7, v15, :cond_121

    .line 578
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    move-object v6, v0

    .line 579
    .local v6, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iput v14, v6, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 580
    add-int/lit8 v0, v7, 0x1

    iput v0, v6, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 581
    iput v15, v6, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 588
    const/4 v5, 0x1

    iput-boolean v5, v6, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 592
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v0

    const-class v1, Lcom/android/internal/telephony/TelephonyComponentFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v21

    .line 593
    .local v21, "telephonyComponentFactory":Lcom/android/internal/telephony/TelephonyComponentFactory;
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeSmsHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v4

    .line 595
    .local v4, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iput-object v6, v4, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 598
    if-ne v12, v5, :cond_88

    .line 599
    aget-object v0, v20, v7

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iput v0, v4, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 600
    aget-object v0, v20, v7

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    iput v0, v4, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 603
    :cond_88
    const/4 v0, 0x0

    .line 604
    .local v0, "sentIntent":Landroid/app/PendingIntent;
    if-eqz v13, :cond_9b

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v7, :cond_9b

    .line 605
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/app/PendingIntent;

    move-object/from16 v22, v0

    goto :goto_9d

    .line 608
    :cond_9b
    move-object/from16 v22, v0

    .end local v0    # "sentIntent":Landroid/app/PendingIntent;
    .local v22, "sentIntent":Landroid/app/PendingIntent;
    :goto_9d
    const/4 v0, 0x0

    .line 609
    .local v0, "deliveryIntent":Landroid/app/PendingIntent;
    move-object/from16 v3, p5

    if-eqz v3, :cond_b2

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v7, :cond_b2

    .line 610
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/app/PendingIntent;

    move-object/from16 v23, v0

    goto :goto_b4

    .line 613
    :cond_b2
    move-object/from16 v23, v0

    .end local v0    # "deliveryIntent":Landroid/app/PendingIntent;
    .local v23, "deliveryIntent":Landroid/app/PendingIntent;
    :goto_b4
    nop

    .line 614
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

    invoke-virtual/range {v0 .. v18}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->getNewSubmitPduTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;IZIJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    move-object/from16 v1, v29

    .end local v29    # "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .local v1, "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    aput-object v0, v1, v27

    .line 618
    aget-object v0, v1, v27

    if-nez v0, :cond_10f

    .line 619
    move-object/from16 v0, p0

    move-object/from16 v2, p4

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->triggerSentIntentForFailure(Ljava/util/List;)V

    .line 620
    return-void

    .line 618
    :cond_10f
    move-object/from16 v0, p0

    move-object/from16 v2, p4

    .line 577
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

    .line 624
    .end local v7    # "i":I
    .end local v9    # "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .end local v12    # "encoding":I
    .end local v14    # "refNumber":I
    .end local v15    # "msgCount":I
    .restart local v1    # "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .restart local v24    # "refNumber":I
    .restart local v30    # "encoding":I
    .restart local v31    # "msgCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v3

    .line 625
    .local v3, "carrierPackage":Ljava/lang/String;
    const-string v4, "MtkGsmSMSDispatcher"

    if-eqz v3, :cond_14c

    .line 626
    const-string v5, "Found carrier package."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

    move-object/from16 v5, p3

    invoke-direct {v4, v0, v5, v1}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Ljava/util/ArrayList;[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 628
    .local v4, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;
    new-instance v6, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;

    invoke-direct {v6, v0, v4}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;)V

    invoke-virtual {v4, v3, v6}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;)V

    .line 630
    .end local v4    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;
    goto :goto_160

    .line 631
    :cond_14c
    move-object/from16 v5, p3

    const-string v6, "No carrier package."

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    array-length v4, v1

    move/from16 v8, v28

    :goto_156
    if-ge v8, v4, :cond_160

    aget-object v6, v1, v8

    .line 633
    .local v6, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {v0, v6}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 632
    .end local v6    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    add-int/lit8 v8, v8, 0x1

    goto :goto_156

    .line 636
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

    .line 543
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

    const-string v1, "MtkGsmSMSDispatcher"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v0, v14, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mEncodingType:Ljava/lang/ThreadLocal;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 545
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

    invoke-virtual/range {v0 .. v13}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZIJ)V

    .line 547
    iget-object v0, v14, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mEncodingType:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 548
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

    .line 512
    move-object/from16 v15, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendTextWithEncodingType encoding = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p4

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkGsmSMSDispatcher"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v0, v15, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mEncodingType:Ljava/lang/ThreadLocal;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 514
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

    invoke-virtual/range {v0 .. v14}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZIZJ)V

    .line 516
    iget-object v0, v15, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mEncodingType:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 517
    return-void
.end method

.method public setSmsMemoryStatus(Z)V
    .registers 4
    .param p1, "status"    # Z

    .line 721
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mStorageAvailable:Z

    if-eq p1, v0, :cond_c

    .line 722
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mStorageAvailable:Z

    .line 723
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    .line 725
    :cond_c
    return-void
.end method

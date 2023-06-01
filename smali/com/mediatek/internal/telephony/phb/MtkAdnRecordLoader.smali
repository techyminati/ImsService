.class public Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
.super Lcom/android/internal/telephony/uicc/AdnRecordLoader;
.source "MtkAdnRecordLoader.java"


# static fields
.field private static ADN_FILE_SIZE:I = 0x0

.field static final EVENT_PHB_LOAD_ALL_DONE:I = 0x68

.field static final EVENT_PHB_LOAD_DONE:I = 0x67

.field static final EVENT_PHB_QUERY_STAUTS:I = 0x69

.field static final EVENT_UPDATE_PHB_RECORD_DONE:I = 0x65

.field static final EVENT_VERIFY_PIN2:I = 0x66

.field static final LOG_TAG:Ljava/lang/String; = "MtkRecordLoader"


# instance fields
.field private mAdns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 66
    const/16 v0, 0xfa

    sput v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->ADN_FILE_SIZE:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .registers 2
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 80
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 81
    return-void
.end method

.method private canUseGsm7Bit(Ljava/lang/String;)Z
    .registers 4
    .param p1, "alphaId"    # Ljava/lang/String;

    .line 499
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    if-eqz v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private encodeATUCS(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "input"    # Ljava/lang/String;

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 508
    .local v0, "output":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 509
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 510
    .local v2, "hexInt":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_15
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x4

    if-ge v3, v4, :cond_25

    .line 511
    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 513
    .end local v3    # "j":I
    :cond_25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .end local v2    # "hexInt":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 516
    .end local v1    # "i":I
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getAdnRecordFromPhbEntry(Lcom/mediatek/internal/telephony/phb/PhbEntry;)Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .registers 9
    .param p1, "entry"    # Lcom/mediatek/internal/telephony/phb/PhbEntry;

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parse Adn entry :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkRecordLoader"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v0, p1, Lcom/mediatek/internal/telephony/phb/PhbEntry;->alphaId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 618
    .local v0, "ba":[B
    const/4 v2, 0x0

    if-nez v0, :cond_25

    .line 619
    const-string v3, "entry.alphaId is null"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    return-object v2

    .line 624
    :cond_25
    :try_start_25
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/mediatek/internal/telephony/phb/PhbEntry;->alphaId:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    const-string v6, "utf-16be"

    invoke-direct {v3, v0, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_35
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_25 .. :try_end_35} :catch_68

    move-object v1, v3

    .line 629
    .local v1, "alphaId":Ljava/lang/String;
    nop

    .line 633
    iget v2, p1, Lcom/mediatek/internal/telephony/phb/PhbEntry;->ton:I

    const/16 v3, 0x91

    if-ne v2, v3, :cond_44

    .line 634
    iget-object v2, p1, Lcom/mediatek/internal/telephony/phb/PhbEntry;->number:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkPhoneNumberUtils;->prependPlusToNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "number":Ljava/lang/String;
    goto :goto_46

    .line 636
    .end local v2    # "number":Ljava/lang/String;
    :cond_44
    iget-object v2, p1, Lcom/mediatek/internal/telephony/phb/PhbEntry;->number:Ljava/lang/String;

    .line 640
    .restart local v2    # "number":Ljava/lang/String;
    :goto_46
    const/16 v3, 0x3f

    const/16 v4, 0x4e

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 642
    const/16 v3, 0x70

    const/16 v4, 0x2c

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 644
    const/16 v3, 0x77

    const/16 v4, 0x3b

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 646
    new-instance v3, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    iget v4, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mEf:I

    iget v5, p1, Lcom/mediatek/internal/telephony/phb/PhbEntry;->index:I

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 625
    .end local v1    # "alphaId":Ljava/lang/String;
    .end local v2    # "number":Ljava/lang/String;
    :catch_68
    move-exception v3

    .line 626
    .local v3, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v4, "implausible UnsupportedEncodingException"

    invoke-static {v1, v4, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 628
    return-object v2
.end method

.method private getPhbStorageType(I)I
    .registers 3
    .param p1, "ef"    # I

    .line 520
    const/4 v0, -0x1

    .line 521
    .local v0, "type":I
    packed-switch p1, :pswitch_data_a

    goto :goto_9

    .line 526
    :pswitch_5
    const/4 v0, 0x1

    .line 527
    goto :goto_9

    .line 523
    :pswitch_7
    const/4 v0, 0x0

    .line 524
    nop

    .line 534
    :goto_9
    return v0

    :pswitch_data_a
    .packed-switch 0x6f3a
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private readEntryFromModem(I[I)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "readInfo"    # [I

    .line 591
    array-length v0, p2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1c

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readEntryToModem, invalid paramters:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkRecordLoader"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    return-void

    .line 603
    :cond_1c
    const/4 v0, 0x0

    aget v1, p2, v0

    add-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, -0x1

    .line 604
    .local v1, "eIndex":I
    const/4 v2, 0x2

    aget v3, p2, v2

    if-le v1, v3, :cond_2a

    .line 605
    aget v1, p2, v2

    .line 608
    :cond_2a
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v2, v2, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkRIL;

    aget v0, p2, v0

    const/16 v3, 0x68

    .line 609
    invoke-virtual {p0, v3, p2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 608
    invoke-virtual {v2, p1, v0, v1, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->readPhbEntry(IIILandroid/os/Message;)V

    .line 610
    return-void
.end method

.method private updatePhb(Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;I)V
    .registers 6
    .param p1, "adn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .param p2, "type"    # I

    .line 490
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mPin2:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 491
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mPin2:Ljava/lang/String;

    const/16 v2, 0x66

    invoke-virtual {p0, v2, p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_17

    .line 493
    :cond_14
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->writeEntryToModem(Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;I)V

    .line 496
    :goto_17
    return-void
.end method

.method private writeEntryToModem(Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;I)V
    .registers 10
    .param p1, "adn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .param p2, "type"    # I

    .line 538
    const/16 v0, 0x81

    .line 539
    .local v0, "ton":I
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 540
    .local v1, "number":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v2

    .line 543
    .local v2, "alphaId":Ljava/lang/String;
    const/16 v3, 0x2b

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const-string v5, ""

    const/4 v6, -0x1

    if-eq v4, v6, :cond_2e

    .line 544
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-eq v4, v3, :cond_26

    .line 546
    const-string v3, "MtkRecordLoader"

    const-string v4, "There are multiple \'+\' in number"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_26
    const/16 v0, 0x91

    .line 550
    const-string v3, "+"

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 553
    :cond_2e
    const/16 v3, 0x4e

    const/16 v4, 0x3f

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 555
    const/16 v3, 0x2c

    const/16 v4, 0x70

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 557
    const/16 v3, 0x3b

    const/16 v4, 0x77

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 566
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->encodeATUCS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 568
    new-instance v3, Lcom/mediatek/internal/telephony/phb/PhbEntry;

    invoke-direct {v3}, Lcom/mediatek/internal/telephony/phb/PhbEntry;-><init>()V

    .line 569
    .local v3, "entry":Lcom/mediatek/internal/telephony/phb/PhbEntry;
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6e

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6e

    const/16 v4, 0x81

    if-eq v0, v4, :cond_60

    goto :goto_6e

    .line 577
    :cond_60
    iput p2, v3, Lcom/mediatek/internal/telephony/phb/PhbEntry;->type:I

    .line 578
    iget v4, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mRecordNumber:I

    iput v4, v3, Lcom/mediatek/internal/telephony/phb/PhbEntry;->index:I

    .line 579
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/mediatek/internal/telephony/phb/PhbEntry;->number:Ljava/lang/String;

    .line 580
    iput v0, v3, Lcom/mediatek/internal/telephony/phb/PhbEntry;->ton:I

    .line 581
    iput-object v4, v3, Lcom/mediatek/internal/telephony/phb/PhbEntry;->alphaId:Ljava/lang/String;

    goto :goto_7a

    .line 571
    :cond_6e
    :goto_6e
    iput p2, v3, Lcom/mediatek/internal/telephony/phb/PhbEntry;->type:I

    .line 572
    iget v4, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mRecordNumber:I

    iput v4, v3, Lcom/mediatek/internal/telephony/phb/PhbEntry;->index:I

    .line 573
    iput-object v1, v3, Lcom/mediatek/internal/telephony/phb/PhbEntry;->number:Ljava/lang/String;

    .line 574
    iput v0, v3, Lcom/mediatek/internal/telephony/phb/PhbEntry;->ton:I

    .line 575
    iput-object v2, v3, Lcom/mediatek/internal/telephony/phb/PhbEntry;->alphaId:Ljava/lang/String;

    .line 584
    :goto_7a
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v4, v4, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v4, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v5, 0x65

    .line 585
    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 584
    invoke-virtual {v4, v3, v5}, Lcom/mediatek/internal/telephony/MtkRIL;->writePhbEntry(Lcom/mediatek/internal/telephony/phb/PhbEntry;Landroid/os/Message;)V

    .line 587
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 21
    .param p1, "msg"    # Landroid/os/Message;

    .line 175
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "MtkRecordLoader"

    const/4 v4, 0x0

    :try_start_7
    iget v0, v2, Landroid/os/Message;->what:I
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_9} :catch_339

    const/4 v5, 0x3

    const-string v6, "load failed"

    const-string v7, ""

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    sparse-switch v0, :sswitch_data_3a4

    goto/16 :goto_316

    .line 388
    :sswitch_16
    :try_start_16
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 389
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [I

    .line 391
    .local v6, "info":[I
    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_5a

    .line 396
    iget v11, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mEf:I

    invoke-direct {v1, v11}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->getPhbStorageType(I)I

    move-result v11

    .line 397
    .local v11, "type":I
    new-array v5, v5, [I

    .line 398
    .local v5, "readInfo":[I
    aput v10, v5, v9

    .line 399
    aget v9, v6, v9

    aput v9, v5, v10

    .line 400
    aget v9, v6, v10

    aput v9, v5, v8

    .line 402
    new-instance v9, Ljava/util/ArrayList;

    aget v12, v5, v8

    invoke-direct {v9, v12}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v9, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    .line 403
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3e
    aget v12, v5, v8

    if-ge v9, v12, :cond_53

    .line 405
    new-instance v12, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    iget v13, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mEf:I

    add-int/lit8 v14, v9, 0x1

    invoke-direct {v12, v13, v14, v7, v7}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 406
    .local v12, "adn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    iget-object v13, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    invoke-virtual {v13, v9, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 403
    add-int/lit8 v9, v9, 0x1

    goto :goto_3e

    .line 409
    .end local v9    # "i":I
    .end local v12    # "adn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :cond_53
    invoke-direct {v1, v11, v5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->readEntryFromModem(I[I)V

    .line 410
    iput v10, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mPendingExtLoads:I

    .line 411
    goto/16 :goto_316

    .line 392
    .end local v5    # "readInfo":[I
    .end local v11    # "type":I
    :cond_5a
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v7, "PHB Query Info Error"

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v5, v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .end local p1    # "msg":Landroid/os/Message;
    throw v5

    .line 414
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v6    # "info":[I
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .restart local p1    # "msg":Landroid/os/Message;
    :sswitch_64
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 415
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, [I

    .line 416
    .restart local v5    # "readInfo":[I
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [Lcom/mediatek/internal/telephony/phb/PhbEntry;

    .line 418
    .local v6, "entries":[Lcom/mediatek/internal/telephony/phb/PhbEntry;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_e1

    .line 423
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_75
    array-length v11, v6

    if-ge v7, v11, :cond_9c

    .line 424
    aget-object v11, v6, v7

    invoke-direct {v1, v11}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->getAdnRecordFromPhbEntry(Lcom/mediatek/internal/telephony/phb/PhbEntry;)Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    move-result-object v11

    .line 425
    .local v11, "adn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    if-eqz v11, :cond_90

    .line 426
    iget-object v12, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    iget v13, v11, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mRecordNumber:I

    sub-int/2addr v13, v10

    invoke-virtual {v12, v13, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 427
    aget v12, v5, v10

    sub-int/2addr v12, v10

    aput v12, v5, v10

    .line 423
    add-int/lit8 v7, v7, 0x1

    goto :goto_75

    .line 431
    :cond_90
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "getAdnRecordFromPhbEntry return null"

    .line 433
    invoke-static {v8}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v8

    invoke-direct {v9, v10, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .end local p1    # "msg":Landroid/os/Message;
    throw v9

    .line 437
    .end local v7    # "i":I
    .end local v11    # "adn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .restart local p1    # "msg":Landroid/os/Message;
    :cond_9c
    aget v7, v5, v9

    add-int/lit8 v7, v7, 0xa

    aput v7, v5, v9

    .line 439
    aget v7, v5, v10

    if-ltz v7, :cond_c4

    .line 446
    aget v7, v5, v10

    if-eqz v7, :cond_bc

    aget v7, v5, v9

    aget v8, v5, v8

    if-lt v7, v8, :cond_b1

    goto :goto_bc

    .line 451
    :cond_b1
    iget v7, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mEf:I

    invoke-direct {v1, v7}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->getPhbStorageType(I)I

    move-result v7

    .line 452
    .local v7, "type":I
    invoke-direct {v1, v7, v5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->readEntryFromModem(I[I)V

    .line 454
    goto/16 :goto_316

    .line 448
    .end local v7    # "type":I
    :cond_bc
    :goto_bc
    iget-object v7, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    iput-object v7, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mResult:Ljava/lang/Object;

    .line 449
    iput v9, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mPendingExtLoads:I

    goto/16 :goto_316

    .line 440
    :cond_c4
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "the read entries is not sync with query status: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v5, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 442
    invoke-static {v8}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v8

    invoke-direct {v7, v9, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .end local p1    # "msg":Landroid/os/Message;
    throw v7

    .line 419
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .restart local p1    # "msg":Landroid/os/Message;
    :cond_e1
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "PHB Read Entries Error"

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v7, v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .end local p1    # "msg":Landroid/os/Message;
    throw v7

    .line 367
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "readInfo":[I
    .end local v6    # "entries":[Lcom/mediatek/internal/telephony/phb/PhbEntry;
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .restart local p1    # "msg":Landroid/os/Message;
    :sswitch_eb
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 368
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Lcom/mediatek/internal/telephony/phb/PhbEntry;

    .line 370
    .local v5, "entries":[Lcom/mediatek/internal/telephony/phb/PhbEntry;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_103

    .line 375
    aget-object v6, v5, v9

    invoke-direct {v1, v6}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->getAdnRecordFromPhbEntry(Lcom/mediatek/internal/telephony/phb/PhbEntry;)Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    move-result-object v6

    .line 376
    .local v6, "adn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    iput-object v6, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mResult:Ljava/lang/Object;

    .line 377
    iput v9, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mPendingExtLoads:I

    .line 379
    goto/16 :goto_316

    .line 371
    .end local v6    # "adn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :cond_103
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "PHB Read an entry Error"

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v6, v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .end local p1    # "msg":Landroid/os/Message;
    throw v6

    .line 354
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "entries":[Lcom/mediatek/internal/telephony/phb/PhbEntry;
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .restart local p1    # "msg":Landroid/os/Message;
    :sswitch_10d
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 355
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    .line 357
    .local v5, "adn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_126

    .line 362
    iget v6, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mEf:I

    invoke-direct {v1, v6}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->getPhbStorageType(I)I

    move-result v6

    invoke-direct {v1, v5, v6}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->writeEntryToModem(Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;I)V

    .line 363
    iput v10, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mPendingExtLoads:I

    .line 364
    goto/16 :goto_316

    .line 358
    :cond_126
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "PHB Verify PIN2 error"

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v6, v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .end local p1    # "msg":Landroid/os/Message;
    throw v6

    .line 344
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "adn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .restart local p1    # "msg":Landroid/os/Message;
    :sswitch_130
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 345
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_13e

    .line 349
    iput v9, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mPendingExtLoads:I

    .line 350
    iput-object v4, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mResult:Ljava/lang/Object;

    .line 351
    goto/16 :goto_316

    .line 346
    :cond_13e
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "update PHB EF record failed"

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v5, v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .end local p1    # "msg":Landroid/os/Message;
    throw v5

    .line 239
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .restart local p1    # "msg":Landroid/os/Message;
    :sswitch_148
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 240
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const/4 v5, 0x0

    .line 241
    .local v5, "iccException":Lcom/android/internal/telephony/uicc/IccException;
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 242
    .local v6, "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_16a

    .line 246
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v7

    move-object v5, v7

    .line 247
    if-nez v5, :cond_162

    .line 252
    iput v9, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mPendingExtLoads:I

    .line 253
    iput-object v4, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mResult:Ljava/lang/Object;

    .line 254
    goto/16 :goto_316

    .line 248
    :cond_162
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "update EF adn record failed for sw"

    invoke-direct {v7, v8, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .end local p1    # "msg":Landroid/os/Message;
    throw v7

    .line 243
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .restart local p1    # "msg":Landroid/os/Message;
    :cond_16a
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "update EF adn record failed"

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v7, v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .end local p1    # "msg":Landroid/os/Message;
    throw v7

    .line 177
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    .end local v6    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .restart local p1    # "msg":Landroid/os/Message;
    :sswitch_174
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 178
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    .line 180
    .local v6, "adn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_22a

    .line 185
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [I

    .line 191
    .local v7, "recordSize":[I
    iget v11, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mRecordNumber:I

    .line 193
    .local v11, "recordIndex":I
    iget-object v12, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->hasModemPhbEnhanceCapability(Lcom/android/internal/telephony/uicc/IccFileHandler;)Z

    move-result v12

    if-nez v12, :cond_195

    .line 194
    add-int/lit8 v12, v11, -0x1

    sget v13, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->ADN_FILE_SIZE:I

    rem-int/2addr v12, v13

    add-int/lit8 v11, v12, 0x1

    .line 197
    :cond_195
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[AdnRecordLoader] recordIndex :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    array-length v12, v7

    if-ne v12, v5, :cond_220

    aget v5, v7, v8

    if-gt v11, v5, :cond_220

    .line 203
    const-string v5, "[AdnRecordLoader] EVENT_EF_LINEAR_RECORD_SIZE_DONE safe "

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v5, 0x1

    .line 206
    .local v5, "errorNum":I
    const-string v8, "in EVENT_EF_LINEAR_RECORD_SIZE_DONE,call adn.buildAdnString"

    invoke-static {v3, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    aget v8, v7, v9

    invoke-virtual {v6, v8}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->buildAdnString(I)[B

    move-result-object v8

    .line 209
    .local v8, "data":[B
    if-nez v8, :cond_203

    .line 210
    const-string v10, "data is null"

    invoke-static {v3, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getErrorNumber()I

    move-result v10

    move v5, v10

    .line 212
    const/4 v10, -0x1

    if-eq v5, v10, :cond_1f5

    .line 216
    const/4 v10, -0x2

    if-eq v5, v10, :cond_1e7

    .line 220
    const/16 v10, -0xf

    if-eq v5, v10, :cond_1dd

    .line 226
    iput v9, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mPendingExtLoads:I

    .line 227
    iput-object v4, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mResult:Ljava/lang/Object;

    .line 228
    goto/16 :goto_316

    .line 222
    :cond_1dd
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "wrong ADN format"

    iget-object v12, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v9, v10, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .end local p1    # "msg":Landroid/os/Message;
    throw v9

    .line 217
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .restart local p1    # "msg":Landroid/os/Message;
    :cond_1e7
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "data is null and TEXT_STRING_TOO_LONG"

    const/16 v12, 0x1f6

    .line 218
    invoke-static {v12}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v12

    invoke-direct {v9, v10, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .end local p1    # "msg":Landroid/os/Message;
    throw v9

    .line 213
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .restart local p1    # "msg":Landroid/os/Message;
    :cond_1f5
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "data is null and DIAL_STRING_TOO_LONG"

    const/16 v12, 0x1f5

    .line 214
    invoke-static {v12}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v12

    invoke-direct {v9, v10, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .end local p1    # "msg":Landroid/os/Message;
    throw v9

    .line 232
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .restart local p1    # "msg":Landroid/os/Message;
    :cond_203
    iget-object v12, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget v13, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mEf:I

    iget v9, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mEf:I

    invoke-virtual {v1, v9}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->getEFPath(I)Ljava/lang/String;

    move-result-object v14

    iget-object v9, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mPin2:Ljava/lang/String;

    const/4 v15, 0x5

    .line 233
    invoke-virtual {v1, v15}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    .line 232
    move v15, v11

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    invoke-virtual/range {v12 .. v18}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(ILjava/lang/String;I[BLjava/lang/String;Landroid/os/Message;)V

    .line 235
    iput v10, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mPendingExtLoads:I

    .line 237
    goto/16 :goto_316

    .line 200
    .end local v5    # "errorNum":I
    .end local v8    # "data":[B
    :cond_220
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v8, "get wrong EF record size format"

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v5, v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .end local p1    # "msg":Landroid/os/Message;
    throw v5

    .line 181
    .end local v7    # "recordSize":[I
    .end local v11    # "recordIndex":I
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .restart local p1    # "msg":Landroid/os/Message;
    :cond_22a
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v7, "get EF record size failed"

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v5, v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .end local p1    # "msg":Landroid/os/Message;
    throw v5

    .line 314
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v6    # "adn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .restart local p1    # "msg":Landroid/os/Message;
    :sswitch_234
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 315
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    .line 317
    .local v5, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_287

    .line 321
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    .line 322
    iput-object v6, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mResult:Ljava/lang/Object;

    .line 323
    iput v9, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mPendingExtLoads:I

    .line 325
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, "s":I
    :goto_254
    if-ge v6, v7, :cond_285

    .line 326
    new-instance v9, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    iget v11, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mEf:I

    add-int/lit8 v12, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    invoke-direct {v9, v11, v12, v13}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;-><init>(II[B)V

    .line 327
    .local v9, "adn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    iget-object v11, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->hasExtendedRecord()Z

    move-result v11

    if-eqz v11, :cond_282

    .line 334
    iget v11, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mPendingExtLoads:I

    add-int/2addr v11, v10

    iput v11, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mPendingExtLoads:I

    .line 336
    iget-object v11, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget v12, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mExtensionEF:I

    iget v13, v9, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mExtRecord:I

    .line 338
    invoke-virtual {v1, v8, v9}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    .line 336
    invoke-virtual {v11, v12, v13, v14}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 325
    :cond_282
    add-int/lit8 v6, v6, 0x1

    goto :goto_254

    .line 341
    .end local v6    # "i":I
    .end local v7    # "s":I
    .end local v9    # "adn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :cond_285
    goto/16 :goto_316

    .line 318
    :cond_287
    new-instance v7, Ljava/lang/RuntimeException;

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v7, v6, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .end local p1    # "msg":Landroid/os/Message;
    throw v7

    .line 287
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .restart local p1    # "msg":Landroid/os/Message;
    :sswitch_28f
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 288
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    .line 289
    .local v5, "data":[B
    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    .line 291
    .local v6, "adn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_2d3

    .line 292
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ADN extension EF: 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mExtensionEF:I

    .line 293
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mExtRecord:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 292
    invoke-static {v3, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {v6, v5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->appendExtRecord([B)V

    goto :goto_2db

    .line 304
    :cond_2d3
    const-string v8, "Failed to read ext record. Clear the number now."

    invoke-static {v3, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {v6, v7}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setNumber(Ljava/lang/String;)V

    .line 308
    :goto_2db
    iget v7, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mPendingExtLoads:I

    sub-int/2addr v7, v10

    iput v7, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mPendingExtLoads:I

    .line 311
    goto :goto_316

    .line 256
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "data":[B
    .end local v6    # "adn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :sswitch_2e1
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 257
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    .line 259
    .restart local v5    # "data":[B
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_30e

    .line 270
    new-instance v6, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    iget v7, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mEf:I

    iget v9, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mRecordNumber:I

    invoke-direct {v6, v7, v9, v5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;-><init>(II[B)V

    .line 271
    .restart local v6    # "adn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    iput-object v6, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mResult:Ljava/lang/Object;

    .line 273
    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->hasExtendedRecord()Z

    move-result v7

    if-eqz v7, :cond_316

    .line 278
    iput v10, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mPendingExtLoads:I

    .line 280
    iget-object v7, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget v9, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mExtensionEF:I

    iget v10, v6, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mExtRecord:I

    .line 282
    invoke-virtual {v1, v8, v6}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 280
    invoke-virtual {v7, v9, v10, v8}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto :goto_316

    .line 260
    .end local v6    # "adn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :cond_30e
    new-instance v7, Ljava/lang/RuntimeException;

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v7, v6, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .end local p1    # "msg":Landroid/os/Message;
    throw v7
    :try_end_316
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_316} :catch_339

    .line 476
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "data":[B
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;
    .restart local p1    # "msg":Landroid/os/Message;
    :cond_316
    :goto_316
    nop

    .line 478
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    if-eqz v0, :cond_338

    iget v0, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mPendingExtLoads:I

    if-nez v0, :cond_338

    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_338

    .line 479
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iget-object v3, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mResult:Ljava/lang/Object;

    iput-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 482
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 483
    iput-object v4, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 485
    :cond_338
    return-void

    .line 459
    :catch_339
    move-exception v0

    .line 460
    .local v0, "exc":Ljava/lang/RuntimeException;
    iget-object v5, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    if-eqz v5, :cond_3a2

    iget-object v5, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_3a2

    .line 461
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage RuntimeException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-nez v5, :cond_38f

    .line 464
    const-string v5, "handleMessage Null RuntimeException"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v3, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    new-instance v5, Lcom/android/internal/telephony/CommandException;

    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v5, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_39b

    .line 468
    :cond_38f
    iget-object v3, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    iput-object v5, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 470
    :goto_39b
    iget-object v3, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 473
    iput-object v4, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 475
    :cond_3a2
    return-void

    nop

    :sswitch_data_3a4
    .sparse-switch
        0x1 -> :sswitch_2e1
        0x2 -> :sswitch_28f
        0x3 -> :sswitch_234
        0x4 -> :sswitch_174
        0x5 -> :sswitch_148
        0x65 -> :sswitch_130
        0x66 -> :sswitch_10d
        0x67 -> :sswitch_eb
        0x68 -> :sswitch_64
        0x69 -> :sswitch_16
    .end sparse-switch
.end method

.method public loadAllFromEF(IILandroid/os/Message;)V
    .registers 8
    .param p1, "ef"    # I
    .param p2, "extensionEF"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 115
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mEf:I

    .line 116
    iput p2, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mExtensionEF:I

    .line 117
    iput-object p3, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 119
    const-string v0, "MtkRecordLoader"

    const-string v1, "Usim :loadEFLinearFixedAll"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->getPhbStorageType(I)I

    move-result v0

    .line 121
    .local v0, "type":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_24

    .line 122
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0x69

    .line 124
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 122
    invoke-virtual {v1, v0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->queryPhbStorageInfo(ILandroid/os/Message;)V

    goto :goto_32

    .line 126
    :cond_24
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 127
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->getEFPath(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .line 128
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 126
    invoke-virtual {v1, p1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILjava/lang/String;Landroid/os/Message;)V

    .line 130
    :goto_32
    return-void
.end method

.method public loadFromEF(IIILandroid/os/Message;)V
    .registers 9
    .param p1, "ef"    # I
    .param p2, "extensionEF"    # I
    .param p3, "recordNumber"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 90
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mEf:I

    .line 91
    iput p2, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mExtensionEF:I

    .line 92
    iput p3, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mRecordNumber:I

    .line 93
    iput-object p4, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 95
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->getPhbStorageType(I)I

    move-result v0

    .line 96
    .local v0, "type":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1f

    .line 97
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0x67

    .line 99
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 97
    invoke-virtual {v1, v0, p3, p3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->readPhbEntry(IIILandroid/os/Message;)V

    goto :goto_2d

    .line 101
    :cond_1f
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 102
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->getEFPath(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 103
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 101
    invoke-virtual {v1, p1, v2, p3, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(ILjava/lang/String;ILandroid/os/Message;)V

    .line 105
    :goto_2d
    return-void
.end method

.method public updateEF(Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    .registers 11
    .param p1, "adn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .param p2, "ef"    # I
    .param p3, "extensionEF"    # I
    .param p4, "recordNumber"    # I
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "response"    # Landroid/os/Message;

    .line 147
    iput p2, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mEf:I

    .line 148
    iput p3, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mExtensionEF:I

    .line 149
    iput p4, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mRecordNumber:I

    .line 150
    iput-object p6, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 151
    iput-object p5, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mPin2:Ljava/lang/String;

    .line 153
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->getPhbStorageType(I)I

    move-result v0

    .line 154
    .local v0, "type":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_15

    .line 155
    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->updatePhb(Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;I)V

    goto :goto_23

    .line 157
    :cond_15
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->getEFPath(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    .line 158
    invoke-virtual {p0, v3, p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 157
    invoke-virtual {v1, p2, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILjava/lang/String;Landroid/os/Message;)V

    .line 160
    :goto_23
    return-void
.end method

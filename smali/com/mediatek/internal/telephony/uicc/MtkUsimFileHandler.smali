.class public final Lcom/mediatek/internal/telephony/uicc/MtkUsimFileHandler;
.super Lcom/android/internal/telephony/uicc/UsimFileHandler;
.source "MtkUsimFileHandler.java"


# static fields
.field static final LOG_TAG_EX:Ljava/lang/String; = "MtkUsimFH"

.field static final MIN_COUNT:I = 0x4


# instance fields
.field mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 5
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UsimFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUsimFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    .line 62
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    invoke-direct {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUsimFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    .line 63
    return-void
.end method

.method private isPayloadValid([B)Z
    .registers 6
    .param p1, "byteArray"    # [B

    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "isValid":Z
    if-nez p1, :cond_4

    .line 142
    return v0

    .line 145
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, p1

    if-ge v1, v2, :cond_32

    .line 146
    aget-byte v2, p1, v1

    const/16 v3, 0xff

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_2f

    .line 147
    const/4 v0, 0x1

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPayloadValid, byteArray = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkUsimFileHandler;->logd(Ljava/lang/String;)V

    .line 149
    goto :goto_32

    .line 145
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 152
    .end local v1    # "i":I
    :cond_32
    :goto_32
    return v0
.end method


# virtual methods
.method protected getEFPath(I)Ljava/lang/String;
    .registers 4
    .param p1, "efid"    # I

    .line 157
    const-string v0, "3F007FFF"

    sparse-switch p1, :sswitch_data_20

    .line 184
    const-string v0, "MtkUsimFH"

    const-string v1, "Usim aosp default getEFPath."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/UsimFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 175
    :sswitch_11
    const-string v0, "3F007F10"

    return-object v0

    .line 182
    :sswitch_14
    return-object v0

    .line 173
    :sswitch_15
    return-object v0

    .line 169
    :sswitch_16
    const-string v0, "3F007F20"

    return-object v0

    .line 177
    :sswitch_19
    const-string v0, "7FFF7F665F30"

    return-object v0

    .line 179
    :sswitch_1c
    const-string v0, "3F007FFF5FC0"

    return-object v0

    nop

    :sswitch_data_20
    .sparse-switch
        0x4f08 -> :sswitch_1c
        0x4f36 -> :sswitch_19
        0x6f11 -> :sswitch_16
        0x6f13 -> :sswitch_16
        0x6f14 -> :sswitch_16
        0x6f15 -> :sswitch_16
        0x6f16 -> :sswitch_16
        0x6f17 -> :sswitch_16
        0x6f18 -> :sswitch_16
        0x6f42 -> :sswitch_15
        0x6f49 -> :sswitch_15
        0x6fb7 -> :sswitch_15
        0x6fd6 -> :sswitch_14
        0x6fda -> :sswitch_14
        0x6fe5 -> :sswitch_11
    .end sparse-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 21
    .param p1, "msg"    # Landroid/os/Message;

    .line 70
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 74
    .local v3, "response":Landroid/os/Message;
    const/4 v4, 0x0

    .line 77
    .local v4, "path":Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_7
    iget v0, v2, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_11c

    .line 128
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/UsimFileHandler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_e9

    .line 80
    :pswitch_11
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 81
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 82
    .local v6, "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 83
    .local v7, "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    iget-object v8, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    move-object v3, v8

    .line 84
    iget-object v8, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mPath:Ljava/lang/String;

    move-object v4, v8

    .line 86
    iget v8, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    const/16 v9, 0x6fc5

    if-eq v8, v9, :cond_34

    iget v8, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    const/16 v9, 0x6fc6

    if-eq v8, v9, :cond_34

    .line 87
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/UsimFileHandler;->handleMessage(Landroid/os/Message;)V

    .line 88
    goto/16 :goto_e9

    .line 91
    :cond_34
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_READ_RECORD_DONE, lc.mEfid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/mediatek/internal/telephony/uicc/MtkUsimFileHandler;->logd(Ljava/lang/String;)V

    .line 92
    iget-object v8, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v1, v3, v8}, Lcom/mediatek/internal/telephony/uicc/MtkUsimFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v8

    if-eqz v8, :cond_56

    .line 93
    goto/16 :goto_e9

    .line 96
    :cond_56
    iget-boolean v8, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mLoadAll:Z

    if-nez v8, :cond_61

    .line 97
    iget-object v8, v7, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-virtual {v1, v3, v8, v5}, Lcom/mediatek/internal/telephony/uicc/MtkUsimFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_e9

    .line 99
    :cond_61
    iget-object v8, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    iget-object v9, v7, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    iget v8, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    .line 102
    iget-object v8, v7, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-direct {v1, v8}, Lcom/mediatek/internal/telephony/uicc/MtkUsimFileHandler;->isPayloadValid([B)Z

    move-result v8

    if-nez v8, :cond_b8

    iget v8, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    const/4 v9, 0x4

    if-ge v8, v9, :cond_7c

    goto :goto_b8

    .line 116
    :cond_7c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_READ_RECORD_DONE, create invalid record from index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ,total count: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/mediatek/internal/telephony/uicc/MtkUsimFileHandler;->logd(Ljava/lang/String;)V

    .line 118
    iget v8, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    .local v8, "i":I
    :goto_9e
    iget v9, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    if-gt v8, v9, :cond_b2

    .line 119
    iget-object v9, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    iget-object v10, v7, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    iget v9, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    .line 118
    add-int/lit8 v8, v8, 0x1

    goto :goto_9e

    .line 122
    .end local v8    # "i":I
    :cond_b2
    iget-object v8, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v8, v5}, Lcom/mediatek/internal/telephony/uicc/MtkUsimFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 125
    goto :goto_e9

    .line 103
    :cond_b8
    :goto_b8
    iget v8, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    iget v9, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    if-le v8, v9, :cond_c4

    .line 104
    iget-object v8, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v8, v5}, Lcom/mediatek/internal/telephony/uicc/MtkUsimFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_e9

    .line 106
    :cond_c4
    if-nez v4, :cond_cd

    .line 107
    iget v8, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    invoke-virtual {v1, v8}, Lcom/mediatek/internal/telephony/uicc/MtkUsimFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 109
    :cond_cd
    iget-object v8, v1, Lcom/mediatek/internal/telephony/uicc/MtkUsimFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v9, 0xb2

    iget v10, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    iget v12, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    const/4 v13, 0x4

    iget v14, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v11, v1, Lcom/mediatek/internal/telephony/uicc/MtkUsimFileHandler;->mAid:Ljava/lang/String;

    const/4 v5, 0x7

    .line 113
    invoke-virtual {v1, v5, v6}, Lcom/mediatek/internal/telephony/uicc/MtkUsimFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    .line 109
    move-object v5, v11

    move-object v11, v4

    move-object/from16 v17, v5

    invoke-interface/range {v8 .. v18}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e9} :catch_ea

    .line 136
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v6    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v7    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    :goto_e9
    goto :goto_11a

    .line 129
    :catch_ea
    move-exception v0

    .line 130
    .local v0, "exc":Ljava/lang/Exception;
    if-eqz v3, :cond_106

    .line 131
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "caught exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mediatek/internal/telephony/uicc/MtkUsimFileHandler;->loge(Ljava/lang/String;)V

    .line 132
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUsimFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_11a

    .line 134
    :cond_106
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uncaught exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mediatek/internal/telephony/uicc/MtkUsimFileHandler;->loge(Ljava/lang/String;)V

    .line 137
    .end local v0    # "exc":Ljava/lang/Exception;
    :goto_11a
    return-void

    nop

    :pswitch_data_11c
    .packed-switch 0x7
        :pswitch_11
    .end packed-switch
.end method

.method public loadEFLinearFixedAll(IILandroid/os/Message;)V
    .registers 5
    .param p1, "fileid"    # I
    .param p2, "mode"    # I
    .param p3, "onLoaded"    # Landroid/os/Message;

    .line 194
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUsimFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->loadEFLinearFixedAllByMode(IILandroid/os/Message;)V

    .line 195
    return-void
.end method

.method public loadEFLinearFixedAll(ILandroid/os/Message;Z)V
    .registers 5
    .param p1, "fileid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;
    .param p3, "is7FFF"    # Z

    .line 190
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUsimFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->loadEFLinearFixedAllByPath(ILandroid/os/Message;Z)V

    .line 191
    return-void
.end method

.method public loadEFTransparent(ILjava/lang/String;Landroid/os/Message;)V
    .registers 5
    .param p1, "fileid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "onLoaded"    # Landroid/os/Message;

    .line 198
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUsimFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->loadEFTransparent(ILjava/lang/String;Landroid/os/Message;)V

    .line 199
    return-void
.end method

.method public readEFLinearFixed(IIILandroid/os/Message;)V
    .registers 6
    .param p1, "fileid"    # I
    .param p2, "recordNum"    # I
    .param p3, "recordSize"    # I
    .param p4, "onLoaded"    # Landroid/os/Message;

    .line 207
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUsimFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->readEFLinearFixed(IIILandroid/os/Message;)V

    .line 208
    return-void
.end method

.method public selectEFFile(ILandroid/os/Message;)V
    .registers 4
    .param p1, "fileid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .line 211
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUsimFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->selectEFFile(ILandroid/os/Message;)V

    .line 212
    return-void
.end method

.method public updateEFTransparent(ILjava/lang/String;[BLandroid/os/Message;)V
    .registers 6
    .param p1, "fileid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "onComplete"    # Landroid/os/Message;

    .line 202
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUsimFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->updateEFTransparent(ILjava/lang/String;[BLandroid/os/Message;)V

    .line 203
    return-void
.end method

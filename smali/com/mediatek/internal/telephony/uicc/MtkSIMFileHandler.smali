.class public final Lcom/mediatek/internal/telephony/uicc/MtkSIMFileHandler;
.super Lcom/android/internal/telephony/uicc/SIMFileHandler;
.source "MtkSIMFileHandler.java"


# static fields
.field static final LOG_TAG_EX:Ljava/lang/String; = "MtkSIMFH"

.field static final MIN_COUNT:I = 0x4


# instance fields
.field mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 5
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/SIMFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    .line 64
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    invoke-direct {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    .line 65
    return-void
.end method

.method private isPayloadValid([B)Z
    .registers 6
    .param p1, "byteArray"    # [B

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "isValid":Z
    if-nez p1, :cond_4

    .line 144
    return v0

    .line 147
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, p1

    if-ge v1, v2, :cond_32

    .line 148
    aget-byte v2, p1, v1

    const/16 v3, 0xff

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_2f

    .line 149
    const/4 v0, 0x1

    .line 150
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

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMFileHandler;->logd(Ljava/lang/String;)V

    .line 151
    goto :goto_32

    .line 147
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 154
    .end local v1    # "i":I
    :cond_32
    :goto_32
    return v0
.end method


# virtual methods
.method protected getEFPath(I)Ljava/lang/String;
    .registers 4
    .param p1, "efid"    # I

    .line 159
    sparse-switch p1, :sswitch_data_1c

    .line 171
    const-string v0, "MtkSIMFH"

    const-string v1, "SIM aosp default getEFPath."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/SIMFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 165
    :sswitch_f
    const-string v0, "3F007F20"

    return-object v0

    .line 161
    :sswitch_12
    const-string v0, "3F007F10"

    return-object v0

    .line 169
    :sswitch_15
    const-string v0, "3F007F25"

    return-object v0

    .line 167
    :sswitch_18
    const-string v0, "7FFF7F665F30"

    return-object v0

    nop

    :sswitch_data_1c
    .sparse-switch
        0x4f36 -> :sswitch_18
        0x6f22 -> :sswitch_15
        0x6f42 -> :sswitch_12
        0x6f7b -> :sswitch_f
        0x6fb7 -> :sswitch_f
        0x6fc6 -> :sswitch_f
    .end sparse-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 21
    .param p1, "msg"    # Landroid/os/Message;

    .line 72
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 76
    .local v3, "response":Landroid/os/Message;
    const/4 v4, 0x0

    .line 79
    .local v4, "path":Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_7
    iget v0, v2, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_11c

    .line 130
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/SIMFileHandler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_e9

    .line 82
    :pswitch_11
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 83
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 84
    .local v6, "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 85
    .local v7, "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    iget-object v8, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    move-object v3, v8

    .line 86
    iget-object v8, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mPath:Ljava/lang/String;

    move-object v4, v8

    .line 88
    iget v8, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    const/16 v9, 0x6fc5

    if-eq v8, v9, :cond_34

    iget v8, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    const/16 v9, 0x6fc6

    if-eq v8, v9, :cond_34

    .line 89
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/SIMFileHandler;->handleMessage(Landroid/os/Message;)V

    .line 90
    goto/16 :goto_e9

    .line 93
    :cond_34
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_READ_RECORD_DONE, lc.mEfid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/mediatek/internal/telephony/uicc/MtkSIMFileHandler;->logd(Ljava/lang/String;)V

    .line 94
    iget-object v8, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v1, v3, v8}, Lcom/mediatek/internal/telephony/uicc/MtkSIMFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v8

    if-eqz v8, :cond_56

    .line 95
    goto/16 :goto_e9

    .line 98
    :cond_56
    iget-boolean v8, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mLoadAll:Z

    if-nez v8, :cond_61

    .line 99
    iget-object v8, v7, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-virtual {v1, v3, v8, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_e9

    .line 101
    :cond_61
    iget-object v8, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    iget-object v9, v7, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iget v8, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    .line 104
    iget-object v8, v7, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-direct {v1, v8}, Lcom/mediatek/internal/telephony/uicc/MtkSIMFileHandler;->isPayloadValid([B)Z

    move-result v8

    if-nez v8, :cond_b8

    iget v8, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    const/4 v9, 0x4

    if-ge v8, v9, :cond_7c

    goto :goto_b8

    .line 118
    :cond_7c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_READ_RECORD_DONE, create invalid record from index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " , total count: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/mediatek/internal/telephony/uicc/MtkSIMFileHandler;->logd(Ljava/lang/String;)V

    .line 120
    iget v8, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    .local v8, "i":I
    :goto_9e
    iget v9, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    if-gt v8, v9, :cond_b2

    .line 121
    iget-object v9, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    iget-object v10, v7, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    iget v9, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    .line 120
    add-int/lit8 v8, v8, 0x1

    goto :goto_9e

    .line 124
    .end local v8    # "i":I
    :cond_b2
    iget-object v8, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v8, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 127
    goto :goto_e9

    .line 105
    :cond_b8
    :goto_b8
    iget v8, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    iget v9, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    if-le v8, v9, :cond_c4

    .line 106
    iget-object v8, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v8, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_e9

    .line 108
    :cond_c4
    if-nez v4, :cond_cd

    .line 109
    iget v8, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    invoke-virtual {v1, v8}, Lcom/mediatek/internal/telephony/uicc/MtkSIMFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 111
    :cond_cd
    iget-object v8, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v9, 0xb2

    iget v10, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    iget v12, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    const/4 v13, 0x4

    iget v14, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v11, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMFileHandler;->mAid:Ljava/lang/String;

    const/4 v5, 0x7

    .line 115
    invoke-virtual {v1, v5, v6}, Lcom/mediatek/internal/telephony/uicc/MtkSIMFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    .line 111
    move-object v5, v11

    move-object v11, v4

    move-object/from16 v17, v5

    invoke-interface/range {v8 .. v18}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e9} :catch_ea

    .line 138
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v6    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v7    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    :goto_e9
    goto :goto_11a

    .line 131
    :catch_ea
    move-exception v0

    .line 132
    .local v0, "exc":Ljava/lang/Exception;
    if-eqz v3, :cond_106

    .line 133
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "caught exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMFileHandler;->loge(Ljava/lang/String;)V

    .line 134
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_11a

    .line 136
    :cond_106
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uncaught exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMFileHandler;->loge(Ljava/lang/String;)V

    .line 139
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

    .line 181
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->loadEFLinearFixedAllByMode(IILandroid/os/Message;)V

    .line 182
    return-void
.end method

.method public loadEFLinearFixedAll(ILandroid/os/Message;Z)V
    .registers 5
    .param p1, "fileid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;
    .param p3, "is7FFF"    # Z

    .line 177
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->loadEFLinearFixedAllByPath(ILandroid/os/Message;Z)V

    .line 178
    return-void
.end method

.method public loadEFTransparent(ILjava/lang/String;Landroid/os/Message;)V
    .registers 5
    .param p1, "fileid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "onLoaded"    # Landroid/os/Message;

    .line 185
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->loadEFTransparent(ILjava/lang/String;Landroid/os/Message;)V

    .line 186
    return-void
.end method

.method public readEFLinearFixed(IIILandroid/os/Message;)V
    .registers 6
    .param p1, "fileid"    # I
    .param p2, "recordNum"    # I
    .param p3, "recordSize"    # I
    .param p4, "onLoaded"    # Landroid/os/Message;

    .line 194
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->readEFLinearFixed(IIILandroid/os/Message;)V

    .line 195
    return-void
.end method

.method public selectEFFile(ILandroid/os/Message;)V
    .registers 4
    .param p1, "fileid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .line 198
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->selectEFFile(ILandroid/os/Message;)V

    .line 199
    return-void
.end method

.method public updateEFTransparent(ILjava/lang/String;[BLandroid/os/Message;)V
    .registers 6
    .param p1, "fileid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "onComplete"    # Landroid/os/Message;

    .line 189
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->updateEFTransparent(ILjava/lang/String;[BLandroid/os/Message;)V

    .line 190
    return-void
.end method

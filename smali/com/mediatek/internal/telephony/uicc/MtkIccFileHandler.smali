.class public final Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "MtkIccFileHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadTransparentContext;,
        Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;
    }
.end annotation


# static fields
.field protected static final EVENT_GET_BINARY_SIZE_DONE_EX:I = 0x65

.field protected static final EVENT_GET_RECORD_SIZE_DONE_EX:I = 0x66

.field protected static final EVENT_READ_RECORD_DONE_EX:I = 0x67

.field protected static final EVENT_SELECT_EF_FILE:I = 0x64

.field static final LOG_TAG:Ljava/lang/String; = "MtkIccFileHandler"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 5
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 78
    const-string v0, "SelectFileHandlerEx constructor"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->logd(Ljava/lang/String;)V

    .line 79
    return-void
.end method


# virtual methods
.method protected getEFPath(I)Ljava/lang/String;
    .registers 5
    .param p1, "efid"    # I

    .line 396
    const/16 v0, 0x6fd5

    if-eq p1, v0, :cond_1f

    const/16 v0, 0x6fd7

    if-eq p1, v0, :cond_1f

    const/16 v0, 0x6fd6

    if-eq p1, v0, :cond_1f

    const/16 v0, 0x6fda

    if-ne p1, v0, :cond_11

    goto :goto_1f

    .line 403
    :cond_11
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_1e

    .line 405
    const-string v1, "MtkIccFileHandler"

    const-string v2, "Error: EF Path being returned in null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_1e
    return-object v0

    .line 400
    .end local v0    # "path":Ljava/lang/String;
    :cond_1f
    :goto_1f
    const-string v0, "3F007FFF"

    return-object v0
.end method

.method protected getSmsEFPath(I)Ljava/lang/String;
    .registers 4
    .param p1, "mode"    # I

    .line 319
    const-string v0, ""

    .line 321
    .local v0, "efpath":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_8

    .line 322
    const-string v0, "3F007F10"

    goto :goto_d

    .line 323
    :cond_8
    const/4 v1, 0x2

    if-ne p1, v1, :cond_d

    .line 324
    const-string v0, "3F007F25"

    .line 326
    :cond_d
    :goto_d
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 31
    .param p1, "msg"    # Landroid/os/Message;

    .line 132
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 136
    .local v3, "response":Landroid/os/Message;
    const/4 v4, 0x0

    .line 139
    .local v4, "path":Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_7
    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v6, -0x1

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/16 v10, 0xd

    const/4 v11, 0x6

    const/4 v12, 0x4

    const/16 v13, 0x67

    packed-switch v0, :pswitch_data_248

    .line 287
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_216

    .line 221
    :pswitch_1b
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 222
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;

    .line 223
    .local v7, "lc":Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 224
    .local v8, "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    iget-object v10, v7, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    move-object v3, v10

    .line 225
    iget-object v10, v7, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;->mPath:Ljava/lang/String;

    move-object v4, v10

    .line 227
    iget-object v10, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    invoke-virtual {v1, v3, v10}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v10

    if-eqz v10, :cond_39

    .line 228
    goto/16 :goto_216

    .line 231
    :cond_39
    iget-boolean v10, v7, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;->mLoadAll:Z

    if-nez v10, :cond_44

    .line 232
    iget-object v6, v8, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-virtual {v1, v3, v6, v5}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_216

    .line 234
    :cond_44
    iget-object v10, v7, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;->results:Ljava/util/ArrayList;

    iget-object v11, v8, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    iget v10, v7, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;->mRecordNum:I

    add-int/2addr v10, v9

    iput v10, v7, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;->mRecordNum:I

    .line 237
    iget v9, v7, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;->mRecordNum:I

    iget v10, v7, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;->mCountRecords:I

    if-le v9, v10, :cond_5d

    .line 238
    iget-object v6, v7, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;->results:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v6, v5}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_216

    .line 241
    :cond_5d
    iget v9, v7, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;->mMode:I

    if-eq v9, v6, :cond_8a

    .line 242
    iget-object v14, v1, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v15, 0xb2

    iget v6, v7, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;->mEfid:I

    iget v9, v7, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;->mMode:I

    .line 243
    invoke-virtual {v1, v9}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->getSmsEFPath(I)Ljava/lang/String;

    move-result-object v17

    iget v9, v7, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;->mRecordNum:I

    const/16 v19, 0x4

    iget v10, v7, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;->mRecordSize:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    iget-object v11, v1, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->mAid:Ljava/lang/String;

    .line 247
    invoke-virtual {v1, v13, v7}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    .line 242
    move/from16 v16, v6

    move/from16 v18, v9

    move/from16 v20, v10

    move-object/from16 v23, v11

    invoke-interface/range {v14 .. v24}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_216

    .line 250
    :cond_8a
    if-nez v4, :cond_93

    .line 251
    iget v6, v7, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;->mEfid:I

    invoke-virtual {v1, v6}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 254
    :cond_93
    iget-object v14, v1, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v15, 0xb2

    iget v6, v7, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;->mEfid:I

    iget v9, v7, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;->mRecordNum:I

    const/16 v19, 0x4

    iget v10, v7, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;->mRecordSize:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    iget-object v11, v1, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->mAid:Ljava/lang/String;

    .line 258
    invoke-virtual {v1, v13, v7}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    .line 254
    move/from16 v16, v6

    move-object/from16 v17, v4

    move/from16 v18, v9

    move/from16 v20, v10

    move-object/from16 v23, v11

    invoke-interface/range {v14 .. v24}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 264
    goto/16 :goto_216

    .line 167
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v7    # "lc":Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;
    .end local v8    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    :pswitch_b8
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 168
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v14, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v14, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;

    .line 169
    .local v14, "lc":Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;
    iget-object v15, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v15, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 170
    .local v15, "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    iget-object v5, v14, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    move-object v3, v5

    .line 172
    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v1, v3, v5}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v5

    if-eqz v5, :cond_d3

    .line 173
    goto/16 :goto_216

    .line 176
    :cond_d3
    iget-object v5, v15, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    .line 177
    .local v5, "data":[B
    iget-object v13, v14, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;->mPath:Ljava/lang/String;

    move-object v4, v13

    .line 179
    aget-byte v11, v5, v11

    if-ne v12, v11, :cond_16f

    .line 183
    aget-byte v10, v5, v10

    if-ne v9, v10, :cond_169

    .line 187
    const/16 v9, 0xe

    aget-byte v9, v5, v9

    and-int/lit16 v9, v9, 0xff

    iput v9, v14, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;->mRecordSize:I

    .line 189
    aget-byte v8, v5, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v8, v7

    .line 192
    .local v8, "size":I
    iget v7, v14, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;->mRecordSize:I

    div-int v7, v8, v7

    iput v7, v14, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;->mCountRecords:I

    .line 194
    iget-boolean v7, v14, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;->mLoadAll:Z

    if-eqz v7, :cond_106

    .line 195
    new-instance v7, Ljava/util/ArrayList;

    iget v9, v14, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;->mCountRecords:I

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, v14, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;->results:Ljava/util/ArrayList;

    .line 199
    :cond_106
    iget v7, v14, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;->mMode:I

    if-eq v7, v6, :cond_137

    .line 200
    iget-object v6, v1, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v19, 0xb2

    iget v7, v14, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;->mEfid:I

    iget v9, v14, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;->mMode:I

    invoke-virtual {v1, v9}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->getSmsEFPath(I)Ljava/lang/String;

    move-result-object v21

    iget v9, v14, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;->mRecordNum:I

    const/16 v23, 0x4

    iget v10, v14, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;->mRecordSize:I

    const/16 v25, 0x0

    const/16 v26, 0x0

    iget-object v11, v1, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->mAid:Ljava/lang/String;

    .line 204
    const/16 v12, 0x67

    invoke-virtual {v1, v12, v14}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v28

    .line 200
    move-object/from16 v18, v6

    move/from16 v20, v7

    move/from16 v22, v9

    move/from16 v24, v10

    move-object/from16 v27, v11

    invoke-interface/range {v18 .. v28}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_216

    .line 207
    :cond_137
    if-nez v4, :cond_140

    .line 208
    iget v6, v14, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;->mEfid:I

    invoke-virtual {v1, v6}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 210
    :cond_140
    iget-object v6, v1, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v19, 0xb2

    iget v7, v14, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;->mEfid:I

    iget v9, v14, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;->mRecordNum:I

    const/16 v23, 0x4

    iget v10, v14, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;->mRecordSize:I

    const/16 v25, 0x0

    const/16 v26, 0x0

    iget-object v11, v1, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->mAid:Ljava/lang/String;

    .line 214
    const/16 v12, 0x67

    invoke-virtual {v1, v12, v14}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v28

    .line 210
    move-object/from16 v18, v6

    move/from16 v20, v7

    move-object/from16 v21, v4

    move/from16 v22, v9

    move/from16 v24, v10

    move-object/from16 v27, v11

    invoke-interface/range {v18 .. v28}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 218
    goto/16 :goto_216

    .line 184
    .end local v8    # "size":I
    :cond_169
    new-instance v6, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v6}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    .end local v3    # "response":Landroid/os/Message;
    .end local v4    # "path":Ljava/lang/String;
    .end local p0    # "this":Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;
    .end local p1    # "msg":Landroid/os/Message;
    throw v6

    .line 180
    .restart local v3    # "response":Landroid/os/Message;
    .restart local v4    # "path":Ljava/lang/String;
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :cond_16f
    new-instance v6, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v6}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    .end local v3    # "response":Landroid/os/Message;
    .end local v4    # "path":Ljava/lang/String;
    .end local p0    # "this":Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;
    .end local p1    # "msg":Landroid/os/Message;
    throw v6

    .line 141
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "data":[B
    .end local v14    # "lc":Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;
    .end local v15    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v3    # "response":Landroid/os/Message;
    .restart local v4    # "path":Ljava/lang/String;
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :pswitch_175
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 142
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadTransparentContext;

    .line 143
    .local v5, "tc":Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadTransparentContext;
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 144
    .local v6, "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    iget-object v9, v5, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadTransparentContext;->mOnLoaded:Landroid/os/Message;

    move-object v3, v9

    .line 145
    iget-object v9, v5, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadTransparentContext;->mPath:Ljava/lang/String;

    move-object v4, v9

    .line 146
    iget-object v9, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    invoke-virtual {v1, v3, v9}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v9

    if-eqz v9, :cond_193

    .line 147
    goto/16 :goto_216

    .line 150
    :cond_193
    iget-object v9, v6, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    .line 151
    .local v9, "data":[B
    aget-byte v11, v9, v11

    if-ne v12, v11, :cond_1dd

    .line 154
    aget-byte v10, v9, v10

    if-nez v10, :cond_1d7

    .line 157
    aget-byte v8, v9, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    aget-byte v7, v9, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v8, v7

    .line 160
    .restart local v8    # "size":I
    if-nez v4, :cond_1b1

    .line 161
    iget v7, v5, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadTransparentContext;->mEfid:I

    invoke-virtual {v1, v7}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 163
    :cond_1b1
    iget-object v7, v1, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v18, 0xb0

    iget v10, v5, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadTransparentContext;->mEfid:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    iget-object v11, v1, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->mAid:Ljava/lang/String;

    const/4 v12, 0x5

    iget v13, v5, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadTransparentContext;->mEfid:I

    const/4 v14, 0x0

    .line 164
    invoke-virtual {v1, v12, v13, v14, v3}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v27

    .line 163
    move-object/from16 v17, v7

    move/from16 v19, v10

    move-object/from16 v20, v4

    move/from16 v23, v8

    move-object/from16 v26, v11

    invoke-interface/range {v17 .. v27}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 165
    goto :goto_216

    .line 155
    .end local v8    # "size":I
    :cond_1d7
    new-instance v7, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v7}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    .end local v3    # "response":Landroid/os/Message;
    .end local v4    # "path":Ljava/lang/String;
    .end local p0    # "this":Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;
    .end local p1    # "msg":Landroid/os/Message;
    throw v7

    .line 152
    .restart local v3    # "response":Landroid/os/Message;
    .restart local v4    # "path":Ljava/lang/String;
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :cond_1dd
    new-instance v7, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v7}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    .end local v3    # "response":Landroid/os/Message;
    .end local v4    # "path":Ljava/lang/String;
    .end local p0    # "this":Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;
    .end local p1    # "msg":Landroid/os/Message;
    throw v7

    .line 267
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "tc":Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadTransparentContext;
    .end local v6    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .end local v9    # "data":[B
    .restart local v3    # "response":Landroid/os/Message;
    .restart local v4    # "path":Ljava/lang/String;
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :pswitch_1e3
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 268
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Message;

    move-object v3, v5

    .line 269
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 271
    .local v5, "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    iget-object v6, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v1, v3, v6}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v6

    if-eqz v6, :cond_200

    .line 272
    const-string v6, "EVENT_SELECT_EF_FILE exception"

    invoke-virtual {v1, v6}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->loge(Ljava/lang/String;)V

    .line 273
    goto :goto_216

    .line 276
    :cond_200
    iget-object v6, v5, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    .line 278
    .local v6, "data":[B
    aget-byte v7, v6, v11

    if-ne v12, v7, :cond_210

    .line 282
    new-instance v7, Lcom/mediatek/internal/telephony/uicc/EFResponseData;

    invoke-direct {v7, v6}, Lcom/mediatek/internal/telephony/uicc/EFResponseData;-><init>([B)V

    .line 283
    .local v7, "efData":Lcom/mediatek/internal/telephony/uicc/EFResponseData;
    const/4 v8, 0x0

    invoke-virtual {v1, v3, v7, v8}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 284
    goto :goto_216

    .line 279
    .end local v7    # "efData":Lcom/mediatek/internal/telephony/uicc/EFResponseData;
    :cond_210
    new-instance v7, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v7}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    .end local v3    # "response":Landroid/os/Message;
    .end local v4    # "path":Ljava/lang/String;
    .end local p0    # "this":Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;
    .end local p1    # "msg":Landroid/os/Message;
    throw v7
    :try_end_216
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_216} :catch_217

    .line 295
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .end local v6    # "data":[B
    .restart local v3    # "response":Landroid/os/Message;
    .restart local v4    # "path":Ljava/lang/String;
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :goto_216
    goto :goto_247

    .line 288
    :catch_217
    move-exception v0

    .line 289
    .local v0, "exc":Ljava/lang/Exception;
    if-eqz v3, :cond_233

    .line 290
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "caught exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->loge(Ljava/lang/String;)V

    .line 291
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v0}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_247

    .line 293
    :cond_233
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uncaught exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->loge(Ljava/lang/String;)V

    .line 296
    .end local v0    # "exc":Ljava/lang/Exception;
    :goto_247
    return-void

    :pswitch_data_248
    .packed-switch 0x64
        :pswitch_1e3
        :pswitch_175
        :pswitch_b8
        :pswitch_1b
    .end packed-switch
.end method

.method public loadEFLinearFixedAllByMode(IILandroid/os/Message;)V
    .registers 21
    .param p1, "fileid"    # I
    .param p2, "mode"    # I
    .param p3, "onLoaded"    # Landroid/os/Message;

    .line 309
    move-object/from16 v0, p0

    move/from16 v1, p2

    new-instance v2, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;

    move/from16 v14, p1

    move-object/from16 v15, p3

    invoke-direct {v2, v14, v15}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    .line 310
    .local v2, "lc":Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;
    iput v1, v2, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;->mMode:I

    .line 311
    const/16 v3, 0x66

    invoke-virtual {v0, v3, v2}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    .line 313
    .local v16, "response":Landroid/os/Message;
    iget-object v3, v0, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->getSmsEFPath(I)Ljava/lang/String;

    move-result-object v6

    iget-object v12, v0, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->mAid:Ljava/lang/String;

    const/16 v4, 0xc0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xf

    const/4 v10, 0x0

    const/4 v11, 0x0

    move/from16 v5, p1

    move-object/from16 v13, v16

    invoke-interface/range {v3 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 315
    return-void
.end method

.method public loadEFLinearFixedAllByPath(ILandroid/os/Message;Z)V
    .registers 19
    .param p1, "fileid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;
    .param p3, "is7FFF"    # Z

    .line 301
    move-object v0, p0

    new-instance v1, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;

    move/from16 v13, p1

    move-object/from16 v14, p2

    invoke-direct {v1, v13, v14}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    const/16 v2, 0x66

    invoke-virtual {p0, v2, v1}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 304
    .local v1, "response":Landroid/os/Message;
    iget-object v2, v0, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v5

    iget-object v11, v0, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->mAid:Ljava/lang/String;

    const/16 v3, 0xc0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xf

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v4, p1

    move-object v12, v1

    invoke-interface/range {v2 .. v12}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 306
    return-void
.end method

.method public loadEFTransparent(ILjava/lang/String;Landroid/os/Message;)V
    .registers 20
    .param p1, "fileid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "onLoaded"    # Landroid/os/Message;

    .line 341
    move-object/from16 v0, p0

    if-nez p2, :cond_9

    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_9
    move-object/from16 v1, p2

    .line 342
    .local v1, "efPath":Ljava/lang/String;
    :goto_b
    const/16 v2, 0x65

    new-instance v3, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadTransparentContext;

    move/from16 v13, p1

    move-object/from16 v14, p3

    invoke-direct {v3, v13, v1, v14}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadTransparentContext;-><init>(ILjava/lang/String;Landroid/os/Message;)V

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 345
    .local v15, "response":Landroid/os/Message;
    iget-object v2, v0, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xc0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xf

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->mAid:Ljava/lang/String;

    move/from16 v4, p1

    move-object v5, v1

    move-object v12, v15

    invoke-interface/range {v2 .. v12}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 347
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 412
    const-string v0, "MtkIccFileHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 417
    const-string v0, "MtkIccFileHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return-void
.end method

.method public readEFLinearFixed(IIILandroid/os/Message;)V
    .registers 16
    .param p1, "fileid"    # I
    .param p2, "recordNum"    # I
    .param p3, "recordSize"    # I
    .param p4, "onLoaded"    # Landroid/os/Message;

    .line 374
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    iget-object v9, p0, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->mAid:Ljava/lang/String;

    const/16 v1, 0xb2

    const/4 v5, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v2, p1

    move v4, p2

    move v6, p3

    move-object v10, p4

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 376
    return-void
.end method

.method public selectEFFile(ILandroid/os/Message;)V
    .registers 16
    .param p1, "fileid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .line 386
    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 388
    .local v0, "response":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v5

    iget-object v11, p0, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->mAid:Ljava/lang/String;

    const/16 v3, 0xc0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xf

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v4, p1

    move-object v12, v0

    invoke-interface/range {v2 .. v12}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 390
    return-void
.end method

.method public updateEFTransparent(ILjava/lang/String;[BLandroid/os/Message;)V
    .registers 18
    .param p1, "fileid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "onComplete"    # Landroid/os/Message;

    .line 357
    move-object v0, p0

    if-nez p2, :cond_9

    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_a

    :cond_9
    move-object v5, p2

    .line 358
    .local v5, "efPath":Ljava/lang/String;
    :goto_a
    iget-object v2, v0, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xd6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p3

    array-length v8, v1

    .line 359
    invoke-static/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->mAid:Ljava/lang/String;

    .line 358
    move v4, p1

    move-object/from16 v12, p4

    invoke-interface/range {v2 .. v12}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 360
    return-void
.end method

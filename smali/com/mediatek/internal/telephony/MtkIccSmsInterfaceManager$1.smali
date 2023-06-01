.class Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;
.super Landroid/os/Handler;
.source "MtkIccSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    .line 141
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private notifyPending(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;Ljava/lang/Object;)V
    .registers 5
    .param p1, "request"    # Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;
    .param p2, "result"    # Ljava/lang/Object;

    .line 363
    if-eqz p1, :cond_13

    .line 364
    monitor-enter p1

    .line 365
    :try_start_3
    iput-object p2, p1, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;->mResult:Ljava/lang/Object;

    .line 366
    iget-object v0, p1, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;->mStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 367
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 368
    monitor-exit p1

    goto :goto_13

    :catchall_10
    move-exception v0

    monitor-exit p1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0

    .line 370
    :cond_13
    :goto_13
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 144
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 145
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;

    .line 147
    .local v1, "request":Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;
    iget v2, p1, Landroid/os/Message;->what:I

    const-string v3, "Cannot Get SMSC address"

    const-string v4, "Cannot Get CB configs"

    const-string v5, "-1,"

    const-string v6, ","

    const-string v7, ""

    const/4 v8, 0x1

    const/4 v9, 0x0

    packed-switch v2, :pswitch_data_322

    goto/16 :goto_320

    .line 151
    :pswitch_1b
    new-instance v2, Lmediatek/telephony/MtkSimSmsInsertStatus;

    invoke-direct {v2, v8, v7}, Lmediatek/telephony/MtkSimSmsInsertStatus;-><init>(ILjava/lang/String;)V

    .line 153
    .local v2, "smsRet":Lmediatek/telephony/MtkSimSmsInsertStatus;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_63

    .line 155
    :try_start_24
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    aget v3, v3, v9

    .line 156
    .local v3, "index":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lmediatek/telephony/MtkSimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lmediatek/telephony/MtkSimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    .line 157
    iput v9, v2, Lmediatek/telephony/MtkSimSmsInsertStatus;->insertStatus:I

    .line 158
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[insertRaw save one pdu in index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/lang/ClassCastException; {:try_start_24 .. :try_end_58} :catch_5e
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_58} :catch_59

    .end local v3    # "index":I
    goto :goto_62

    .line 161
    :catch_59
    move-exception v3

    .line 162
    .local v3, "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .end local v3    # "ex":Ljava/lang/Exception;
    goto :goto_62

    .line 159
    :catch_5e
    move-exception v3

    .line 160
    .local v3, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v3}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 163
    .end local v3    # "e":Ljava/lang/ClassCastException;
    :goto_62
    goto :goto_7d

    .line 165
    :cond_63
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    const-string v4, "[insertRaw fail to insert raw into ICC"

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lmediatek/telephony/MtkSimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lmediatek/telephony/MtkSimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    .line 169
    :goto_7d
    invoke-direct {p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->notifyPending(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;Ljava/lang/Object;)V

    .line 172
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_320

    .line 173
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    .line 174
    .local v3, "e":Lcom/android/internal/telephony/CommandException;
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot update SMS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->SIM_FULL:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_b3

    .line 177
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    check-cast v4, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->handleIccFull()V

    .line 179
    .end local v3    # "e":Lcom/android/internal/telephony/CommandException;
    :cond_b3
    goto/16 :goto_320

    .line 183
    .end local v2    # "smsRet":Lmediatek/telephony/MtkSimSmsInsertStatus;
    :pswitch_b5
    const/4 v2, 0x0

    .line 184
    .local v2, "smsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_ce

    .line 185
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 187
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    # invokes: Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->markMessagesAsRead(Ljava/util/ArrayList;)V
    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$000(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;Ljava/util/ArrayList;)V

    goto :goto_de

    .line 189
    :cond_ce
    const/4 v3, 0x3

    const-string v4, "SMS"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_de

    .line 190
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    const-string v4, "Cannot load Sms records"

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 193
    :cond_de
    :goto_de
    invoke-direct {p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->notifyPending(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;Ljava/lang/Object;)V

    .line 194
    goto/16 :goto_320

    .line 335
    .end local v2    # "smsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :pswitch_e3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 336
    .local v2, "smscAddressBundle":Landroid/os/Bundle;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v5, "scAddress"

    const-string v6, "errorCode"

    if-nez v4, :cond_fb

    .line 337
    invoke-virtual {v2, v6, v9}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 339
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_130

    .line 342
    :cond_fb
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    invoke-virtual {v4, v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 343
    const/4 v3, 0x1

    .line 344
    .local v3, "error":B
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/internal/telephony/CommandException;

    if-eqz v4, :cond_114

    .line 345
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    .line 346
    .local v4, "ce":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v8, v9, :cond_114

    .line 348
    const/4 v3, 0x2

    .line 351
    .end local v4    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_114
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Fail to get sc address, error = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 354
    invoke-virtual {v2, v5, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 357
    .end local v3    # "error":B
    :goto_130
    invoke-direct {p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->notifyPending(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;Ljava/lang/Object;)V

    goto/16 :goto_320

    .line 326
    .end local v2    # "smscAddressBundle":Landroid/os/Bundle;
    :pswitch_135
    const-string v2, ""

    .line 327
    .local v2, "smscAddress":Ljava/lang/String;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_141

    .line 328
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    goto :goto_146

    .line 330
    :cond_141
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    invoke-virtual {v4, v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 332
    :goto_146
    invoke-direct {p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->notifyPending(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;Ljava/lang/Object;)V

    .line 333
    goto/16 :goto_320

    .line 314
    .end local v2    # "smscAddress":Ljava/lang/String;
    :pswitch_14b
    const-string v2, ""

    .line 315
    .local v2, "smsCbLanguageConfig":Ljava/lang/String;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_171

    .line 316
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    .line 318
    if-eqz v2, :cond_159

    move-object v7, v2

    :cond_159
    move-object v2, v7

    .line 319
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Language configuration "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_176

    .line 321
    :cond_171
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 323
    :goto_176
    invoke-direct {p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->notifyPending(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;Ljava/lang/Object;)V

    .line 324
    goto/16 :goto_320

    .line 284
    .end local v2    # "smsCbLanguageConfig":Ljava/lang/String;
    :pswitch_17b
    const-string v2, ""

    .line 285
    .local v2, "smsCbChannelConfig":Ljava/lang/String;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_202

    .line 286
    const/4 v3, 0x0

    .line 288
    .local v3, "cbConfig":Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    .line 291
    .local v4, "mList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_187
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_1eb

    .line 293
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    check-cast v3, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 294
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v7

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v8

    if-ne v7, v8, :cond_1b2

    .line 295
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1d1

    .line 298
    :cond_1b2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 303
    :goto_1d1
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eq v7, v8, :cond_1e8

    .line 304
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 291
    :cond_1e8
    add-int/lit8 v5, v5, 0x1

    goto :goto_187

    .line 307
    .end local v5    # "i":I
    :cond_1eb
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Channel configuration "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 308
    .end local v3    # "cbConfig":Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .end local v4    # "mList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    goto :goto_207

    .line 309
    :cond_202
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 311
    :goto_207
    invoke-direct {p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->notifyPending(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;Ljava/lang/Object;)V

    .line 312
    goto/16 :goto_320

    .line 276
    .end local v2    # "smsCbChannelConfig":Ljava/lang/String;
    :pswitch_20c
    const/4 v2, 0x0

    .line 277
    .local v2, "result":Z
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_21c

    .line 278
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    .line 279
    .local v3, "activation":[I
    aget v4, v3, v9

    if-ne v4, v8, :cond_21a

    goto :goto_21b

    :cond_21a
    move v8, v9

    :goto_21b
    move v2, v8

    .line 281
    .end local v3    # "activation":[I
    :cond_21c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->notifyPending(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;Ljava/lang/Object;)V

    .line 282
    goto/16 :goto_320

    .line 257
    .end local v2    # "result":Z
    :pswitch_225
    const/4 v2, 0x0

    .line 258
    .local v2, "smsRawData":Lcom/android/internal/telephony/SmsRawData;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_24d

    .line 260
    :try_start_22a
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    .line 261
    .local v3, "rawData":[B
    aget-byte v4, v3, v9

    if-nez v4, :cond_23a

    .line 262
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    const-string v5, "sms raw data status is FREE"

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_240

    .line 264
    :cond_23a
    new-instance v4, Lcom/android/internal/telephony/SmsRawData;

    invoke-direct {v4, v3}, Lcom/android/internal/telephony/SmsRawData;-><init>([B)V
    :try_end_23f
    .catch Ljava/lang/ClassCastException; {:try_start_22a .. :try_end_23f} :catch_241

    move-object v2, v4

    .line 269
    .end local v3    # "rawData":[B
    :goto_240
    goto :goto_254

    .line 266
    :catch_241
    move-exception v3

    .line 267
    .local v3, "e":Ljava/lang/ClassCastException;
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    const-string v5, "fail to get sms raw data ClassCastException"

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v3}, Ljava/lang/ClassCastException;->printStackTrace()V

    .end local v3    # "e":Ljava/lang/ClassCastException;
    goto :goto_240

    .line 271
    :cond_24d
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    const-string v4, "fail to get sms raw data rild"

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 273
    :goto_254
    invoke-direct {p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->notifyPending(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;Ljava/lang/Object;)V

    .line 274
    goto/16 :goto_320

    .line 254
    .end local v2    # "smsRawData":Lcom/android/internal/telephony/SmsRawData;
    :pswitch_259
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_25e

    goto :goto_25f

    :cond_25e
    move v8, v9

    :goto_25f
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->notifyPending(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;Ljava/lang/Object;)V

    .line 255
    goto/16 :goto_320

    .line 232
    :pswitch_268
    const/4 v2, 0x0

    .line 233
    .local v2, "smsParams":Lmediatek/telephony/MtkSmsParameters;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_28b

    .line 235
    :try_start_26d
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lmediatek/telephony/MtkSmsParameters;
    :try_end_271
    .catch Ljava/lang/ClassCastException; {:try_start_26d .. :try_end_271} :catch_27f
    .catch Ljava/lang/Exception; {:try_start_26d .. :try_end_271} :catch_273

    move-object v2, v3

    .line 242
    :goto_272
    goto :goto_292

    .line 239
    :catch_273
    move-exception v3

    .line 240
    .local v3, "ex":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    const-string v5, "[EFsmsp fail to get sms params Exception"

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .end local v3    # "ex":Ljava/lang/Exception;
    goto :goto_272

    .line 236
    :catch_27f
    move-exception v3

    .line 237
    .local v3, "e":Ljava/lang/ClassCastException;
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    const-string v5, "[EFsmsp fail to get sms params ClassCastException"

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v3}, Ljava/lang/ClassCastException;->printStackTrace()V

    .end local v3    # "e":Ljava/lang/ClassCastException;
    goto :goto_272

    .line 244
    :cond_28b
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    const-string v4, "[EFsmsp fail to get sms params"

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 247
    :goto_292
    invoke-direct {p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->notifyPending(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;Ljava/lang/Object;)V

    .line 248
    goto/16 :goto_320

    .line 212
    .end local v2    # "smsParams":Lmediatek/telephony/MtkSmsParameters;
    :pswitch_297
    new-instance v2, Lmediatek/telephony/MtkSimSmsInsertStatus;

    invoke-direct {v2, v8, v7}, Lmediatek/telephony/MtkSimSmsInsertStatus;-><init>(ILjava/lang/String;)V

    .line 214
    .local v2, "smsInsertRet":Lmediatek/telephony/MtkSimSmsInsertStatus;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2df

    .line 216
    :try_start_2a0
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    aget v3, v3, v9

    .line 217
    .local v3, "index":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lmediatek/telephony/MtkSimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lmediatek/telephony/MtkSimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    .line 218
    iput v9, v2, Lmediatek/telephony/MtkSimSmsInsertStatus;->insertStatus:I

    .line 219
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertText save one pdu in index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_2d4
    .catch Ljava/lang/ClassCastException; {:try_start_2a0 .. :try_end_2d4} :catch_2da
    .catch Ljava/lang/Exception; {:try_start_2a0 .. :try_end_2d4} :catch_2d5

    .end local v3    # "index":I
    goto :goto_2de

    .line 222
    :catch_2d5
    move-exception v3

    .line 223
    .local v3, "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .end local v3    # "ex":Ljava/lang/Exception;
    goto :goto_2de

    .line 220
    :catch_2da
    move-exception v3

    .line 221
    .local v3, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v3}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 224
    .end local v3    # "e":Ljava/lang/ClassCastException;
    :goto_2de
    goto :goto_2f9

    .line 226
    :cond_2df
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    const-string v4, "insertText fail to insert sms into ICC"

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lmediatek/telephony/MtkSimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lmediatek/telephony/MtkSimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    .line 229
    :goto_2f9
    invoke-direct {p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->notifyPending(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;Ljava/lang/Object;)V

    .line 230
    goto :goto_320

    .line 196
    .end local v2    # "smsInsertRet":Lmediatek/telephony/MtkSimSmsInsertStatus;
    :pswitch_2fd
    const/4 v2, 0x0

    .line 197
    .local v2, "simMemStatus":Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_315

    .line 198
    new-instance v3, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;

    invoke-direct {v3}, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;-><init>()V

    move-object v2, v3

    .line 200
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;

    .line 202
    .local v3, "tmpStatus":Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    iget v4, v3, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;->mUsed:I

    iput v4, v2, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;->mUsed:I

    .line 203
    iget v4, v3, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;->mTotal:I

    iput v4, v2, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;->mTotal:I

    .line 204
    .end local v3    # "tmpStatus":Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    goto :goto_31c

    .line 206
    :cond_315
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    const-string v4, "Cannot Get Sms SIM Memory Status from SIM"

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 209
    :goto_31c
    invoke-direct {p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;->notifyPending(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;Ljava/lang/Object;)V

    .line 210
    nop

    .line 360
    .end local v2    # "simMemStatus":Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    :cond_320
    :goto_320
    return-void

    nop

    :pswitch_data_322
    .packed-switch 0x65
        :pswitch_2fd
        :pswitch_297
        :pswitch_268
        :pswitch_259
        :pswitch_225
        :pswitch_20c
        :pswitch_259
        :pswitch_17b
        :pswitch_259
        :pswitch_14b
        :pswitch_259
        :pswitch_135
        :pswitch_e3
        :pswitch_259
        :pswitch_b5
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method

.class Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication$1;
.super Landroid/os/Handler;
.source "MtkUiccCardApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    .line 284
    iput-object p1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 289
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    # getter for: Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mDestroyed:Z
    invoke-static {v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->access$000(Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 291
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "["

    const-string v2, "Received message "

    const/4 v3, 0x1

    if-eq v3, v0, :cond_3f

    const/16 v0, 0x65

    iget v4, p1, Landroid/os/Message;->what:I

    if-eq v0, v4, :cond_3f

    const/4 v0, 0x7

    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_1d

    goto :goto_3f

    .line 306
    :cond_1d
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] while being destroyed. Ignoring."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mtkLoge(Ljava/lang/String;)V

    goto :goto_79

    .line 296
    :cond_3f
    :goto_3f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 297
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    .line 298
    .local v4, "response":Landroid/os/Message;
    invoke-static {v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v5

    invoke-static {v3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v3

    iput-object v3, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 300
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] while being destroyed. return exception."

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mtkLoge(Ljava/lang/String;)V

    .line 302
    const/4 v1, -0x1

    iput v1, v4, Landroid/os/Message;->arg1:I

    .line 303
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 304
    .end local v4    # "response":Landroid/os/Message;
    nop

    .line 311
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :goto_79
    return-void

    .line 314
    :cond_7a
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "MtkUiccCardApp"

    sparse-switch v0, :sswitch_data_19a

    .line 391
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mtkLoge(Ljava/lang/String;)V

    goto/16 :goto_198

    .line 346
    :sswitch_9b
    const/4 v0, -0x1

    .line 347
    .local v0, "attemptsRemainingPuk2":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 348
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_ae

    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_ae

    .line 349
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    # invokes: Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;)I
    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->access$300(Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;Landroid/os/AsyncResult;)I

    move-result v0

    .line 351
    :cond_ae
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    .line 352
    .local v2, "responsePuk2":Landroid/os/Message;
    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 353
    iput v0, v2, Landroid/os/Message;->arg1:I

    .line 354
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 355
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->queryFdn()V

    .line 356
    goto/16 :goto_198

    .line 333
    .end local v0    # "attemptsRemainingPuk2":I
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "responsePuk2":Landroid/os/Message;
    :sswitch_c6
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    const-string v1, "EVENT_PUK1_CHANGE_PIN1_DONE"

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mtkLog(Ljava/lang/String;)V

    .line 334
    const/4 v0, -0x1

    .line 335
    .local v0, "attemptsRemainingPuk":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 336
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_e0

    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_e0

    .line 337
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    # invokes: Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;)I
    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->access$200(Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;Landroid/os/AsyncResult;)I

    move-result v0

    .line 339
    :cond_e0
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    .line 340
    .local v2, "responsePuk":Landroid/os/Message;
    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 341
    iput v0, v2, Landroid/os/Message;->arg1:I

    .line 342
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 343
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->queryPin1State()V

    .line 344
    goto/16 :goto_198

    .line 372
    .end local v0    # "attemptsRemainingPuk":I
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "responsePuk":Landroid/os/Message;
    :sswitch_f8
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    const-string v2, "handleMessage (EVENT_CHANGE_NETWORK_LOCK)"

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mtkLog(Ljava/lang/String;)V

    .line 373
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 374
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_11d

    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error change network lock with exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_11d
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 380
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 381
    goto :goto_198

    .line 361
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_131
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    const-string v2, "handleMessage (EVENT_QUERY_NETWORK_LOCK)"

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mtkLog(Ljava/lang/String;)V

    .line 362
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 364
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_156

    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error query network lock with exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_156
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 369
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 370
    goto :goto_198

    .line 386
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_169
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 387
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    # invokes: Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->onChangeFacilityLock(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->access$400(Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;Landroid/os/AsyncResult;)V

    .line 388
    goto :goto_198

    .line 318
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_173
    const/4 v0, -0x1

    .line 319
    .local v0, "attemptsRemaining":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 320
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_186

    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_186

    .line 321
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    # invokes: Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;)I
    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->access$100(Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;Landroid/os/AsyncResult;)I

    move-result v0

    .line 323
    :cond_186
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    .line 324
    .local v2, "response":Landroid/os/Message;
    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 325
    iput v0, v2, Landroid/os/Message;->arg1:I

    .line 326
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 327
    nop

    .line 393
    .end local v0    # "attemptsRemaining":I
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "response":Landroid/os/Message;
    :goto_198
    return-void

    nop

    :sswitch_data_19a
    .sparse-switch
        0x1 -> :sswitch_173
        0x7 -> :sswitch_169
        0x65 -> :sswitch_131
        0x66 -> :sswitch_f8
        0x68 -> :sswitch_c6
        0x69 -> :sswitch_9b
    .end sparse-switch
.end method

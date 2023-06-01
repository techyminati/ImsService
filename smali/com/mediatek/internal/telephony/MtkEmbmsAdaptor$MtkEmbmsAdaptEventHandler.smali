.class public Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;
.super Landroid/os/Handler;
.source "MtkEmbmsAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MtkEmbmsAdaptEventHandler"
.end annotation


# instance fields
.field private mAdaptorIoThread:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptIoThread;

.field private mCis:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;)V
    .registers 3
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;

    .line 304
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;->this$0:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;->mAdaptorIoThread:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptIoThread;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 304
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;->setRil(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptIoThread;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;
    .param p1, "x1"    # Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptIoThread;

    .line 304
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;->setDataStream(Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptIoThread;)V

    return-void
.end method

.method private setDataStream(Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptIoThread;)V
    .registers 4
    .param p1, "adpatorIo"    # Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptIoThread;

    .line 374
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;->mAdaptorIoThread:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptIoThread;

    .line 375
    const-string v0, "MtkEmbmsAdaptor"

    const-string v1, "MtkEmbmsAdaptEventHandler setDataStream done."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return-void
.end method

.method private setRil(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 379
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;->mContext:Landroid/content/Context;

    .line 380
    iput-object p2, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    .line 381
    const-string v0, "MtkEmbmsAdaptor"

    const-string v1, "MtkEmbmsAdaptEventHandler setRil done."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;->this$0:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;

    # invokes: Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;->messageToString(Landroid/os/Message;)Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;->access$400(Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkEmbmsAdaptor"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12e

    goto/16 :goto_12c

    .line 343
    :pswitch_2b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 344
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 345
    .local v2, "int_data":I
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 346
    .local v3, "data":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_ID_EVENT_IND data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;->sendCommand(Ljava/lang/String;)V

    .line 348
    goto/16 :goto_12c

    .line 351
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "int_data":I
    .end local v3    # "data":Ljava/lang/String;
    :pswitch_54
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 352
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 353
    .restart local v2    # "int_data":I
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 354
    .restart local v3    # "data":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_ID_EVENT_RESPONSE data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/internal/telephony/CommandException;

    if-eqz v4, :cond_ab

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    .line 356
    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_ab

    .line 358
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_ID_EVENT_RESPONSE exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v5, Lcom/android/internal/telephony/CommandException;

    .line 359
    invoke-virtual {v5}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 358
    invoke-static {v1, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;->sendFailureCmd()V

    goto/16 :goto_12c

    .line 361
    :cond_ab
    if-eqz v3, :cond_b2

    .line 362
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;->sendCommand(Ljava/lang/String;)V

    goto/16 :goto_12c

    .line 364
    :cond_b2
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;->sendFailureCmd()V

    .line 366
    goto :goto_12c

    .line 319
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "int_data":I
    .end local v3    # "data":Ljava/lang/String;
    :pswitch_b6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 320
    .local v0, "data":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_ID_EVENT_REQUEST data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;->this$0:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;

    # getter for: Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;->access$500(Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;)Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v2

    .line 324
    .local v2, "subId":I
    const/4 v3, -0x1

    .line 325
    .local v3, "slotId":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_f1

    .line 326
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDefaultDataSubId fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fb

    .line 328
    :cond_f1
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;->this$0:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;

    # getter for: Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;->access$500(Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;)Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSlotIndex(I)I

    move-result v3

    .line 331
    :goto_fb
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v4

    if-nez v4, :cond_119

    .line 332
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inValidSlotIndex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;->sendFailureCmd()V

    .line 334
    return-void

    .line 337
    :cond_119
    const/4 v1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 338
    .local v1, "onCompleted":Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, v3

    check-cast v4, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 339
    .local v4, "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    invoke-virtual {v4, v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->sendEmbmsAtCommand(Ljava/lang/String;Landroid/os/Message;)V

    .line 340
    nop

    .line 371
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "onCompleted":Landroid/os/Message;
    .end local v2    # "subId":I
    .end local v3    # "slotId":I
    .end local v4    # "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    :goto_12c
    return-void

    nop

    :pswitch_data_12e
    .packed-switch 0x0
        :pswitch_b6
        :pswitch_54
        :pswitch_2b
    .end packed-switch
.end method

.method public sendCommand(Ljava/lang/String;)V
    .registers 4
    .param p1, "rawCmd"    # Ljava/lang/String;

    .line 385
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;->mAdaptorIoThread:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptIoThread;

    if-eqz v0, :cond_8

    .line 386
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptIoThread;->sendCommand(Ljava/lang/String;)V

    goto :goto_f

    .line 388
    :cond_8
    const-string v0, "MtkEmbmsAdaptor"

    const-string v1, "sendCommand fail!! mAdaptorIoThread is null!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :goto_f
    return-void
.end method

.method public sendFailureCmd()V
    .registers 3

    .line 393
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ERROR\n"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, "cmdStr":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;->sendCommand(Ljava/lang/String;)V

    .line 395
    return-void
.end method

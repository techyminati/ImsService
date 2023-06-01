.class Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;
.super Landroid/os/Handler;
.source "MtkSuppServHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkSuppServHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuppServTaskDriven"
.end annotation


# static fields
.field private static final EVENT_DONE:I = 0x0

.field private static final EVENT_EXEC_NEXT:I = 0x1

.field private static final STATE_DOING:I = 0x1

.field private static final STATE_DONE:I = 0x2

.field private static final STATE_NO_PENDING:I


# instance fields
.field private mPendingTask:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I

.field private mStateLock:Ljava/lang/Object;

.field private mTaskLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)V
    .registers 2

    .line 274
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 260
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mPendingTask:Ljava/util/ArrayList;

    .line 262
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mTaskLock:Ljava/lang/Object;

    .line 263
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mStateLock:Ljava/lang/Object;

    .line 272
    const/4 p1, 0x0

    iput p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mState:I

    .line 275
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/internal/telephony/MtkSuppServHelper;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 277
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    .line 278
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 260
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mPendingTask:Ljava/util/ArrayList;

    .line 262
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mTaskLock:Ljava/lang/Object;

    .line 263
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mStateLock:Ljava/lang/Object;

    .line 272
    const/4 p1, 0x0

    iput p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mState:I

    .line 279
    return-void
.end method

.method private eventToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "event"    # I

    .line 392
    packed-switch p1, :pswitch_data_c

    .line 398
    const-string v0, "UNKNOWN_EVENT"

    return-object v0

    .line 396
    :pswitch_6
    const-string v0, "EVENT_EXEC_NEXT"

    return-object v0

    .line 394
    :pswitch_9
    const-string v0, "EVENT_DONE"

    return-object v0

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private getCurrentPendingTask()Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;
    .registers 4

    .line 306
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mTaskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 308
    :try_start_3
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mPendingTask:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_e

    .line 309
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 312
    :cond_e
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mPendingTask:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;

    monitor-exit v0

    return-object v1

    .line 313
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private getState()I
    .registers 3

    .line 292
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 294
    :try_start_3
    iget v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mState:I

    monitor-exit v0

    return v1

    .line 295
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private removePendingTask(I)V
    .registers 6
    .param p1, "index"    # I

    .line 317
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mTaskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 318
    :try_start_3
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mPendingTask:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2c

    .line 319
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mPendingTask:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 320
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removePendingTask remain mPendingTask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mPendingTask:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$000(Lcom/mediatek/internal/telephony/MtkSuppServHelper;Ljava/lang/String;)V

    .line 322
    :cond_2c
    monitor-exit v0

    .line 323
    return-void

    .line 322
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method private setState(I)V
    .registers 4
    .param p1, "state"    # I

    .line 299
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 301
    :try_start_3
    iput p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mState:I

    .line 302
    monitor-exit v0

    .line 303
    return-void

    .line 302
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private stateToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "state"    # I

    .line 380
    packed-switch p1, :pswitch_data_10

    .line 388
    const-string v0, "UNKNOWN_STATE"

    return-object v0

    .line 386
    :pswitch_6
    const-string v0, "STATE_DONE"

    return-object v0

    .line 384
    :pswitch_9
    const-string v0, "STATE_DOING"

    return-object v0

    .line 382
    :pswitch_c
    const-string v0, "STATE_NO_PENDING"

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public appendTask(Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;)V
    .registers 4
    .param p1, "task"    # Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;

    .line 282
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mTaskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 284
    :try_start_3
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mPendingTask:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_12

    .line 287
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 288
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 289
    return-void

    .line 285
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public clearPendingTask()V
    .registers 3

    .line 326
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mTaskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 327
    :try_start_3
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->mPendingTask:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 328
    monitor-exit v0

    .line 329
    return-void

    .line 328
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public exec()V
    .registers 7

    .line 332
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->getCurrentPendingTask()Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;

    move-result-object v0

    .line 333
    .local v0, "task":Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;
    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 334
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->setState(I)V

    .line 336
    return-void

    .line 339
    :cond_b
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    .line 340
    return-void

    .line 343
    :cond_13
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->setState(I)V

    .line 344
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;->getTaskId()I

    move-result v2

    .line 345
    .local v2, "taskId":I
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$000(Lcom/mediatek/internal/telephony/MtkSuppServHelper;Ljava/lang/String;)V

    .line 347
    packed-switch v2, :pswitch_data_5c

    .line 358
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    # invokes: Lcom/mediatek/internal/telephony/MtkSuppServHelper;->taskDone()V
    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$300(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)V

    goto :goto_5a

    .line 349
    :pswitch_2c
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    # invokes: Lcom/mediatek/internal/telephony/MtkSuppServHelper;->isMDSupportIMSSuppServ()Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$100(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)Z

    move-result v3

    if-nez v3, :cond_54

    .line 350
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    # getter for: Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$200(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTbcwMode(I)V

    .line 351
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    # getter for: Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$200(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    # getter for: Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$200(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v3

    const-string v4, "persist.vendor.radio.terminal-based.cw"

    const-string v5, "disabled_tbcw"

    invoke-virtual {v1, v3, v4, v5}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setSSPropertyThroughHidl(ILjava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_54
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    # invokes: Lcom/mediatek/internal/telephony/MtkSuppServHelper;->taskDone()V
    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$300(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)V

    .line 355
    nop

    .line 362
    :goto_5a
    return-void

    nop

    :pswitch_data_5c
    .packed-switch 0x5
        :pswitch_2c
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 368
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    goto :goto_11

    .line 370
    :pswitch_6
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->removePendingTask(I)V

    .line 371
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->setState(I)V

    .line 374
    :pswitch_e
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->exec()V

    .line 377
    :goto_11
    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
        :pswitch_e
    .end packed-switch
.end method

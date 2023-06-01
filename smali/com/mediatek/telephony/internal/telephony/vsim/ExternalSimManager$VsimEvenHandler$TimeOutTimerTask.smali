.class public Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$TimeOutTimerTask;
.super Ljava/util/TimerTask;
.source "ExternalSimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimeOutTimerTask"
.end annotation


# instance fields
.field mSlotId:I

.field final synthetic this$1:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;


# direct methods
.method public constructor <init>(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;I)V
    .registers 4
    .param p1, "this$1"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;
    .param p2, "slotId"    # I

    .line 1321
    iput-object p1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$TimeOutTimerTask;->this$1:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1320
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$TimeOutTimerTask;->mSlotId:I

    .line 1322
    iput p2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$TimeOutTimerTask;->mSlotId:I

    .line 1323
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1326
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$TimeOutTimerTask;->this$1:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    iget-object v0, v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$600(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1328
    :try_start_9
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$TimeOutTimerTask;->this$1:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mWaitingEvent:[Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    invoke-static {v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->access$1600(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;)[Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$TimeOutTimerTask;->mSlotId:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_22

    .line 1329
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$TimeOutTimerTask;->this$1:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mWaitingEvent:[Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    invoke-static {v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->access$1600(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;)[Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$TimeOutTimerTask;->mSlotId:I

    aget-object v2, v2, v3

    # invokes: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendNoResponseError(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V
    invoke-static {v1, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->access$1700(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V

    .line 1331
    :cond_22
    const-string v1, "ExternalSimMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimeOutTimerTask["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$TimeOutTimerTask;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] time out and send response to modem directly."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    monitor-exit v0

    .line 1334
    return-void

    .line 1333
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_9 .. :try_end_43} :catchall_41

    throw v1
.end method

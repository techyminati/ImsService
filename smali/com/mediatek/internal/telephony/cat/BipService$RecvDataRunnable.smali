.class Lcom/mediatek/internal/telephony/cat/BipService$RecvDataRunnable;
.super Ljava/lang/Object;
.source "BipService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/cat/BipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecvDataRunnable"
.end annotation


# instance fields
.field cmdMsg:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

.field requestDataSize:I

.field response:Landroid/os/Message;

.field result:Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;

.field final synthetic this$0:Lcom/mediatek/internal/telephony/cat/BipService;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/cat/BipService;ILcom/mediatek/internal/telephony/cat/ReceiveDataResult;Lcom/mediatek/internal/telephony/cat/BipCmdMessage;Landroid/os/Message;)V
    .registers 6
    .param p2, "size"    # I
    .param p3, "result"    # Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;
    .param p4, "cmdMsg"    # Lcom/mediatek/internal/telephony/cat/BipCmdMessage;
    .param p5, "response"    # Landroid/os/Message;

    .line 2692
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/BipService$RecvDataRunnable;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2693
    iput p2, p0, Lcom/mediatek/internal/telephony/cat/BipService$RecvDataRunnable;->requestDataSize:I

    .line 2694
    iput-object p3, p0, Lcom/mediatek/internal/telephony/cat/BipService$RecvDataRunnable;->result:Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;

    .line 2695
    iput-object p4, p0, Lcom/mediatek/internal/telephony/cat/BipService$RecvDataRunnable;->cmdMsg:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    .line 2696
    iput-object p5, p0, Lcom/mediatek/internal/telephony/cat/BipService$RecvDataRunnable;->response:Landroid/os/Message;

    .line 2697
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 2700
    const/4 v0, 0x0

    .line 2701
    .local v0, "lChannel":Lcom/mediatek/internal/telephony/cat/Channel;
    const/4 v1, 0x0

    .line 2703
    .local v1, "errCode":I
    const-string v2, "[BIP]"

    const-string v3, "BM-receiveData: start to receive data"

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2704
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService$RecvDataRunnable;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # getter for: Lcom/mediatek/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/cat/BipService;->access$400(Lcom/mediatek/internal/telephony/cat/BipService;)Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipService$RecvDataRunnable;->cmdMsg:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    iget v3, v3, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mReceiveDataCid:I

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->getChannel(I)Lcom/mediatek/internal/telephony/cat/Channel;

    move-result-object v0

    .line 2705
    if-nez v0, :cond_1b

    .line 2706
    const/4 v1, 0x5

    goto :goto_2a

    .line 2708
    :cond_1b
    iget-object v2, v0, Lcom/mediatek/internal/telephony/cat/Channel;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2709
    const/4 v3, 0x0

    :try_start_1f
    iput-boolean v3, v0, Lcom/mediatek/internal/telephony/cat/Channel;->isReceiveDataTRSent:Z

    .line 2710
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_8a

    .line 2711
    iget v2, p0, Lcom/mediatek/internal/telephony/cat/BipService$RecvDataRunnable;->requestDataSize:I

    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipService$RecvDataRunnable;->result:Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/internal/telephony/cat/Channel;->receiveData(ILcom/mediatek/internal/telephony/cat/ReceiveDataResult;)I

    move-result v1

    .line 2714
    :goto_2a
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService$RecvDataRunnable;->cmdMsg:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipService$RecvDataRunnable;->result:Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    iput-object v3, v2, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mChannelData:[B

    .line 2715
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService$RecvDataRunnable;->cmdMsg:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipService$RecvDataRunnable;->result:Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;

    iget v3, v3, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->remainingCount:I

    iput v3, v2, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mRemainingDataLength:I

    .line 2716
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService$RecvDataRunnable;->response:Landroid/os/Message;

    iput v1, v2, Landroid/os/Message;->arg1:I

    .line 2717
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService$RecvDataRunnable;->response:Landroid/os/Message;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipService$RecvDataRunnable;->cmdMsg:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2718
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService$RecvDataRunnable;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # getter for: Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/cat/BipService;->access$1600(Lcom/mediatek/internal/telephony/cat/BipService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipService$RecvDataRunnable;->response:Landroid/os/Message;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2719
    if-eqz v0, :cond_6c

    .line 2720
    iget-object v2, v0, Lcom/mediatek/internal/telephony/cat/Channel;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2721
    const/4 v3, 0x1

    :try_start_55
    iput-boolean v3, v0, Lcom/mediatek/internal/telephony/cat/Channel;->isReceiveDataTRSent:Z

    .line 2722
    iget v3, v0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    if-nez v3, :cond_67

    .line 2723
    const-string v3, "[BIP]"

    const-string v4, "BM-receiveData: notify waiting channel!"

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2724
    iget-object v3, v0, Lcom/mediatek/internal/telephony/cat/Channel;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 2726
    :cond_67
    monitor-exit v2

    goto :goto_73

    :catchall_69
    move-exception v3

    monitor-exit v2
    :try_end_6b
    .catchall {:try_start_55 .. :try_end_6b} :catchall_69

    throw v3

    .line 2728
    :cond_6c
    const-string v2, "[BIP]"

    const-string v3, "BM-receiveData: null channel."

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2730
    :goto_73
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BM-receiveData: end to receive data. Result code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2731
    return-void

    .line 2710
    :catchall_8a
    move-exception v3

    :try_start_8b
    monitor-exit v2
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    throw v3
.end method

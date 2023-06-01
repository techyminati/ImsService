.class public Lcom/mediatek/internal/telephony/cat/BipService$SendDataThread;
.super Ljava/lang/Object;
.source "BipService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/cat/BipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SendDataThread"
.end annotation


# instance fields
.field cmdMsg:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

.field response:Landroid/os/Message;

.field final synthetic this$0:Lcom/mediatek/internal/telephony/cat/BipService;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/cat/BipService;Lcom/mediatek/internal/telephony/cat/BipCmdMessage;Landroid/os/Message;)V
    .registers 6
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/cat/BipService;
    .param p2, "Msg"    # Lcom/mediatek/internal/telephony/cat/BipCmdMessage;
    .param p3, "resp"    # Landroid/os/Message;

    .line 1899
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/BipService$SendDataThread;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1900
    const-string v0, "[BIP]"

    const-string v1, "SendDataThread Init"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1901
    iput-object p2, p0, Lcom/mediatek/internal/telephony/cat/BipService$SendDataThread;->cmdMsg:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    .line 1902
    iput-object p3, p0, Lcom/mediatek/internal/telephony/cat/BipService$SendDataThread;->response:Landroid/os/Message;

    .line 1903
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 1908
    const-string v0, "[BIP]"

    const-string v1, "SendDataThread Run Enter"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1909
    const/4 v1, 0x0

    .line 1911
    .local v1, "ret":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService$SendDataThread;->cmdMsg:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mChannelData:[B

    .line 1912
    .local v2, "buffer":[B
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipService$SendDataThread;->cmdMsg:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    iget v3, v3, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mSendMode:I

    .line 1913
    .local v3, "mode":I
    const/4 v4, 0x0

    .line 1914
    .local v4, "lChannel":Lcom/mediatek/internal/telephony/cat/Channel;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipService$SendDataThread;->cmdMsg:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    iget v5, v5, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mSendDataCid:I

    .line 1916
    .local v5, "cId":I
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/BipService$SendDataThread;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # getter for: Lcom/mediatek/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/cat/BipService;->access$400(Lcom/mediatek/internal/telephony/cat/BipService;)Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->getChannel(I)Lcom/mediatek/internal/telephony/cat/Channel;

    move-result-object v4

    .line 1918
    if-nez v4, :cond_28

    .line 1919
    const-string v6, "SendDataThread Run mChannelId != cmdMsg.mSendDataCid"

    invoke-static {v0, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1920
    const/4 v1, 0x7

    .line 1921
    goto :goto_45

    .line 1924
    :cond_28
    iget v6, v4, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelStatus:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3f

    .line 1926
    const-string v6, "SendDataThread Run mChannel.sendData"

    invoke-static {v0, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1927
    invoke-virtual {v4, v2, v3}, Lcom/mediatek/internal/telephony/cat/Channel;->sendData([BI)I

    move-result v1

    .line 1928
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/BipService$SendDataThread;->response:Landroid/os/Message;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/cat/Channel;->getTxAvailBufferSize()I

    move-result v7

    iput v7, v6, Landroid/os/Message;->arg2:I

    goto :goto_45

    .line 1932
    :cond_3f
    const-string v6, "SendDataThread Run CHANNEL_ID_NOT_VALID"

    invoke-static {v0, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1933
    const/4 v1, 0x7

    .line 1936
    :goto_45
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/BipService$SendDataThread;->response:Landroid/os/Message;

    iput v1, v6, Landroid/os/Message;->arg1:I

    .line 1937
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/BipService$SendDataThread;->response:Landroid/os/Message;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/BipService$SendDataThread;->cmdMsg:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    iput-object v7, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1938
    const-string v6, "SendDataThread Run mBipSrvHandler.sendMessage(response);"

    invoke-static {v0, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1939
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService$SendDataThread;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # getter for: Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/cat/BipService;->access$1600(Lcom/mediatek/internal/telephony/cat/BipService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/BipService$SendDataThread;->response:Landroid/os/Message;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1940
    return-void
.end method

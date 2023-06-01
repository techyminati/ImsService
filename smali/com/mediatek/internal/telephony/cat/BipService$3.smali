.class Lcom/mediatek/internal/telephony/cat/BipService$3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "BipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/cat/BipService;->newRequestOverWifi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/cat/BipService;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/cat/BipService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/cat/BipService;

    .line 1768
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/BipService$3;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 6
    .param p1, "network"    # Landroid/net/Network;

    .line 1771
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 1772
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService$3;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # getter for: Lcom/mediatek/internal/telephony/cat/BipService;->isConnMgrIntentTimeout:Z
    invoke-static {v0}, Lcom/mediatek/internal/telephony/cat/BipService;->access$1100(Lcom/mediatek/internal/telephony/cat/BipService;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1773
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService$3;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # getter for: Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/cat/BipService;->access$1600(Lcom/mediatek/internal/telephony/cat/BipService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1775
    :cond_16
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService$3;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # getter for: Lcom/mediatek/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/cat/BipService;->access$400(Lcom/mediatek/internal/telephony/cat/BipService;)Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService$3;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # getter for: Lcom/mediatek/internal/telephony/cat/BipService;->mChannelId:I
    invoke-static {v1}, Lcom/mediatek/internal/telephony/cat/BipService;->access$2100(Lcom/mediatek/internal/telephony/cat/BipService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->getChannel(I)Lcom/mediatek/internal/telephony/cat/Channel;

    move-result-object v0

    .line 1776
    .local v0, "channel":Lcom/mediatek/internal/telephony/cat/Channel;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkCallbackListener.onAvailable, mChannelId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService$3;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    .line 1777
    # getter for: Lcom/mediatek/internal/telephony/cat/BipService;->mChannelId:I
    invoke-static {v2}, Lcom/mediatek/internal/telephony/cat/BipService;->access$2100(Lcom/mediatek/internal/telephony/cat/BipService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , mIsOpenInProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService$3;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # getter for: Lcom/mediatek/internal/telephony/cat/BipService;->mIsOpenInProgress:Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/cat/BipService;->access$2200(Lcom/mediatek/internal/telephony/cat/BipService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mIsNetworkAvailableReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService$3;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    .line 1778
    # getter for: Lcom/mediatek/internal/telephony/cat/BipService;->mIsNetworkAvailableReceived:Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/cat/BipService;->access$2300(Lcom/mediatek/internal/telephony/cat/BipService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1776
    const-string v2, "[BIP]"

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    if-nez v0, :cond_65

    .line 1780
    const-string v1, "Channel is null."

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    :cond_65
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService$3;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # getter for: Lcom/mediatek/internal/telephony/cat/BipService;->mIsOpenInProgress:Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/cat/BipService;->access$2200(Lcom/mediatek/internal/telephony/cat/BipService;)Z

    move-result v1

    const/4 v3, 0x1

    if-ne v3, v1, :cond_86

    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService$3;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # getter for: Lcom/mediatek/internal/telephony/cat/BipService;->mIsNetworkAvailableReceived:Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/cat/BipService;->access$2300(Lcom/mediatek/internal/telephony/cat/BipService;)Z

    move-result v1

    if-nez v1, :cond_86

    .line 1783
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService$3;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # setter for: Lcom/mediatek/internal/telephony/cat/BipService;->mIsNetworkAvailableReceived:Z
    invoke-static {v1, v3}, Lcom/mediatek/internal/telephony/cat/BipService;->access$2302(Lcom/mediatek/internal/telephony/cat/BipService;Z)Z

    .line 1784
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService$3;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # setter for: Lcom/mediatek/internal/telephony/cat/BipService;->mNetwork:Landroid/net/Network;
    invoke-static {v1, p1}, Lcom/mediatek/internal/telephony/cat/BipService;->access$2502(Lcom/mediatek/internal/telephony/cat/BipService;Landroid/net/Network;)Landroid/net/Network;

    .line 1785
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService$3;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # invokes: Lcom/mediatek/internal/telephony/cat/BipService;->connect()V
    invoke-static {v1}, Lcom/mediatek/internal/telephony/cat/BipService;->access$2600(Lcom/mediatek/internal/telephony/cat/BipService;)V

    goto :goto_8b

    .line 1787
    :cond_86
    const-string v1, "Bip channel has been established."

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1789
    :goto_8b
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 6
    .param p1, "network"    # Landroid/net/Network;

    .line 1793
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 1794
    const/4 v0, 0x0

    .line 1795
    .local v0, "ret":I
    const/4 v1, 0x0

    .line 1796
    .local v1, "response":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService$3;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # getter for: Lcom/mediatek/internal/telephony/cat/BipService;->isConnMgrIntentTimeout:Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/cat/BipService;->access$1100(Lcom/mediatek/internal/telephony/cat/BipService;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 1797
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService$3;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # getter for: Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/cat/BipService;->access$1600(Lcom/mediatek/internal/telephony/cat/BipService;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1799
    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetworkCallbackListener.onLost: network="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[BIP]"

    invoke-static {v3, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService$3;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # invokes: Lcom/mediatek/internal/telephony/cat/BipService;->releaseRequest()V
    invoke-static {v2}, Lcom/mediatek/internal/telephony/cat/BipService;->access$600(Lcom/mediatek/internal/telephony/cat/BipService;)V

    .line 1801
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService$3;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # invokes: Lcom/mediatek/internal/telephony/cat/BipService;->resetLocked()V
    invoke-static {v2}, Lcom/mediatek/internal/telephony/cat/BipService;->access$700(Lcom/mediatek/internal/telephony/cat/BipService;)V

    .line 1802
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService$3;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # invokes: Lcom/mediatek/internal/telephony/cat/BipService;->disconnect()V
    invoke-static {v2}, Lcom/mediatek/internal/telephony/cat/BipService;->access$1200(Lcom/mediatek/internal/telephony/cat/BipService;)V

    .line 1803
    return-void
.end method

.method public onUnavailable()V
    .registers 3

    .line 1807
    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    .line 1808
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService$3;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # getter for: Lcom/mediatek/internal/telephony/cat/BipService;->isConnMgrIntentTimeout:Z
    invoke-static {v0}, Lcom/mediatek/internal/telephony/cat/BipService;->access$1100(Lcom/mediatek/internal/telephony/cat/BipService;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1809
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService$3;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # getter for: Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/cat/BipService;->access$1600(Lcom/mediatek/internal/telephony/cat/BipService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1811
    :cond_16
    const-string v0, "[BIP]"

    const-string v1, "NetworkCallbackListener.onUnavailable"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1812
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService$3;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # invokes: Lcom/mediatek/internal/telephony/cat/BipService;->releaseRequest()V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/cat/BipService;->access$600(Lcom/mediatek/internal/telephony/cat/BipService;)V

    .line 1813
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService$3;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # invokes: Lcom/mediatek/internal/telephony/cat/BipService;->resetLocked()V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/cat/BipService;->access$700(Lcom/mediatek/internal/telephony/cat/BipService;)V

    .line 1814
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService$3;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # invokes: Lcom/mediatek/internal/telephony/cat/BipService;->disconnect()V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/cat/BipService;->access$1200(Lcom/mediatek/internal/telephony/cat/BipService;)V

    .line 1815
    return-void
.end method

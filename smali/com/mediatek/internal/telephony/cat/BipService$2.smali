.class Lcom/mediatek/internal/telephony/cat/BipService$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "BipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/cat/BipService;->newRequest()V
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

    .line 1668
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/BipService$2;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 5
    .param p1, "network"    # Landroid/net/Network;

    .line 1671
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 1672
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService$2;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # getter for: Lcom/mediatek/internal/telephony/cat/BipService;->isConnMgrIntentTimeout:Z
    invoke-static {v0}, Lcom/mediatek/internal/telephony/cat/BipService;->access$1100(Lcom/mediatek/internal/telephony/cat/BipService;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1673
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService$2;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # getter for: Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/cat/BipService;->access$1600(Lcom/mediatek/internal/telephony/cat/BipService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1675
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkCallbackListener.onAvailable, mChannelId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService$2;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    .line 1676
    # getter for: Lcom/mediatek/internal/telephony/cat/BipService;->mChannelId:I
    invoke-static {v1}, Lcom/mediatek/internal/telephony/cat/BipService;->access$2100(Lcom/mediatek/internal/telephony/cat/BipService;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , mIsOpenInProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService$2;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # getter for: Lcom/mediatek/internal/telephony/cat/BipService;->mIsOpenInProgress:Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/cat/BipService;->access$2200(Lcom/mediatek/internal/telephony/cat/BipService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , mIsNetworkAvailableReceived: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService$2;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    .line 1677
    # getter for: Lcom/mediatek/internal/telephony/cat/BipService;->mIsNetworkAvailableReceived:Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/cat/BipService;->access$2300(Lcom/mediatek/internal/telephony/cat/BipService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1675
    const-string v1, "[BIP]"

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1681
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService$2;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    iget-boolean v0, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mDNSaddrequest:Z

    const/4 v2, 0x1

    if-ne v2, v0, :cond_63

    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService$2;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # getter for: Lcom/mediatek/internal/telephony/cat/BipService;->mIsOpenInProgress:Z
    invoke-static {v0}, Lcom/mediatek/internal/telephony/cat/BipService;->access$2200(Lcom/mediatek/internal/telephony/cat/BipService;)Z

    move-result v0

    if-ne v2, v0, :cond_63

    .line 1682
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService$2;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # invokes: Lcom/mediatek/internal/telephony/cat/BipService;->queryDnsServerAddress(Landroid/net/Network;)V
    invoke-static {v0, p1}, Lcom/mediatek/internal/telephony/cat/BipService;->access$2400(Lcom/mediatek/internal/telephony/cat/BipService;Landroid/net/Network;)V

    goto :goto_88

    .line 1683
    :cond_63
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService$2;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # getter for: Lcom/mediatek/internal/telephony/cat/BipService;->mIsOpenInProgress:Z
    invoke-static {v0}, Lcom/mediatek/internal/telephony/cat/BipService;->access$2200(Lcom/mediatek/internal/telephony/cat/BipService;)Z

    move-result v0

    if-ne v2, v0, :cond_83

    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService$2;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # getter for: Lcom/mediatek/internal/telephony/cat/BipService;->mIsNetworkAvailableReceived:Z
    invoke-static {v0}, Lcom/mediatek/internal/telephony/cat/BipService;->access$2300(Lcom/mediatek/internal/telephony/cat/BipService;)Z

    move-result v0

    if-nez v0, :cond_83

    .line 1684
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService$2;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # setter for: Lcom/mediatek/internal/telephony/cat/BipService;->mIsNetworkAvailableReceived:Z
    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/cat/BipService;->access$2302(Lcom/mediatek/internal/telephony/cat/BipService;Z)Z

    .line 1685
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService$2;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # setter for: Lcom/mediatek/internal/telephony/cat/BipService;->mNetwork:Landroid/net/Network;
    invoke-static {v0, p1}, Lcom/mediatek/internal/telephony/cat/BipService;->access$2502(Lcom/mediatek/internal/telephony/cat/BipService;Landroid/net/Network;)Landroid/net/Network;

    .line 1686
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService$2;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # invokes: Lcom/mediatek/internal/telephony/cat/BipService;->connect()V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/cat/BipService;->access$2600(Lcom/mediatek/internal/telephony/cat/BipService;)V

    goto :goto_88

    .line 1688
    :cond_83
    const-string v0, "Bip channel has been established."

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    :goto_88
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 6
    .param p1, "network"    # Landroid/net/Network;

    .line 1694
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 1695
    const/4 v0, 0x0

    .line 1696
    .local v0, "ret":I
    const/4 v1, 0x0

    .line 1697
    .local v1, "response":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService$2;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # getter for: Lcom/mediatek/internal/telephony/cat/BipService;->isConnMgrIntentTimeout:Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/cat/BipService;->access$1100(Lcom/mediatek/internal/telephony/cat/BipService;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 1698
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService$2;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # getter for: Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/cat/BipService;->access$1600(Lcom/mediatek/internal/telephony/cat/BipService;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1700
    :cond_18
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService$2;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # getter for: Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/cat/BipService;->access$1600(Lcom/mediatek/internal/telephony/cat/BipService;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1701
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService$2;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    const/4 v3, 0x0

    # setter for: Lcom/mediatek/internal/telephony/cat/BipService;->mPreviousKeepChannelId:I
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/BipService;->access$1502(Lcom/mediatek/internal/telephony/cat/BipService;I)I

    .line 1702
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLost: network:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mNetworkCallback:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipService$2;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    .line 1703
    # getter for: Lcom/mediatek/internal/telephony/cat/BipService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/cat/BipService;->access$2700(Lcom/mediatek/internal/telephony/cat/BipService;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " this:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1702
    const-string v3, "[BIP]"

    invoke-static {v3, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService$2;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # invokes: Lcom/mediatek/internal/telephony/cat/BipService;->releaseRequest()V
    invoke-static {v2}, Lcom/mediatek/internal/telephony/cat/BipService;->access$600(Lcom/mediatek/internal/telephony/cat/BipService;)V

    .line 1705
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService$2;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # invokes: Lcom/mediatek/internal/telephony/cat/BipService;->resetLocked()V
    invoke-static {v2}, Lcom/mediatek/internal/telephony/cat/BipService;->access$700(Lcom/mediatek/internal/telephony/cat/BipService;)V

    .line 1706
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService$2;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # invokes: Lcom/mediatek/internal/telephony/cat/BipService;->disconnect()V
    invoke-static {v2}, Lcom/mediatek/internal/telephony/cat/BipService;->access$1200(Lcom/mediatek/internal/telephony/cat/BipService;)V

    .line 1707
    return-void
.end method

.method public onUnavailable()V
    .registers 3

    .line 1711
    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    .line 1712
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService$2;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # getter for: Lcom/mediatek/internal/telephony/cat/BipService;->isConnMgrIntentTimeout:Z
    invoke-static {v0}, Lcom/mediatek/internal/telephony/cat/BipService;->access$1100(Lcom/mediatek/internal/telephony/cat/BipService;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1713
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService$2;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # getter for: Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/cat/BipService;->access$1600(Lcom/mediatek/internal/telephony/cat/BipService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1715
    :cond_16
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService$2;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # getter for: Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/cat/BipService;->access$1600(Lcom/mediatek/internal/telephony/cat/BipService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1716
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService$2;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/internal/telephony/cat/BipService;->mPreviousKeepChannelId:I
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/BipService;->access$1502(Lcom/mediatek/internal/telephony/cat/BipService;I)I

    .line 1717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUnavailable: mNetworkCallback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService$2;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # getter for: Lcom/mediatek/internal/telephony/cat/BipService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/cat/BipService;->access$2700(Lcom/mediatek/internal/telephony/cat/BipService;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " this:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[BIP]"

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService$2;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # invokes: Lcom/mediatek/internal/telephony/cat/BipService;->releaseRequest()V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/cat/BipService;->access$600(Lcom/mediatek/internal/telephony/cat/BipService;)V

    .line 1720
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService$2;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # invokes: Lcom/mediatek/internal/telephony/cat/BipService;->resetLocked()V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/cat/BipService;->access$700(Lcom/mediatek/internal/telephony/cat/BipService;)V

    .line 1721
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService$2;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # invokes: Lcom/mediatek/internal/telephony/cat/BipService;->disconnect()V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/cat/BipService;->access$1200(Lcom/mediatek/internal/telephony/cat/BipService;)V

    .line 1722
    return-void
.end method

.class Lcom/mediatek/wfo/impl/WifiPdnHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiPdnHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/impl/WifiPdnHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/wfo/impl/WifiPdnHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/wfo/impl/WifiPdnHandler;

    .line 665
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 668
    if-eqz p2, :cond_158

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    goto/16 :goto_158

    .line 671
    :cond_a
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 672
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_45

    .line 673
    const/4 v0, 0x4

    const-string v2, "wifi_state"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 675
    .local v0, "wifiState":I
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const/16 v3, 0x3f5

    invoke-virtual {v2, v3, v0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 676
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 677
    .end local v0    # "wifiState":I
    .end local v1    # "msg":Landroid/os/Message;
    goto/16 :goto_157

    :cond_45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 679
    const-string v0, "state"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 680
    .local v0, "isAirplaneModeOn":Z
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_AIRPLANE_MODE_CHANGED isAirplaneModeOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 681
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const/16 v2, 0x480

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 682
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v2, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->sendMessage(Landroid/os/Message;)Z

    .line 683
    .end local v0    # "isAirplaneModeOn":Z
    .end local v1    # "msg":Landroid/os/Message;
    goto/16 :goto_157

    :cond_7c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.net.wifi.action.WIFI_SCAN_AVAILABILITY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 684
    const-string v0, "android.net.wifi.extra.SCAN_AVAILABLE"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 686
    .local v0, "state":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive WIFI_SCAN_AVAILABLE, state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiPdnHandler"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const/16 v2, 0x3f4

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 688
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v2, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->sendMessage(Landroid/os/Message;)Z

    .line 689
    .end local v0    # "state":Z
    .end local v1    # "msg":Landroid/os/Message;
    goto/16 :goto_157

    :cond_b3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_120

    .line 690
    nop

    .line 691
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 692
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    const/4 v2, 0x1

    if-eqz v0, :cond_d3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_d3

    move v3, v2

    goto :goto_d4

    :cond_d3
    move v3, v1

    .line 693
    .local v3, "isWifiConnected":Z
    :goto_d4
    iget-object v4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Receive NETWORK_STATE_CHANGED_ACTION, mIsWifiConnected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    # getter for: Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z
    invoke-static {v6}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$000(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " networkInfo.isConnected(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 695
    iget-object v4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    # getter for: Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z
    invoke-static {v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$000(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Z

    move-result v4

    if-eqz v4, :cond_11a

    iget-object v4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    # getter for: Lcom/mediatek/wfo/impl/WifiPdnHandler;->mOldWifiConnectedFromNetworkInfo:Z
    invoke-static {v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$100(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Z

    move-result v4

    if-eqz v4, :cond_11a

    .line 696
    iget-object v4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const/16 v5, 0x3e8

    .line 698
    if-eqz v3, :cond_10f

    goto :goto_110

    :cond_10f
    move v2, v1

    :goto_110
    const/4 v6, 0x0

    .line 696
    invoke-virtual {v4, v5, v2, v1, v6}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 700
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v2, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->sendMessage(Landroid/os/Message;)Z

    .line 702
    .end local v1    # "msg":Landroid/os/Message;
    :cond_11a
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    # setter for: Lcom/mediatek/wfo/impl/WifiPdnHandler;->mOldWifiConnectedFromNetworkInfo:Z
    invoke-static {v1, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$102(Lcom/mediatek/wfo/impl/WifiPdnHandler;Z)Z

    .end local v0    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v3    # "isWifiConnected":Z
    goto :goto_156

    .line 703
    :cond_120
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_156

    .line 705
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_CARRIER_CONFIG_CHANGED mIsAirplaneModeOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    # getter for: Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z
    invoke-static {v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$200(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 706
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    # getter for: Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z
    invoke-static {v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$200(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Z

    move-result v0

    if-eqz v0, :cond_157

    .line 707
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    # invokes: Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiEnabled()V
    invoke-static {v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$300(Lcom/mediatek/wfo/impl/WifiPdnHandler;)V

    goto :goto_157

    .line 703
    :cond_156
    :goto_156
    nop

    .line 710
    :cond_157
    :goto_157
    return-void

    .line 669
    :cond_158
    :goto_158
    return-void
.end method

.class Lcom/mediatek/wfo/impl/WifiOffloadService$6;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/wfo/impl/WifiOffloadService;->setupCallbacksForWifiStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;


# direct methods
.method constructor <init>(Lcom/mediatek/wfo/impl/WifiOffloadService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;

    .line 2065
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$6;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 6
    .param p1, "network"    # Landroid/net/Network;

    .line 2071
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$6;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;
    invoke-static {v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$500(Lcom/mediatek/wfo/impl/WifiOffloadService;)Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v1, v2, v3}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2075
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$6;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;
    invoke-static {v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$500(Lcom/mediatek/wfo/impl/WifiOffloadService;)Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2076
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 8
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 2093
    if-nez p2, :cond_a

    .line 2094
    const-string v0, "WifiOffloadService"

    const-string v1, "NetworkCallback.onCapabilitiesChanged, Capabilities=null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2095
    return-void

    .line 2098
    :cond_a
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getSignalStrength()I

    move-result v0

    .line 2100
    .local v0, "rssi":I
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$6;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mLastRssi:I
    invoke-static {v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$5800(Lcom/mediatek/wfo/impl/WifiOffloadService;)I

    move-result v1

    if-ne v1, v0, :cond_17

    .line 2101
    return-void

    .line 2103
    :cond_17
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$6;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # setter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mLastRssi:I
    invoke-static {v1, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$5802(Lcom/mediatek/wfo/impl/WifiOffloadService;I)I

    .line 2105
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$6;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;
    invoke-static {v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$500(Lcom/mediatek/wfo/impl/WifiOffloadService;)Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2108
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$6;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;
    invoke-static {v2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$500(Lcom/mediatek/wfo/impl/WifiOffloadService;)Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2109
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 7
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "linkProperties"    # Landroid/net/LinkProperties;

    .line 2117
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$6;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsWifiConnected:Z
    invoke-static {v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$5900(Lcom/mediatek/wfo/impl/WifiOffloadService;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2119
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$6;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;
    invoke-static {v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$500(Lcom/mediatek/wfo/impl/WifiOffloadService;)Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2123
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$6;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;
    invoke-static {v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$500(Lcom/mediatek/wfo/impl/WifiOffloadService;)Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2125
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1e
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 6
    .param p1, "network"    # Landroid/net/Network;

    .line 2083
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$6;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;
    invoke-static {v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$500(Lcom/mediatek/wfo/impl/WifiOffloadService;)Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v2, v3}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2087
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$6;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;
    invoke-static {v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$500(Lcom/mediatek/wfo/impl/WifiOffloadService;)Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2088
    return-void
.end method

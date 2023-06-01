.class Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "XcapMobileDataNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->newRequest(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    .line 238
    iput-object p1, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager$1;->this$0:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 5
    .param p1, "network"    # Landroid/net/Network;

    .line 241
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 242
    const-string v0, "XcapMobileDataNetworkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkCallbackListener.onAvailable: network="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager$1;->this$0:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    # invokes: Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->stopListenXcapDataConnectionState()V
    invoke-static {v0}, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->access$200(Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;)V

    .line 244
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager$1;->this$0:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    monitor-enter v0

    .line 245
    :try_start_21
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager$1;->this$0:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    # setter for: Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mNetwork:Landroid/net/Network;
    invoke-static {v1, p1}, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->access$002(Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;Landroid/net/Network;)Landroid/net/Network;

    .line 246
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager$1;->this$0:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 247
    monitor-exit v0

    .line 248
    return-void

    .line 247
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_21 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 5
    .param p1, "network"    # Landroid/net/Network;

    .line 252
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 253
    const-string v0, "XcapMobileDataNetworkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkCallbackListener.onLost: network="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager$1;->this$0:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    # invokes: Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->stopListenXcapDataConnectionState()V
    invoke-static {v0}, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->access$200(Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;)V

    .line 255
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager$1;->this$0:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    monitor-enter v0

    .line 256
    :try_start_21
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager$1;->this$0:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    # invokes: Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->releaseRequest()V
    invoke-static {v1}, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->access$100(Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;)V

    .line 257
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager$1;->this$0:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 258
    monitor-exit v0

    .line 259
    return-void

    .line 258
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_21 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public onUnavailable()V
    .registers 3

    .line 263
    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    .line 264
    const-string v0, "XcapMobileDataNetworkManager"

    const-string v1, "NetworkCallbackListener.onUnavailable"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager$1;->this$0:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    # invokes: Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->stopListenXcapDataConnectionState()V
    invoke-static {v0}, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->access$200(Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;)V

    .line 266
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager$1;->this$0:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    monitor-enter v0

    .line 267
    :try_start_12
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager$1;->this$0:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    # invokes: Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->releaseRequest()V
    invoke-static {v1}, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->access$100(Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;)V

    .line 268
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager$1;->this$0:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 269
    monitor-exit v0

    .line 270
    return-void

    .line 269
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_1e

    throw v1
.end method

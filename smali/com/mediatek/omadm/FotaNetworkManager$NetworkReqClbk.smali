.class Lcom/mediatek/omadm/FotaNetworkManager$NetworkReqClbk;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "FotaNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/omadm/FotaNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkReqClbk"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/omadm/FotaNetworkManager;


# direct methods
.method private constructor <init>(Lcom/mediatek/omadm/FotaNetworkManager;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/mediatek/omadm/FotaNetworkManager$NetworkReqClbk;->this$0:Lcom/mediatek/omadm/FotaNetworkManager;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/omadm/FotaNetworkManager;Lcom/mediatek/omadm/FotaNetworkManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/mediatek/omadm/FotaNetworkManager;
    .param p2, "x1"    # Lcom/mediatek/omadm/FotaNetworkManager$1;

    .line 67
    invoke-direct {p0, p1}, Lcom/mediatek/omadm/FotaNetworkManager$NetworkReqClbk;-><init>(Lcom/mediatek/omadm/FotaNetworkManager;)V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 5
    .param p1, "network"    # Landroid/net/Network;

    .line 70
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 71
    const-string v0, "FotaNetworkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkCallbackListener.onAvailable: network="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/mediatek/omadm/FotaNetworkManager$NetworkReqClbk;->this$0:Lcom/mediatek/omadm/FotaNetworkManager;

    monitor-enter v0

    .line 73
    :try_start_1c
    iget-object v1, p0, Lcom/mediatek/omadm/FotaNetworkManager$NetworkReqClbk;->this$0:Lcom/mediatek/omadm/FotaNetworkManager;

    # setter for: Lcom/mediatek/omadm/FotaNetworkManager;->mNwk:Landroid/net/Network;
    invoke-static {v1, p1}, Lcom/mediatek/omadm/FotaNetworkManager;->access$002(Lcom/mediatek/omadm/FotaNetworkManager;Landroid/net/Network;)Landroid/net/Network;

    .line 74
    iget-object v1, p0, Lcom/mediatek/omadm/FotaNetworkManager$NetworkReqClbk;->this$0:Lcom/mediatek/omadm/FotaNetworkManager;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 75
    monitor-exit v0

    .line 76
    return-void

    .line 75
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1c .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 6
    .param p1, "network"    # Landroid/net/Network;

    .line 80
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 81
    const-string v0, "FotaNetworkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkCallbackListener.onLost: network="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/mediatek/omadm/FotaNetworkManager$NetworkReqClbk;->this$0:Lcom/mediatek/omadm/FotaNetworkManager;

    monitor-enter v0

    .line 83
    :try_start_1c
    iget-object v1, p0, Lcom/mediatek/omadm/FotaNetworkManager$NetworkReqClbk;->this$0:Lcom/mediatek/omadm/FotaNetworkManager;

    # invokes: Lcom/mediatek/omadm/FotaNetworkManager;->releaseReqLock(Landroid/net/ConnectivityManager$NetworkCallback;)V
    invoke-static {v1, p0}, Lcom/mediatek/omadm/FotaNetworkManager;->access$100(Lcom/mediatek/omadm/FotaNetworkManager;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 84
    iget-object v1, p0, Lcom/mediatek/omadm/FotaNetworkManager$NetworkReqClbk;->this$0:Lcom/mediatek/omadm/FotaNetworkManager;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 85
    iget-object v1, p0, Lcom/mediatek/omadm/FotaNetworkManager$NetworkReqClbk;->this$0:Lcom/mediatek/omadm/FotaNetworkManager;

    iget-object v1, v1, Lcom/mediatek/omadm/FotaNetworkManager;->mOmadmSrv:Lcom/mediatek/omadm/OmadmServiceImpl;

    if-eqz v1, :cond_35

    .line 86
    iget-object v1, p0, Lcom/mediatek/omadm/FotaNetworkManager$NetworkReqClbk;->this$0:Lcom/mediatek/omadm/FotaNetworkManager;

    iget-object v1, v1, Lcom/mediatek/omadm/FotaNetworkManager;->mOmadmSrv:Lcom/mediatek/omadm/OmadmServiceImpl;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/omadm/OmadmServiceImpl;->omadmControllerDispachAdminNetStatus(II)V

    .line 88
    :cond_35
    iget-object v1, p0, Lcom/mediatek/omadm/FotaNetworkManager$NetworkReqClbk;->this$0:Lcom/mediatek/omadm/FotaNetworkManager;

    const/4 v2, 0x0

    # setter for: Lcom/mediatek/omadm/FotaNetworkManager;->mNwk:Landroid/net/Network;
    invoke-static {v1, v2}, Lcom/mediatek/omadm/FotaNetworkManager;->access$002(Lcom/mediatek/omadm/FotaNetworkManager;Landroid/net/Network;)Landroid/net/Network;

    .line 89
    monitor-exit v0

    .line 90
    return-void

    .line 89
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_1c .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public onUnavailable()V
    .registers 3

    .line 94
    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    .line 95
    const-string v0, "FotaNetworkManager"

    const-string v1, "NetworkCallbackListener.onUnavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/mediatek/omadm/FotaNetworkManager$NetworkReqClbk;->this$0:Lcom/mediatek/omadm/FotaNetworkManager;

    monitor-enter v0

    .line 97
    :try_start_d
    iget-object v1, p0, Lcom/mediatek/omadm/FotaNetworkManager$NetworkReqClbk;->this$0:Lcom/mediatek/omadm/FotaNetworkManager;

    # invokes: Lcom/mediatek/omadm/FotaNetworkManager;->releaseReqLock(Landroid/net/ConnectivityManager$NetworkCallback;)V
    invoke-static {v1, p0}, Lcom/mediatek/omadm/FotaNetworkManager;->access$100(Lcom/mediatek/omadm/FotaNetworkManager;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 98
    iget-object v1, p0, Lcom/mediatek/omadm/FotaNetworkManager$NetworkReqClbk;->this$0:Lcom/mediatek/omadm/FotaNetworkManager;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 99
    monitor-exit v0

    .line 100
    return-void

    .line 99
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_19

    throw v1
.end method

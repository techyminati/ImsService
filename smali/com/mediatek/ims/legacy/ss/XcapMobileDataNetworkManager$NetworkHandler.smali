.class Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager$NetworkHandler;
.super Landroid/os/Handler;
.source "XcapMobileDataNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 191
    iput-object p1, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager$NetworkHandler;->this$0:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    .line 192
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 193
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 197
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_30

    .line 206
    return-void

    .line 199
    :pswitch_6
    const-string v0, "XcapMobileDataNetworkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ready to release network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager$NetworkHandler;->this$0:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    # getter for: Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->access$000(Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager$NetworkHandler;->this$0:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    monitor-enter v0

    .line 201
    :try_start_25
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager$NetworkHandler;->this$0:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    # invokes: Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->releaseRequest()V
    invoke-static {v1}, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->access$100(Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;)V

    .line 202
    monitor-exit v0

    .line 203
    return-void

    .line 202
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_2c

    throw v1

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method

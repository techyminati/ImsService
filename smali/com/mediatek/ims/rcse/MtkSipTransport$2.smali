.class Lcom/mediatek/ims/rcse/MtkSipTransport$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "MtkSipTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/rcse/MtkSipTransport;->registerNetworkCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/rcse/MtkSipTransport;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/rcse/MtkSipTransport;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/rcse/MtkSipTransport;

    .line 248
    iput-object p1, p0, Lcom/mediatek/ims/rcse/MtkSipTransport$2;->this$0:Lcom/mediatek/ims/rcse/MtkSipTransport;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .line 252
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport$2;->this$0:Lcom/mediatek/ims/rcse/MtkSipTransport;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/MtkSipTransport;->access$000(Lcom/mediatek/ims/rcse/MtkSipTransport;)Lcom/mediatek/ims/utils/logger/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wifiCallback onAvailable is called: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 253
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 254
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport$2;->this$0:Lcom/mediatek/ims/rcse/MtkSipTransport;

    invoke-static {v0, p1}, Lcom/mediatek/ims/rcse/MtkSipTransport;->access$102(Lcom/mediatek/ims/rcse/MtkSipTransport;Landroid/net/Network;)Landroid/net/Network;

    .line 255
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport$2;->this$0:Lcom/mediatek/ims/rcse/MtkSipTransport;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/MtkSipTransport;->access$300(Lcom/mediatek/ims/rcse/MtkSipTransport;)Landroid/net/ConnectivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/rcse/MtkSipTransport$2;->this$0:Lcom/mediatek/ims/rcse/MtkSipTransport;

    invoke-static {v2}, Lcom/mediatek/ims/rcse/MtkSipTransport;->access$100(Lcom/mediatek/ims/rcse/MtkSipTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcse/MtkSipTransport;->access$202(Lcom/mediatek/ims/rcse/MtkSipTransport;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 256
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport$2;->this$0:Lcom/mediatek/ims/rcse/MtkSipTransport;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/MtkSipTransport;->access$000(Lcom/mediatek/ims/rcse/MtkSipTransport;)Lcom/mediatek/ims/utils/logger/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wifiCallback onAvailable mLinkProp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/rcse/MtkSipTransport$2;->this$0:Lcom/mediatek/ims/rcse/MtkSipTransport;

    invoke-static {v2}, Lcom/mediatek/ims/rcse/MtkSipTransport;->access$200(Lcom/mediatek/ims/rcse/MtkSipTransport;)Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport$2;->this$0:Lcom/mediatek/ims/rcse/MtkSipTransport;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/MtkSipTransport;->access$200(Lcom/mediatek/ims/rcse/MtkSipTransport;)Landroid/net/LinkProperties;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcse/MtkSipTransport;->access$500(Lcom/mediatek/ims/rcse/MtkSipTransport;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcse/MtkSipTransport;->access$402(Lcom/mediatek/ims/rcse/MtkSipTransport;Ljava/lang/String;)Ljava/lang/String;

    .line 258
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport$2;->this$0:Lcom/mediatek/ims/rcse/MtkSipTransport;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/MtkSipTransport;->access$000(Lcom/mediatek/ims/rcse/MtkSipTransport;)Lcom/mediatek/ims/utils/logger/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wifiCallback onAvailable ipv6localAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/rcse/MtkSipTransport$2;->this$0:Lcom/mediatek/ims/rcse/MtkSipTransport;

    invoke-static {v2}, Lcom/mediatek/ims/rcse/MtkSipTransport;->access$400(Lcom/mediatek/ims/rcse/MtkSipTransport;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport$2;->this$0:Lcom/mediatek/ims/rcse/MtkSipTransport;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/MtkSipTransport;->access$200(Lcom/mediatek/ims/rcse/MtkSipTransport;)Landroid/net/LinkProperties;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcse/MtkSipTransport;->access$700(Lcom/mediatek/ims/rcse/MtkSipTransport;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcse/MtkSipTransport;->access$602(Lcom/mediatek/ims/rcse/MtkSipTransport;Ljava/lang/String;)Ljava/lang/String;

    .line 260
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport$2;->this$0:Lcom/mediatek/ims/rcse/MtkSipTransport;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/MtkSipTransport;->access$000(Lcom/mediatek/ims/rcse/MtkSipTransport;)Lcom/mediatek/ims/utils/logger/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wifiCallback onAvailable ipv4localAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/rcse/MtkSipTransport$2;->this$0:Lcom/mediatek/ims/rcse/MtkSipTransport;

    invoke-static {v2}, Lcom/mediatek/ims/rcse/MtkSipTransport;->access$600(Lcom/mediatek/ims/rcse/MtkSipTransport;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .line 265
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 266
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport$2;->this$0:Lcom/mediatek/ims/rcse/MtkSipTransport;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/MtkSipTransport;->access$000(Lcom/mediatek/ims/rcse/MtkSipTransport;)Lcom/mediatek/ims/utils/logger/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wifiCallback onLost is called: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 267
    return-void
.end method

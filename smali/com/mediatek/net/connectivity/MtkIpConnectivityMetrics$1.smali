.class Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics$1;
.super Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$PacketCallback;
.source "MtkIpConnectivityMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics;


# direct methods
.method constructor <init>(Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics;

    .line 57
    iput-object p1, p0, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics$1;->this$0:Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics;

    invoke-direct {p0}, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$PacketCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPacketEvent(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPacketEvent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[MDC]MtkIpConnectivityMetrics"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics$1;->this$0:Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics;

    iget-object v0, v0, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics;->mImpl:Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics$Impl;

    # invokes: Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics$Impl;->onCtaConnectEvent(I)V
    invoke-static {v0, p1}, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics$Impl;->access$000(Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics$Impl;I)V

    .line 62
    return-void
.end method

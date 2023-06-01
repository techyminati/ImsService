.class public final Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics;
.super Ljava/lang/Object;
.source "MtkIpConnectivityMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics$Impl;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final FEATURE_SUPPORTED:Z = true

.field private static final TAG:Ljava/lang/String; = "[MDC]MtkIpConnectivityMetrics"


# instance fields
.field private mContext:Landroid/content/Context;

.field public mImpl:Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics$Impl;

.field private mMtkPacketMonitor:Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "[MDC]MtkIpConnectivityMetrics"

    const-string v1, "MtkIpConnectivityMetrics is created:true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iput-object p1, p0, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics;->mContext:Landroid/content/Context;

    .line 55
    new-instance v0, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics$Impl;

    iget-object v1, p0, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics$Impl;-><init>(Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics;->mImpl:Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics$Impl;

    .line 56
    new-instance v0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;

    invoke-direct {v0}, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;-><init>()V

    iput-object v0, p0, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics;->mMtkPacketMonitor:Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;

    .line 57
    new-instance v0, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics$1;

    invoke-direct {v0, p0}, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics$1;-><init>(Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics;)V

    .line 64
    .local v0, "packetCallback":Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$PacketCallback;
    iget-object v1, p0, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics;->mMtkPacketMonitor:Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;

    invoke-virtual {v1, v0}, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->setPacketCallback(Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$PacketCallback;)V

    .line 66
    .end local v0    # "packetCallback":Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$PacketCallback;
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics;)Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics;

    .line 39
    iget-object v0, p0, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics;->mMtkPacketMonitor:Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;

    return-object v0
.end method


# virtual methods
.method public getMtkIpConnSrv()Landroid/os/IBinder;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics;->mImpl:Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics$Impl;

    return-object v0
.end method

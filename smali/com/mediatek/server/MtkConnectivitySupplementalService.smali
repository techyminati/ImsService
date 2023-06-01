.class public Lcom/mediatek/server/MtkConnectivitySupplementalService;
.super Lcom/android/server/SystemService;
.source "MtkConnectivitySupplementalService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtkConnectivitySupplementalService"


# instance fields
.field private mNetworkConstroller:Landroid/os/IBinder;

.field private final mTestSimHandler:Lcom/mediatek/net/networkstats/MtkTestSimHandler;

.field private final mTethering:Lcom/mediatek/net/tethering/TestModeTethering;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 19
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Lcom/mediatek/net/tethering/TestModeTethering;

    invoke-direct {v0, p1}, Lcom/mediatek/net/tethering/TestModeTethering;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/server/MtkConnectivitySupplementalService;->mTethering:Lcom/mediatek/net/tethering/TestModeTethering;

    .line 21
    new-instance v0, Lcom/mediatek/net/networkstats/MtkTestSimHandler;

    invoke-direct {v0, p1}, Lcom/mediatek/net/networkstats/MtkTestSimHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/server/MtkConnectivitySupplementalService;->mTestSimHandler:Lcom/mediatek/net/networkstats/MtkTestSimHandler;

    .line 22
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 5
    .param p1, "phase"    # I

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBootPhase: phase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkConnectivitySupplementalService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_40

    .line 33
    iget-object v0, p0, Lcom/mediatek/server/MtkConnectivitySupplementalService;->mTethering:Lcom/mediatek/net/tethering/TestModeTethering;

    invoke-virtual {v0}, Lcom/mediatek/net/tethering/TestModeTethering;->initialize()V

    .line 35
    const-string v0, "initialize mtkconnmetrics."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v0, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics;

    .line 37
    invoke-virtual {p0}, Lcom/mediatek/server/MtkConnectivitySupplementalService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics;-><init>(Landroid/content/Context;)V

    .line 38
    .local v0, "ipConnectivityMetrics":Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics;
    invoke-virtual {v0}, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics;->getMtkIpConnSrv()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/server/MtkConnectivitySupplementalService;->mNetworkConstroller:Landroid/os/IBinder;

    .line 39
    if-eqz v2, :cond_3b

    .line 40
    const-string v1, "mtkconnmetrics"

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/server/MtkConnectivitySupplementalService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_40

    .line 42
    :cond_3b
    const-string v2, "initialize mtkconnmetrics error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .end local v0    # "ipConnectivityMetrics":Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics;
    :cond_40
    :goto_40
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 26
    const-string v0, "MtkConnectivitySupplementalService"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void
.end method

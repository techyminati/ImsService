.class public Lcom/mediatek/net/networkstats/MtkTestSimHandler;
.super Ljava/lang/Object;
.source "MtkTestSimHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/net/networkstats/MtkTestSimHandler$InternalHandler;
    }
.end annotation


# static fields
.field private static final SUBSCRIPTION_OR_SIM_CHANGED:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEmGlobalAlert:J

.field private mHandler:Lcom/mediatek/net/networkstats/MtkTestSimHandler$InternalHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mNetworkStatsInternal:Lcom/android/server/net/NetworkStatsManagerInternal;

.field private final mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    const-class v0, Lcom/mediatek/net/networkstats/MtkTestSimHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/net/networkstats/MtkTestSimHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-wide/32 v0, 0x200000

    iput-wide v0, p0, Lcom/mediatek/net/networkstats/MtkTestSimHandler;->mEmGlobalAlert:J

    .line 92
    new-instance v0, Lcom/mediatek/net/networkstats/MtkTestSimHandler$1;

    invoke-direct {v0, p0}, Lcom/mediatek/net/networkstats/MtkTestSimHandler$1;-><init>(Lcom/mediatek/net/networkstats/MtkTestSimHandler;)V

    iput-object v0, p0, Lcom/mediatek/net/networkstats/MtkTestSimHandler;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 35
    sget-object v0, Lcom/mediatek/net/networkstats/MtkTestSimHandler;->TAG:Ljava/lang/String;

    const-string v1, "MtkTestSimHandler setting up"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iput-object p1, p0, Lcom/mediatek/net/networkstats/MtkTestSimHandler;->mContext:Landroid/content/Context;

    .line 37
    const-class v1, Lcom/android/server/net/NetworkStatsManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkStatsManagerInternal;

    iput-object v1, p0, Lcom/mediatek/net/networkstats/MtkTestSimHandler;->mNetworkStatsInternal:Lcom/android/server/net/NetworkStatsManagerInternal;

    .line 38
    if-nez v1, :cond_2a

    .line 39
    const-string v1, "No NetworkStatsManagerInternal, MtkNetworkStatsService set up fail !!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void

    .line 42
    :cond_2a
    invoke-direct {p0, p1}, Lcom/mediatek/net/networkstats/MtkTestSimHandler;->initDataUsageIntent(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/net/networkstats/MtkTestSimHandler;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/net/networkstats/MtkTestSimHandler;

    .line 23
    invoke-direct {p0}, Lcom/mediatek/net/networkstats/MtkTestSimHandler;->handleSimChange()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/net/networkstats/MtkTestSimHandler;)Lcom/mediatek/net/networkstats/MtkTestSimHandler$InternalHandler;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/net/networkstats/MtkTestSimHandler;

    .line 23
    iget-object v0, p0, Lcom/mediatek/net/networkstats/MtkTestSimHandler;->mHandler:Lcom/mediatek/net/networkstats/MtkTestSimHandler$InternalHandler;

    return-object v0
.end method

.method private handleSimChange()V
    .registers 10

    .line 72
    invoke-static {}, Lcom/mediatek/net/networkstats/MtkTestSimHandler;->isTestSim()Z

    move-result v0

    .line 73
    .local v0, "isTestSim":Z
    iget-object v1, p0, Lcom/mediatek/net/networkstats/MtkTestSimHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "netstats_global_alert_bytes"

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/mediatek/net/networkstats/MtkTestSimHandler;->mEmGlobalAlert:J

    .line 75
    const-wide v5, 0x20c49ba5e353f7L

    const-wide/high16 v7, 0x8000000000000L

    if-eqz v0, :cond_37

    .line 76
    cmp-long v1, v3, v7

    if-eqz v1, :cond_53

    .line 77
    iget-object v1, p0, Lcom/mediatek/net/networkstats/MtkTestSimHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v7, v8}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 79
    iget-object v1, p0, Lcom/mediatek/net/networkstats/MtkTestSimHandler;->mNetworkStatsInternal:Lcom/android/server/net/NetworkStatsManagerInternal;

    invoke-virtual {v1, v5, v6}, Lcom/android/server/net/NetworkStatsManagerInternal;->advisePersistThreshold(J)V

    .line 80
    sget-object v1, Lcom/mediatek/net/networkstats/MtkTestSimHandler;->TAG:Ljava/lang/String;

    const-string v2, "Configure for test sim with 2TB"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 83
    :cond_37
    cmp-long v1, v3, v7

    if-nez v1, :cond_53

    .line 84
    iget-object v1, p0, Lcom/mediatek/net/networkstats/MtkTestSimHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-wide/32 v3, 0x200000

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 86
    iget-object v1, p0, Lcom/mediatek/net/networkstats/MtkTestSimHandler;->mNetworkStatsInternal:Lcom/android/server/net/NetworkStatsManagerInternal;

    invoke-virtual {v1, v5, v6}, Lcom/android/server/net/NetworkStatsManagerInternal;->advisePersistThreshold(J)V

    .line 87
    sget-object v1, Lcom/mediatek/net/networkstats/MtkTestSimHandler;->TAG:Ljava/lang/String;

    const-string v2, "Restore for test sim with 2MB"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_53
    :goto_53
    return-void
.end method

.method private initDataUsageIntent(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MtkTestSimInternalHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/net/networkstats/MtkTestSimHandler;->mHandlerThread:Landroid/os/HandlerThread;

    .line 47
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 48
    new-instance v0, Lcom/mediatek/net/networkstats/MtkTestSimHandler$InternalHandler;

    iget-object v1, p0, Lcom/mediatek/net/networkstats/MtkTestSimHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/net/networkstats/MtkTestSimHandler$InternalHandler;-><init>(Lcom/mediatek/net/networkstats/MtkTestSimHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/net/networkstats/MtkTestSimHandler;->mHandler:Lcom/mediatek/net/networkstats/MtkTestSimHandler$InternalHandler;

    .line 50
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/net/networkstats/MtkTestSimHandler;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 51
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 52
    return-void
.end method

.method public static isTestSim()Z
    .registers 3

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "isTestSim":Z
    const-string v1, "vendor.gsm.sim.ril.testsim"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 103
    const-string v1, "vendor.gsm.sim.ril.testsim.2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 104
    const-string v1, "vendor.gsm.sim.ril.testsim.3"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 105
    const-string v1, "vendor.gsm.sim.ril.testsim.4"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    goto :goto_36

    :cond_34
    const/4 v1, 0x0

    goto :goto_37

    :cond_36
    :goto_36
    const/4 v1, 0x1

    :goto_37
    move v0, v1

    .line 106
    return v0
.end method

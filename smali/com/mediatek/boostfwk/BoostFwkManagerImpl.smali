.class public final Lcom/mediatek/boostfwk/BoostFwkManagerImpl;
.super Lcom/mediatek/boostfwk/BoostFwkManager;
.source "BoostFwkManagerImpl.java"


# static fields
.field private static sBoostDispatcher:Lcom/mediatek/boostfwk/BoostModuleDispatcher;

.field private static sInstance:Lcom/mediatek/boostfwk/BoostFwkManagerImpl;

.field private static sLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/boostfwk/BoostFwkManagerImpl;->sInstance:Lcom/mediatek/boostfwk/BoostFwkManagerImpl;

    .line 49
    invoke-static {}, Lcom/mediatek/boostfwk/BoostModuleDispatcher;->getInstance()Lcom/mediatek/boostfwk/BoostModuleDispatcher;

    move-result-object v0

    sput-object v0, Lcom/mediatek/boostfwk/BoostFwkManagerImpl;->sBoostDispatcher:Lcom/mediatek/boostfwk/BoostModuleDispatcher;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/boostfwk/BoostFwkManagerImpl;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Lcom/mediatek/boostfwk/BoostFwkManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/mediatek/boostfwk/BoostFwkManagerImpl;
    .registers 2

    .line 53
    sget-object v0, Lcom/mediatek/boostfwk/BoostFwkManagerImpl;->sInstance:Lcom/mediatek/boostfwk/BoostFwkManagerImpl;

    if-nez v0, :cond_17

    .line 54
    sget-object v0, Lcom/mediatek/boostfwk/BoostFwkManagerImpl;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 55
    :try_start_7
    sget-object v1, Lcom/mediatek/boostfwk/BoostFwkManagerImpl;->sInstance:Lcom/mediatek/boostfwk/BoostFwkManagerImpl;

    if-nez v1, :cond_12

    .line 56
    new-instance v1, Lcom/mediatek/boostfwk/BoostFwkManagerImpl;

    invoke-direct {v1}, Lcom/mediatek/boostfwk/BoostFwkManagerImpl;-><init>()V

    sput-object v1, Lcom/mediatek/boostfwk/BoostFwkManagerImpl;->sInstance:Lcom/mediatek/boostfwk/BoostFwkManagerImpl;

    .line 58
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 60
    :cond_17
    :goto_17
    sget-object v0, Lcom/mediatek/boostfwk/BoostFwkManagerImpl;->sInstance:Lcom/mediatek/boostfwk/BoostFwkManagerImpl;

    return-object v0
.end method


# virtual methods
.method public perfHint(Lcom/mediatek/boostfwk/scenario/BasicScenario;)V
    .registers 3
    .param p1, "scenario"    # Lcom/mediatek/boostfwk/scenario/BasicScenario;

    .line 66
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->disableSBE()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 67
    return-void

    .line 69
    :cond_7
    sget-object v0, Lcom/mediatek/boostfwk/BoostFwkManagerImpl;->sBoostDispatcher:Lcom/mediatek/boostfwk/BoostModuleDispatcher;

    invoke-virtual {v0, p1}, Lcom/mediatek/boostfwk/BoostModuleDispatcher;->scenarioActionDispatcher(Lcom/mediatek/boostfwk/scenario/BasicScenario;)V

    .line 70
    return-void
.end method

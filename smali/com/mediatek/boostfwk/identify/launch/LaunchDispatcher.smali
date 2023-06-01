.class public Lcom/mediatek/boostfwk/identify/launch/LaunchDispatcher;
.super Ljava/lang/Object;
.source "LaunchDispatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LaunchDispatcher"

.field private static sInstance:Lcom/mediatek/boostfwk/identify/launch/LaunchDispatcher;

.field private static sLaunchScenario:Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;

.field private static sLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/boostfwk/identify/launch/LaunchDispatcher;->sInstance:Lcom/mediatek/boostfwk/identify/launch/LaunchDispatcher;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/boostfwk/identify/launch/LaunchDispatcher;->sLock:Ljava/lang/Object;

    .line 46
    invoke-static {}, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->getInstance()Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;

    move-result-object v0

    sput-object v0, Lcom/mediatek/boostfwk/identify/launch/LaunchDispatcher;->sLaunchScenario:Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/mediatek/boostfwk/identify/launch/LaunchDispatcher;
    .registers 2

    .line 49
    sget-object v0, Lcom/mediatek/boostfwk/identify/launch/LaunchDispatcher;->sInstance:Lcom/mediatek/boostfwk/identify/launch/LaunchDispatcher;

    if-nez v0, :cond_17

    .line 50
    sget-object v0, Lcom/mediatek/boostfwk/identify/launch/LaunchDispatcher;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 51
    :try_start_7
    sget-object v1, Lcom/mediatek/boostfwk/identify/launch/LaunchDispatcher;->sInstance:Lcom/mediatek/boostfwk/identify/launch/LaunchDispatcher;

    if-nez v1, :cond_12

    .line 52
    new-instance v1, Lcom/mediatek/boostfwk/identify/launch/LaunchDispatcher;

    invoke-direct {v1}, Lcom/mediatek/boostfwk/identify/launch/LaunchDispatcher;-><init>()V

    sput-object v1, Lcom/mediatek/boostfwk/identify/launch/LaunchDispatcher;->sInstance:Lcom/mediatek/boostfwk/identify/launch/LaunchDispatcher;

    .line 54
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 56
    :cond_17
    :goto_17
    sget-object v0, Lcom/mediatek/boostfwk/identify/launch/LaunchDispatcher;->sInstance:Lcom/mediatek/boostfwk/identify/launch/LaunchDispatcher;

    return-object v0
.end method


# virtual methods
.method public scenarioActionDispatcher(Lcom/mediatek/boostfwk/scenario/launch/LaunchScenario;)V
    .registers 4
    .param p1, "scenario"    # Lcom/mediatek/boostfwk/scenario/launch/LaunchScenario;

    .line 65
    if-nez p1, :cond_a

    .line 66
    const-string v0, "LaunchDispatcher"

    const-string v1, "No launch scenario to dispatcher."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void

    .line 70
    :cond_a
    instance-of v0, p1, Lcom/mediatek/boostfwk/scenario/launch/LaunchScenario;

    if-eqz v0, :cond_13

    .line 71
    sget-object v0, Lcom/mediatek/boostfwk/identify/launch/LaunchDispatcher;->sLaunchScenario:Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;

    invoke-virtual {v0, p1}, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->launchActionsDispatcher(Lcom/mediatek/boostfwk/scenario/launch/LaunchScenario;)V

    .line 73
    :cond_13
    return-void
.end method

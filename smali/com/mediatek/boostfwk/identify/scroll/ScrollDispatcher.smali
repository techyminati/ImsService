.class public Lcom/mediatek/boostfwk/identify/scroll/ScrollDispatcher;
.super Ljava/lang/Object;
.source "ScrollDispatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScrollDispatcher"

.field private static sInstance:Lcom/mediatek/boostfwk/identify/scroll/ScrollDispatcher;

.field private static sLock:Ljava/lang/Object;

.field private static sScrollScenario:Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/boostfwk/identify/scroll/ScrollDispatcher;->sInstance:Lcom/mediatek/boostfwk/identify/scroll/ScrollDispatcher;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/boostfwk/identify/scroll/ScrollDispatcher;->sLock:Ljava/lang/Object;

    .line 46
    invoke-static {}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->getInstance()Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;

    move-result-object v0

    sput-object v0, Lcom/mediatek/boostfwk/identify/scroll/ScrollDispatcher;->sScrollScenario:Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/mediatek/boostfwk/identify/scroll/ScrollDispatcher;
    .registers 2

    .line 49
    sget-object v0, Lcom/mediatek/boostfwk/identify/scroll/ScrollDispatcher;->sInstance:Lcom/mediatek/boostfwk/identify/scroll/ScrollDispatcher;

    if-nez v0, :cond_17

    .line 50
    sget-object v0, Lcom/mediatek/boostfwk/identify/scroll/ScrollDispatcher;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 51
    :try_start_7
    sget-object v1, Lcom/mediatek/boostfwk/identify/scroll/ScrollDispatcher;->sInstance:Lcom/mediatek/boostfwk/identify/scroll/ScrollDispatcher;

    if-nez v1, :cond_12

    .line 52
    new-instance v1, Lcom/mediatek/boostfwk/identify/scroll/ScrollDispatcher;

    invoke-direct {v1}, Lcom/mediatek/boostfwk/identify/scroll/ScrollDispatcher;-><init>()V

    sput-object v1, Lcom/mediatek/boostfwk/identify/scroll/ScrollDispatcher;->sInstance:Lcom/mediatek/boostfwk/identify/scroll/ScrollDispatcher;

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
    sget-object v0, Lcom/mediatek/boostfwk/identify/scroll/ScrollDispatcher;->sInstance:Lcom/mediatek/boostfwk/identify/scroll/ScrollDispatcher;

    return-object v0
.end method


# virtual methods
.method public scenarioActionDispatcher(Lcom/mediatek/boostfwk/scenario/scroll/ScrollScenario;)V
    .registers 4
    .param p1, "scenario"    # Lcom/mediatek/boostfwk/scenario/scroll/ScrollScenario;

    .line 65
    if-nez p1, :cond_a

    .line 66
    const-string v0, "ScrollDispatcher"

    const-string v1, "No view scenario to dispatcher."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void

    .line 70
    :cond_a
    instance-of v0, p1, Lcom/mediatek/boostfwk/scenario/scroll/ScrollScenario;

    if-eqz v0, :cond_13

    .line 71
    sget-object v0, Lcom/mediatek/boostfwk/identify/scroll/ScrollDispatcher;->sScrollScenario:Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;

    invoke-virtual {v0, p1}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->scrollActionsDispatcher(Lcom/mediatek/boostfwk/scenario/scroll/ScrollScenario;)V

    .line 73
    :cond_13
    return-void
.end method

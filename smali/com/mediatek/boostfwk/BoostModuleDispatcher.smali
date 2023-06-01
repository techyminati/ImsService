.class public final Lcom/mediatek/boostfwk/BoostModuleDispatcher;
.super Ljava/lang/Object;
.source "BoostModuleDispatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BoostModuleDispatcher"

.field private static sFrameDispatcher:Lcom/mediatek/boostfwk/identify/frame/FrameDispatcher;

.field private static sInstance:Lcom/mediatek/boostfwk/BoostModuleDispatcher;

.field private static sLaunchDispatcher:Lcom/mediatek/boostfwk/identify/launch/LaunchDispatcher;

.field private static sLock:Ljava/lang/Object;

.field private static sScrollDispatcher:Lcom/mediatek/boostfwk/identify/scroll/ScrollDispatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/boostfwk/BoostModuleDispatcher;->sInstance:Lcom/mediatek/boostfwk/BoostModuleDispatcher;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/boostfwk/BoostModuleDispatcher;->sLock:Ljava/lang/Object;

    .line 60
    invoke-static {}, Lcom/mediatek/boostfwk/identify/scroll/ScrollDispatcher;->getInstance()Lcom/mediatek/boostfwk/identify/scroll/ScrollDispatcher;

    move-result-object v0

    sput-object v0, Lcom/mediatek/boostfwk/BoostModuleDispatcher;->sScrollDispatcher:Lcom/mediatek/boostfwk/identify/scroll/ScrollDispatcher;

    .line 61
    invoke-static {}, Lcom/mediatek/boostfwk/identify/launch/LaunchDispatcher;->getInstance()Lcom/mediatek/boostfwk/identify/launch/LaunchDispatcher;

    move-result-object v0

    sput-object v0, Lcom/mediatek/boostfwk/BoostModuleDispatcher;->sLaunchDispatcher:Lcom/mediatek/boostfwk/identify/launch/LaunchDispatcher;

    .line 62
    invoke-static {}, Lcom/mediatek/boostfwk/identify/frame/FrameDispatcher;->getInstance()Lcom/mediatek/boostfwk/identify/frame/FrameDispatcher;

    move-result-object v0

    sput-object v0, Lcom/mediatek/boostfwk/BoostModuleDispatcher;->sFrameDispatcher:Lcom/mediatek/boostfwk/identify/frame/FrameDispatcher;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/mediatek/boostfwk/BoostModuleDispatcher;
    .registers 2

    .line 65
    sget-object v0, Lcom/mediatek/boostfwk/BoostModuleDispatcher;->sInstance:Lcom/mediatek/boostfwk/BoostModuleDispatcher;

    if-nez v0, :cond_17

    .line 66
    sget-object v0, Lcom/mediatek/boostfwk/BoostModuleDispatcher;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_7
    sget-object v1, Lcom/mediatek/boostfwk/BoostModuleDispatcher;->sInstance:Lcom/mediatek/boostfwk/BoostModuleDispatcher;

    if-nez v1, :cond_12

    .line 68
    new-instance v1, Lcom/mediatek/boostfwk/BoostModuleDispatcher;

    invoke-direct {v1}, Lcom/mediatek/boostfwk/BoostModuleDispatcher;-><init>()V

    sput-object v1, Lcom/mediatek/boostfwk/BoostModuleDispatcher;->sInstance:Lcom/mediatek/boostfwk/BoostModuleDispatcher;

    .line 70
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 72
    :cond_17
    :goto_17
    sget-object v0, Lcom/mediatek/boostfwk/BoostModuleDispatcher;->sInstance:Lcom/mediatek/boostfwk/BoostModuleDispatcher;

    return-object v0
.end method


# virtual methods
.method public scenarioActionDispatcher(Lcom/mediatek/boostfwk/scenario/BasicScenario;)V
    .registers 5
    .param p1, "scenario"    # Lcom/mediatek/boostfwk/scenario/BasicScenario;

    .line 76
    const-string v0, "BoostModuleDispatcher"

    if-nez p1, :cond_a

    .line 77
    const-string v1, "No scenario to dispatcher."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void

    .line 80
    :cond_a
    invoke-virtual {p1}, Lcom/mediatek/boostfwk/scenario/BasicScenario;->getScenario()I

    move-result v1

    .line 81
    .local v1, "scenarioId":I
    packed-switch v1, :pswitch_data_3e

    .line 96
    const-string v2, "Not found dispatcher scenario."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 88
    :pswitch_17
    sget-object v0, Lcom/mediatek/boostfwk/BoostModuleDispatcher;->sLaunchDispatcher:Lcom/mediatek/boostfwk/identify/launch/LaunchDispatcher;

    move-object v2, p1

    check-cast v2, Lcom/mediatek/boostfwk/scenario/launch/LaunchScenario;

    invoke-virtual {v0, v2}, Lcom/mediatek/boostfwk/identify/launch/LaunchDispatcher;->scenarioActionDispatcher(Lcom/mediatek/boostfwk/scenario/launch/LaunchScenario;)V

    .line 89
    goto :goto_3d

    .line 91
    :pswitch_20
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Util;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 92
    sget-object v0, Lcom/mediatek/boostfwk/BoostModuleDispatcher;->sFrameDispatcher:Lcom/mediatek/boostfwk/identify/frame/FrameDispatcher;

    move-object v2, p1

    check-cast v2, Lcom/mediatek/boostfwk/scenario/frame/FrameScenario;

    invoke-virtual {v0, v2}, Lcom/mediatek/boostfwk/identify/frame/FrameDispatcher;->scenarioActionDispatcher(Lcom/mediatek/boostfwk/scenario/frame/FrameScenario;)V

    goto :goto_3d

    .line 83
    :pswitch_2f
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Util;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 84
    sget-object v0, Lcom/mediatek/boostfwk/BoostModuleDispatcher;->sScrollDispatcher:Lcom/mediatek/boostfwk/identify/scroll/ScrollDispatcher;

    move-object v2, p1

    check-cast v2, Lcom/mediatek/boostfwk/scenario/scroll/ScrollScenario;

    invoke-virtual {v0, v2}, Lcom/mediatek/boostfwk/identify/scroll/ScrollDispatcher;->scenarioActionDispatcher(Lcom/mediatek/boostfwk/scenario/scroll/ScrollScenario;)V

    .line 99
    :cond_3d
    :goto_3d
    return-void

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_20
        :pswitch_17
    .end packed-switch
.end method

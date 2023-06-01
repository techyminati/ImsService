.class public Lcom/mediatek/boostfwk/identify/frame/FrameIdentify;
.super Ljava/lang/Object;
.source "FrameIdentify.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FrameIdentify"

.field private static mFrameIntervalMs:J

.field private static mIsDoframeCheck:Z

.field private static mLimitVsyncTime:J

.field private static mRefreshRate:F

.field private static sInstance:Lcom/mediatek/boostfwk/identify/frame/FrameIdentify;

.field private static slock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/boostfwk/identify/frame/FrameIdentify;->sInstance:Lcom/mediatek/boostfwk/identify/frame/FrameIdentify;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/boostfwk/identify/frame/FrameIdentify;->slock:Ljava/lang/Object;

    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/boostfwk/identify/frame/FrameIdentify;->mIsDoframeCheck:Z

    .line 57
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/boostfwk/identify/frame/FrameIdentify;->mRefreshRate:F

    .line 58
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/mediatek/boostfwk/identify/frame/FrameIdentify;->mFrameIntervalMs:J

    .line 59
    sput-wide v0, Lcom/mediatek/boostfwk/identify/frame/FrameIdentify;->mLimitVsyncTime:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method private boostBeginEndCheck(I)Z
    .registers 5
    .param p1, "status"    # I

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "isBegin":Z
    packed-switch p1, :pswitch_data_12

    .line 163
    const-string v1, "FrameIdentify"

    const-string v2, "Unknown define action inputed, exit now."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 160
    :pswitch_c
    const/4 v0, 0x0

    .line 161
    goto :goto_10

    .line 157
    :pswitch_e
    const/4 v0, 0x1

    .line 158
    nop

    .line 166
    :goto_10
    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_c
    .end packed-switch
.end method

.method private doFrameInit()Z
    .registers 4

    .line 139
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Util;->getRefreshRate()F

    move-result v0

    sput v0, Lcom/mediatek/boostfwk/identify/frame/FrameIdentify;->mRefreshRate:F

    .line 140
    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v1, v0

    float-to-long v0, v1

    sput-wide v0, Lcom/mediatek/boostfwk/identify/frame/FrameIdentify;->mFrameIntervalMs:J

    .line 141
    invoke-static {}, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->getInstance()Lcom/mediatek/boostfwk/policy/frame/FramePolicy;

    move-result-object v0

    sget-wide v1, Lcom/mediatek/boostfwk/identify/frame/FrameIdentify;->mFrameIntervalMs:J

    long-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->initLimitTime(F)Z

    move-result v0

    return v0
.end method

.method private frameCheck(IJ)V
    .registers 6
    .param p1, "status"    # I
    .param p2, "frameId"    # J

    .line 117
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-eq v0, v1, :cond_b

    .line 118
    return-void

    .line 122
    :cond_b
    invoke-direct {p0}, Lcom/mediatek/boostfwk/identify/frame/FrameIdentify;->doFrameInit()Z

    move-result v0

    if-nez v0, :cond_12

    .line 123
    return-void

    .line 126
    :cond_12
    invoke-direct {p0, p1}, Lcom/mediatek/boostfwk/identify/frame/FrameIdentify;->boostBeginEndCheck(I)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/boostfwk/identify/frame/FrameIdentify;->mIsDoframeCheck:Z

    .line 127
    invoke-static {}, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->getInstance()Lcom/mediatek/boostfwk/policy/frame/FramePolicy;

    move-result-object v0

    sget-boolean v1, Lcom/mediatek/boostfwk/identify/frame/FrameIdentify;->mIsDoframeCheck:Z

    invoke-virtual {v0, v1, p2, p3}, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->doFrameHint(ZJ)V

    .line 128
    return-void
.end method

.method private frameStepCheck(II)V
    .registers 5
    .param p1, "status"    # I
    .param p2, "step"    # I

    .line 131
    invoke-direct {p0}, Lcom/mediatek/boostfwk/identify/frame/FrameIdentify;->isBeginFrameAction()Z

    move-result v0

    if-nez v0, :cond_7

    .line 132
    return-void

    .line 135
    :cond_7
    invoke-static {}, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->getInstance()Lcom/mediatek/boostfwk/policy/frame/FramePolicy;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/mediatek/boostfwk/identify/frame/FrameIdentify;->boostBeginEndCheck(I)Z

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->doFrameStepHint(ZI)V

    .line 136
    return-void
.end method

.method public static getInstance()Lcom/mediatek/boostfwk/identify/frame/FrameIdentify;
    .registers 2

    .line 62
    sget-object v0, Lcom/mediatek/boostfwk/identify/frame/FrameIdentify;->sInstance:Lcom/mediatek/boostfwk/identify/frame/FrameIdentify;

    if-nez v0, :cond_17

    .line 63
    sget-object v0, Lcom/mediatek/boostfwk/identify/frame/FrameIdentify;->slock:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_7
    sget-object v1, Lcom/mediatek/boostfwk/identify/frame/FrameIdentify;->sInstance:Lcom/mediatek/boostfwk/identify/frame/FrameIdentify;

    if-nez v1, :cond_12

    .line 65
    new-instance v1, Lcom/mediatek/boostfwk/identify/frame/FrameIdentify;

    invoke-direct {v1}, Lcom/mediatek/boostfwk/identify/frame/FrameIdentify;-><init>()V

    sput-object v1, Lcom/mediatek/boostfwk/identify/frame/FrameIdentify;->sInstance:Lcom/mediatek/boostfwk/identify/frame/FrameIdentify;

    .line 67
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 69
    :cond_17
    :goto_17
    sget-object v0, Lcom/mediatek/boostfwk/identify/frame/FrameIdentify;->sInstance:Lcom/mediatek/boostfwk/identify/frame/FrameIdentify;

    return-object v0
.end method

.method private isBeginFrameAction()Z
    .registers 2

    .line 146
    sget-boolean v0, Lcom/mediatek/boostfwk/identify/frame/FrameIdentify;->mIsDoframeCheck:Z

    if-nez v0, :cond_6

    .line 147
    const/4 v0, 0x0

    return v0

    .line 150
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method private updateRenderThreadTid(I)V
    .registers 3
    .param p1, "renderThreadTid"    # I

    .line 112
    invoke-static {}, Lcom/mediatek/boostfwk/info/ActivityInfo;->getInstance()Lcom/mediatek/boostfwk/info/ActivityInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/boostfwk/info/ActivityInfo;->setRenderThreadTid(I)V

    .line 113
    return-void
.end method


# virtual methods
.method public frameActionsDispatcher(Lcom/mediatek/boostfwk/scenario/frame/FrameScenario;)V
    .registers 8
    .param p1, "scenario"    # Lcom/mediatek/boostfwk/scenario/frame/FrameScenario;

    .line 81
    const-string v0, "FrameIdentify"

    if-nez p1, :cond_a

    .line 82
    const-string v1, "No frame scenario to dispatcher."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void

    .line 85
    :cond_a
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->disableFrameIdentify()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 86
    return-void

    .line 88
    :cond_11
    invoke-virtual {p1}, Lcom/mediatek/boostfwk/scenario/frame/FrameScenario;->getScenarioAction()I

    move-result v1

    .line 89
    .local v1, "action":I
    invoke-virtual {p1}, Lcom/mediatek/boostfwk/scenario/frame/FrameScenario;->getBoostStatus()I

    move-result v2

    .line 90
    .local v2, "status":I
    invoke-virtual {p1}, Lcom/mediatek/boostfwk/scenario/frame/FrameScenario;->getFrameStep()I

    move-result v3

    .line 91
    .local v3, "frameStep":I
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Frame action dispatcher to = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", frame step = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_47
    packed-switch v1, :pswitch_data_66

    .line 106
    const-string v4, "Not found dispatcher frame action."

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    .line 103
    :pswitch_50
    invoke-virtual {p1}, Lcom/mediatek/boostfwk/scenario/frame/FrameScenario;->getRenderThreadTid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mediatek/boostfwk/identify/frame/FrameIdentify;->updateRenderThreadTid(I)V

    .line 104
    goto :goto_64

    .line 100
    :pswitch_58
    invoke-direct {p0, v2, v3}, Lcom/mediatek/boostfwk/identify/frame/FrameIdentify;->frameStepCheck(II)V

    .line 101
    goto :goto_64

    .line 97
    :pswitch_5c
    invoke-virtual {p1}, Lcom/mediatek/boostfwk/scenario/frame/FrameScenario;->getFrameId()J

    move-result-wide v4

    invoke-direct {p0, v2, v4, v5}, Lcom/mediatek/boostfwk/identify/frame/FrameIdentify;->frameCheck(IJ)V

    .line 98
    nop

    .line 109
    :goto_64
    return-void

    nop

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_58
        :pswitch_50
    .end packed-switch
.end method

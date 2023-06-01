.class public Lcom/mediatek/boostfwk/policy/frame/FramePolicy;
.super Ljava/lang/Object;
.source "FramePolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/boostfwk/policy/frame/FramePolicy$WorkerHandler;
    }
.end annotation


# static fields
.field private static final CHECK_POINT:D = 0.5

.field private static final FRAME_STEP_BASIC:I = -0x3e8

.field private static final NON_FRAME_STEP:I = -0x3e8

.field private static final NON_RENDER_THREAD_TID:I = -0x1

.field private static final NO_DRAW_FRAME_VSYNC_RATIO:D = 0.1

.field private static final PERF_RES_FPS_FBT_RESCUE_SBE_RESCUE:I = 0x203ca00

.field private static final PERF_RES_FPS_FPSGO_STOP_BOOST:I = 0x2004200

.field private static final RECEIVE_VSYNC_TO_INPUT:I = -0x3e7

.field private static final TAG:Ljava/lang/String; = "FramePolicy"

.field private static isAnimationStepEnd:Z = false

.field private static isNoDraw:Z = false

.field private static isTranversalDraw:Z = false

.field private static isTraversalStepEnd:Z = false

.field private static mAnimAcquiredLock:Z = false

.field private static mFrameIntervalTime:F = 0.0f

.field private static mFrameStep:I = 0x0

.field private static mIsDoframeCheck:Z = false

.field private static mLimitVsyncTime:F = 0.0f

.field private static final mReleaseFPSDuration:I = 0xbb8

.field private static mTranversalAcquiredLock:Z = false

.field private static sInstance:Lcom/mediatek/boostfwk/policy/frame/FramePolicy; = null

.field private static sLock:Ljava/lang/Object; = null

.field private static final sTHREAD_NAME:Ljava/lang/String; = "FramePolicy"


# instance fields
.field private final SBE_RESUCE_MODE_END:I

.field private final SBE_RESUCE_MODE_START:I

.field private final SBE_RESUCE_MODE_TO_QUEUE_END:I

.field private curFrameRescueMode:I

.field private frameStartTime:J

.field private mFrameId:J

.field private mPowerHalService:Lcom/mediatek/powerhalmgr/PowerHalMgr;

.field private mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

.field private mPowerHandle:I

.field private mRenderThreadTid:I

.field private mWorkerHandler:Lcom/mediatek/boostfwk/policy/frame/FramePolicy$WorkerHandler;

.field private mWorkerThread:Landroid/os/HandlerThread;

.field private underRescue:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->sInstance:Lcom/mediatek/boostfwk/policy/frame/FramePolicy;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->sLock:Ljava/lang/Object;

    .line 90
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mFrameIntervalTime:F

    .line 91
    sput v0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mLimitVsyncTime:F

    .line 92
    const/16 v0, -0x3e8

    sput v0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mFrameStep:I

    .line 93
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->isNoDraw:Z

    .line 94
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mIsDoframeCheck:Z

    .line 95
    sput-boolean v0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mAnimAcquiredLock:Z

    .line 96
    sput-boolean v0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mTranversalAcquiredLock:Z

    .line 97
    sput-boolean v0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->isTranversalDraw:Z

    .line 98
    sput-boolean v0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->isAnimationStepEnd:Z

    .line 99
    sput-boolean v0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->isTraversalStepEnd:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mWorkerThread:Landroid/os/HandlerThread;

    .line 69
    iput-object v0, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mWorkerHandler:Lcom/mediatek/boostfwk/policy/frame/FramePolicy$WorkerHandler;

    .line 83
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->SBE_RESUCE_MODE_END:I

    .line 84
    const/4 v2, 0x1

    iput v2, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->SBE_RESUCE_MODE_START:I

    .line 85
    const/4 v2, 0x2

    iput v2, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->SBE_RESUCE_MODE_TO_QUEUE_END:I

    .line 86
    iput v2, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->curFrameRescueMode:I

    .line 88
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mFrameId:J

    .line 102
    const/4 v4, -0x1

    iput v4, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mRenderThreadTid:I

    .line 104
    iput-object v0, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mPowerHalService:Lcom/mediatek/powerhalmgr/PowerHalMgr;

    .line 105
    iput-object v0, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    .line 106
    iput v1, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mPowerHandle:I

    .line 107
    iput-wide v2, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->frameStartTime:J

    .line 108
    iput-boolean v1, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->underRescue:Z

    .line 162
    invoke-direct {p0}, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->initThread()V

    .line 163
    invoke-static {}, Lcom/mediatek/powerhalmgr/PowerHalMgrFactory;->getInstance()Lcom/mediatek/powerhalmgr/PowerHalMgrFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/powerhalmgr/PowerHalMgrFactory;->makePowerHalMgr()Lcom/mediatek/powerhalmgr/PowerHalMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mPowerHalService:Lcom/mediatek/powerhalmgr/PowerHalMgr;

    .line 164
    invoke-static {}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->getInstance()Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    .line 165
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/boostfwk/policy/frame/FramePolicy;ZJ)V
    .registers 4
    .param p0, "x0"    # Lcom/mediatek/boostfwk/policy/frame/FramePolicy;
    .param p1, "x1"    # Z
    .param p2, "x2"    # J

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->doFrameHintInternel(ZJ)V

    return-void
.end method

.method static synthetic access$100()I
    .registers 1

    .line 62
    sget v0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mFrameStep:I

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/boostfwk/policy/frame/FramePolicy;I)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/boostfwk/policy/frame/FramePolicy;
    .param p1, "x1"    # I

    .line 62
    invoke-direct {p0, p1}, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->doFrameStepHintInternel(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/boostfwk/policy/frame/FramePolicy;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/boostfwk/policy/frame/FramePolicy;
    .param p1, "x1"    # Z

    .line 62
    invoke-direct {p0, p1}, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->frameDraw(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/boostfwk/policy/frame/FramePolicy;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/boostfwk/policy/frame/FramePolicy;

    .line 62
    invoke-direct {p0}, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->traversalRescueChecker()V

    return-void
.end method

.method private doFrameHintInternel(ZJ)V
    .registers 9
    .param p1, "isBegin"    # Z
    .param p2, "frameId"    # J

    .line 262
    const/4 v0, 0x5

    const/4 v1, 0x3

    if-eqz p1, :cond_33

    .line 263
    iput-wide p2, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mFrameId:J

    .line 265
    sget v2, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mLimitVsyncTime:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_53

    .line 266
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 267
    const-string v2, "FramePolicy"

    const-string v3, "scrolling!! try check animation and draw state."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_1a
    iget-object v2, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mWorkerHandler:Lcom/mediatek/boostfwk/policy/frame/FramePolicy$WorkerHandler;

    .line 270
    invoke-virtual {v2, v1}, Lcom/mediatek/boostfwk/policy/frame/FramePolicy$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    sget v3, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mLimitVsyncTime:F

    float-to-long v3, v3

    .line 269
    invoke-virtual {v2, v1, v3, v4}, Lcom/mediatek/boostfwk/policy/frame/FramePolicy$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 273
    iget-object v1, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mWorkerHandler:Lcom/mediatek/boostfwk/policy/frame/FramePolicy$WorkerHandler;

    .line 274
    invoke-virtual {v1, v0}, Lcom/mediatek/boostfwk/policy/frame/FramePolicy$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    sget v2, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mFrameIntervalTime:F

    float-to-long v2, v2

    .line 273
    invoke-virtual {v1, v0, v2, v3}, Lcom/mediatek/boostfwk/policy/frame/FramePolicy$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_53

    .line 278
    :cond_33
    iget-object v2, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mWorkerHandler:Lcom/mediatek/boostfwk/policy/frame/FramePolicy$WorkerHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/mediatek/boostfwk/policy/frame/FramePolicy$WorkerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 279
    iget-object v1, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mWorkerHandler:Lcom/mediatek/boostfwk/policy/frame/FramePolicy$WorkerHandler;

    invoke-virtual {v1, v0, v3}, Lcom/mediatek/boostfwk/policy/frame/FramePolicy$WorkerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 280
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mAnimAcquiredLock:Z

    .line 281
    sput-boolean v0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mTranversalAcquiredLock:Z

    .line 282
    sput-boolean v0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->isTranversalDraw:Z

    .line 283
    sput-boolean v0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->isAnimationStepEnd:Z

    .line 284
    const/16 v1, -0x3e8

    sput v1, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mFrameStep:I

    .line 285
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mFrameId:J

    .line 286
    iput-boolean v0, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->underRescue:Z

    .line 287
    sput-boolean v0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->isTraversalStepEnd:Z

    .line 289
    :cond_53
    :goto_53
    return-void
.end method

.method private doFrameStepHintInternel(I)V
    .registers 7
    .param p1, "step"    # I

    .line 292
    sget-boolean v0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mIsDoframeCheck:Z

    if-nez v0, :cond_9

    const/16 v0, -0x3e8

    if-ne p1, v0, :cond_9

    .line 293
    return-void

    .line 296
    :cond_9
    const-string v0, "FramePolicy"

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_60

    goto :goto_5f

    .line 300
    :sswitch_10
    sget-boolean v2, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->isAnimationStepEnd:Z

    if-nez v2, :cond_2b

    .line 301
    const v2, 0x203ca00

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "animation end, curStep="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->powerHintForRender(ILjava/lang/String;)V

    .line 303
    :cond_2b
    sget-boolean v2, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mAnimAcquiredLock:Z

    if-nez v2, :cond_44

    const/16 v2, -0x3e7

    if-eq p1, v2, :cond_44

    .line 304
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 305
    const-string v2, "input/anim hint drop, enable rescue!"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_3e
    invoke-direct {p0, v1}, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->frameDraw(Z)V

    .line 308
    sput-boolean v1, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mAnimAcquiredLock:Z

    .line 309
    goto :goto_5f

    .line 312
    :cond_44
    :sswitch_44
    sget-boolean v2, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mTranversalAcquiredLock:Z

    if-eqz v2, :cond_5f

    sget-boolean v2, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mAnimAcquiredLock:Z

    if-nez v2, :cond_5f

    .line 313
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 314
    const-string v2, "traversal step, enable rescue!"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_57
    invoke-direct {p0, v1}, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->frameDraw(Z)V

    .line 317
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mTranversalAcquiredLock:Z

    .line 318
    sput-boolean v1, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mAnimAcquiredLock:Z

    .line 324
    :cond_5f
    :goto_5f
    return-void

    :sswitch_data_60
    .sparse-switch
        -0x3e7 -> :sswitch_10
        0x0 -> :sswitch_10
        0x1 -> :sswitch_10
        0x3 -> :sswitch_44
    .end sparse-switch
.end method

.method private drawFrameDelayTime()D
    .registers 8

    .line 390
    sget v0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mFrameIntervalTime:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_a

    .line 391
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0

    .line 393
    :cond_a
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Util;->getRefreshRate()F

    move-result v0

    .line 394
    .local v0, "refreshRate":F
    sget v1, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mFrameIntervalTime:F

    float-to-double v1, v1

    float-to-double v3, v0

    const-wide v5, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v3, v5

    mul-double/2addr v1, v3

    .line 395
    .local v1, "delayCheckTime":D
    return-wide v1
.end method

.method private frameDraw(Z)V
    .registers 8
    .param p1, "isDraw"    # Z

    .line 333
    if-eqz p1, :cond_29

    iget-wide v0, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mFrameId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_29

    .line 334
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "frame clear when rescue. mFrameId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mFrameId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FramePolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_28
    return-void

    .line 340
    :cond_29
    const/4 v0, 0x1

    if-eqz p1, :cond_64

    .line 341
    sget-boolean v1, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->isNoDraw:Z

    if-eqz v1, :cond_57

    .line 342
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v1

    const-wide/16 v2, 0x8

    if-eqz v1, :cond_4e

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Draw, notify FPSGO draw"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mFrameId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 346
    :cond_4e
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 347
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 350
    :cond_57
    iget-object v1, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mWorkerHandler:Lcom/mediatek/boostfwk/policy/frame/FramePolicy$WorkerHandler;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/boostfwk/policy/frame/FramePolicy$WorkerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 351
    const/4 v1, 0x0

    sput-boolean v1, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->isNoDraw:Z

    .line 352
    sput-boolean v0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->isTranversalDraw:Z

    goto :goto_6e

    .line 354
    :cond_64
    const v1, 0x2004200

    const-string v2, "STOP: No draw"

    invoke-direct {p0, v1, v2}, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->powerHintForRender(ILjava/lang/String;)V

    .line 355
    sput-boolean v0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->isNoDraw:Z

    .line 357
    :goto_6e
    return-void
.end method

.method public static getInstance()Lcom/mediatek/boostfwk/policy/frame/FramePolicy;
    .registers 2

    .line 151
    sget-object v0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->sInstance:Lcom/mediatek/boostfwk/policy/frame/FramePolicy;

    if-nez v0, :cond_17

    .line 152
    sget-object v0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_7
    sget-object v1, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->sInstance:Lcom/mediatek/boostfwk/policy/frame/FramePolicy;

    if-nez v1, :cond_12

    .line 154
    new-instance v1, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;

    invoke-direct {v1}, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;-><init>()V

    sput-object v1, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->sInstance:Lcom/mediatek/boostfwk/policy/frame/FramePolicy;

    .line 156
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 158
    :cond_17
    :goto_17
    sget-object v0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->sInstance:Lcom/mediatek/boostfwk/policy/frame/FramePolicy;

    return-object v0
.end method

.method private getRenderThreadTid()I
    .registers 3

    .line 399
    iget v0, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mRenderThreadTid:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 400
    invoke-static {}, Lcom/mediatek/boostfwk/info/ActivityInfo;->getInstance()Lcom/mediatek/boostfwk/info/ActivityInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/boostfwk/info/ActivityInfo;->getRenderThreadTid()I

    move-result v0

    iput v0, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mRenderThreadTid:I

    .line 402
    :cond_f
    iget v0, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mRenderThreadTid:I

    return v0
.end method

.method private initThread()V
    .registers 4

    .line 168
    iget-object v0, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mWorkerThread:Landroid/os/HandlerThread;

    const-string v1, "FramePolicy"

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mWorkerHandler:Lcom/mediatek/boostfwk/policy/frame/FramePolicy$WorkerHandler;

    if-eqz v0, :cond_1c

    .line 170
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 171
    const-string v0, "re-init"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 174
    :cond_1c
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mWorkerThread:Landroid/os/HandlerThread;

    .line 175
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 176
    iget-object v0, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 177
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_3a

    .line 178
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 179
    const-string v2, "Thread looper is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 182
    :cond_3a
    new-instance v1, Lcom/mediatek/boostfwk/policy/frame/FramePolicy$WorkerHandler;

    invoke-direct {v1, p0, v0}, Lcom/mediatek/boostfwk/policy/frame/FramePolicy$WorkerHandler;-><init>(Lcom/mediatek/boostfwk/policy/frame/FramePolicy;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mWorkerHandler:Lcom/mediatek/boostfwk/policy/frame/FramePolicy$WorkerHandler;

    .line 185
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_41
    :goto_41
    return-void
.end method

.method private perfLockAcquire([I)V
    .registers 5
    .param p1, "resList"    # [I

    .line 406
    iget-object v0, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mPowerHalService:Lcom/mediatek/powerhalmgr/PowerHalMgr;

    if-eqz v0, :cond_12

    .line 407
    iget v1, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mPowerHandle:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/mediatek/powerhalmgr/PowerHalMgr;->perfLockAcquire(II[I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mPowerHandle:I

    .line 408
    iget-object v1, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mPowerHalService:Lcom/mediatek/powerhalmgr/PowerHalMgr;

    invoke-virtual {v1, v0}, Lcom/mediatek/powerhalmgr/PowerHalMgr;->perfLockRelease(I)V

    .line 410
    :cond_12
    return-void
.end method

.method private powerHintForRender(ILjava/lang/String;)V
    .registers 9
    .param p1, "cmd"    # I
    .param p2, "tagMsg"    # Ljava/lang/String;

    .line 360
    invoke-direct {p0}, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->getRenderThreadTid()I

    move-result v0

    .line 361
    .local v0, "renderThreadTid":I
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v1

    const-wide/16 v2, 0x8

    if-eqz v1, :cond_28

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hint for ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] render id = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 365
    :cond_28
    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_72

    .line 379
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not surpport for cmd = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "FramePolicy"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67

    .line 367
    :sswitch_49
    iput-boolean v1, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->underRescue:Z

    .line 369
    iget-object v1, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    iget v4, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->curFrameRescueMode:I

    const/16 v5, 0x32

    invoke-virtual {v1, v0, v4, v5}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->mtkNotifySbeRescue(III)V

    .line 372
    goto :goto_67

    .line 374
    :sswitch_55
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput p1, v4, v5

    aput v0, v4, v1

    .line 375
    .local v4, "perf_lock_rsc":[I
    invoke-direct {p0, v4}, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->perfLockAcquire([I)V

    .line 376
    invoke-static {}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->getInstance()Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->disableMTKScrollingPolicy(Z)V

    .line 384
    .end local v4    # "perf_lock_rsc":[I
    :cond_67
    :goto_67
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 385
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 387
    :cond_70
    return-void

    nop

    :sswitch_data_72
    .sparse-switch
        0x2004200 -> :sswitch_55
        0x203ca00 -> :sswitch_49
    .end sparse-switch
.end method

.method private setFrameStep(I)V
    .registers 3
    .param p1, "step"    # I

    .line 256
    sget v0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mFrameStep:I

    if-le p1, v0, :cond_6

    .line 257
    sput p1, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mFrameStep:I

    .line 259
    :cond_6
    return-void
.end method

.method private traversalRescueChecker()V
    .registers 4

    .line 327
    iget-boolean v0, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->underRescue:Z

    if-nez v0, :cond_26

    sget v0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mFrameStep:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_26

    sget-boolean v0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->isTraversalStepEnd:Z

    if-nez v0, :cond_26

    .line 328
    const v0, 0x203ca00

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "traversal over vsync, curStep="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mFrameStep:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->powerHintForRender(ILjava/lang/String;)V

    .line 330
    :cond_26
    return-void
.end method


# virtual methods
.method public doFrameHint(ZJ)V
    .registers 8
    .param p1, "isBegin"    # Z
    .param p2, "frameId"    # J

    .line 207
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vsync is begin = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FramePolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_1c
    sput-boolean p1, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mIsDoframeCheck:Z

    .line 212
    if-eqz p1, :cond_34

    .line 213
    const/16 v0, -0x3e7

    invoke-direct {p0, v0}, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->setFrameStep(I)V

    .line 214
    iget-object v0, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mWorkerHandler:Lcom/mediatek/boostfwk/policy/frame/FramePolicy$WorkerHandler;

    const/4 v1, 0x1

    .line 216
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 215
    invoke-virtual {v0, v1, v2}, Lcom/mediatek/boostfwk/policy/frame/FramePolicy$WorkerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 214
    invoke-virtual {v0, v1}, Lcom/mediatek/boostfwk/policy/frame/FramePolicy$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5a

    .line 218
    :cond_34
    sget-boolean v0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->isNoDraw:Z

    if-nez v0, :cond_4c

    sget-boolean v0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->isTranversalDraw:Z

    if-eqz v0, :cond_4c

    .line 219
    iget-object v0, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mWorkerHandler:Lcom/mediatek/boostfwk/policy/frame/FramePolicy$WorkerHandler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 220
    invoke-virtual {v0, v1, v2}, Lcom/mediatek/boostfwk/policy/frame/FramePolicy$WorkerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 222
    invoke-direct {p0}, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->drawFrameDelayTime()D

    move-result-wide v2

    double-to-long v2, v2

    .line 219
    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/boostfwk/policy/frame/FramePolicy$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 224
    :cond_4c
    iget-object v0, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mWorkerHandler:Lcom/mediatek/boostfwk/policy/frame/FramePolicy$WorkerHandler;

    const/4 v1, 0x2

    .line 226
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 225
    invoke-virtual {v0, v1, v2}, Lcom/mediatek/boostfwk/policy/frame/FramePolicy$WorkerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 224
    invoke-virtual {v0, v1}, Lcom/mediatek/boostfwk/policy/frame/FramePolicy$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 228
    :goto_5a
    return-void
.end method

.method public doFrameStepHint(ZI)V
    .registers 6
    .param p1, "isBegin"    # Z
    .param p2, "step"    # I

    .line 236
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eqz p1, :cond_16

    .line 237
    invoke-direct {p0, p2}, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->setFrameStep(I)V

    .line 238
    if-ne p2, v0, :cond_1e

    .line 239
    sput-boolean v1, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mTranversalAcquiredLock:Z

    .line 240
    iget-object v1, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mWorkerHandler:Lcom/mediatek/boostfwk/policy/frame/FramePolicy$WorkerHandler;

    const/4 v2, 0x0

    .line 241
    invoke-virtual {v1, v0, v2}, Lcom/mediatek/boostfwk/policy/frame/FramePolicy$WorkerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 240
    invoke-virtual {v1, v0}, Lcom/mediatek/boostfwk/policy/frame/FramePolicy$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1e

    .line 245
    :cond_16
    if-ne p2, v1, :cond_1a

    .line 246
    sput-boolean v1, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->isAnimationStepEnd:Z

    .line 248
    :cond_1a
    if-ne p2, v0, :cond_1e

    .line 249
    sput-boolean v1, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->isTraversalStepEnd:Z

    .line 252
    :cond_1e
    :goto_1e
    return-void
.end method

.method public initLimitTime(F)Z
    .registers 7
    .param p1, "frameIntervalTime"    # F

    .line 191
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_15

    sget v1, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mFrameIntervalTime:F

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_15

    .line 192
    sput p1, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mFrameIntervalTime:F

    .line 199
    float-to-double v1, p1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v1, v3

    sub-double/2addr v1, v3

    double-to-float v1, v1

    sput v1, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mLimitVsyncTime:F

    .line 203
    :cond_15
    invoke-static {}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->getInstance()Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->isScroll()Z

    move-result v1

    if-eqz v1, :cond_27

    sget v1, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mFrameIntervalTime:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    return v0
.end method

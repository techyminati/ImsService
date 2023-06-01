.class public Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;
.super Ljava/lang/Object;
.source "ScrollPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;
    }
.end annotation


# static fields
.field private static MTKPOWER_HINT_UX_MOVE_SCROLLING:I = 0x0

.field private static MTKPOWER_HINT_UX_SCROLLING:I = 0x0

.field private static NON_RENDER_THREAD_TID:I = 0x0

.field private static final PERF_RES_FPS_FPSGO_CTL:I = 0x2000300

.field private static final PERF_RES_FPS_FPSGO_NOCTL:I = 0x2000400

.field private static final PERF_RES_FPS_FPSGO_UBOOST:I = 0x2048700

.field private static final PERF_RES_FPS_FSTB_TARGET_FPS_PID:I = 0x2000200

.field private static final PERF_RES_POWERHAL_TOUCH_BOOST_ENABLE:I = 0x3408500

.field private static final TAG:Ljava/lang/String; = "ScrollPolicy"

.field private static isCorrectFPS:Z = false

.field private static lock:Ljava/lang/Object; = null

.field private static mBoostHandle:I = 0x0

.field private static mCheckFPSTime:J = 0x0L

.field private static mFlingPolicyExeCount:I = 0x0

.field private static mPolicyExeCount:I = 0x0

.field private static mPowerHalService:Lcom/mediatek/powerhalmgr/PowerHalMgr; = null

.field private static mPowerHandle:I = 0x0

.field private static mReleaseFPSDuration:I = 0x0

.field private static mRenderThreadTid:I = 0x0

.field private static mSpecialAppDesign:I = 0x0

.field public static final sFINGER_MOVE:I = 0x0

.field public static final sFINGER_UP:I = 0x1

.field public static final sFLING_HORIZONTAL:I = 0x3

.field public static final sFLING_VERTICAL:I = 0x2

.field private static sInstance:Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy; = null

.field private static final sTHREAD_NAME:Ljava/lang/String; = "ScrollPolicy"

.field public static useFPSGo:Z


# instance fields
.field private fpsgoUnderCtrlWhenFling:Z

.field private mWorkerHandler:Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;

.field private mWorkerThread:Landroid/os/HandlerThread;

.field private scrollingFingStep:I

.field private uboostEnable:Z

.field private waitingForReleaseFpsgo:Z

.field private waitingForReleaseFpsgoStep:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->sInstance:Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->lock:Ljava/lang/Object;

    .line 63
    invoke-static {}, Lcom/mediatek/powerhalmgr/PowerHalMgrFactory;->getInstance()Lcom/mediatek/powerhalmgr/PowerHalMgrFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/powerhalmgr/PowerHalMgrFactory;->makePowerHalMgr()Lcom/mediatek/powerhalmgr/PowerHalMgr;

    move-result-object v0

    sput-object v0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mPowerHalService:Lcom/mediatek/powerhalmgr/PowerHalMgr;

    .line 64
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mPowerHandle:I

    .line 66
    sput v0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mBoostHandle:I

    .line 69
    const/16 v1, 0xbb8

    sput v1, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mReleaseFPSDuration:I

    .line 71
    const/4 v1, -0x1

    sput v1, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->NON_RENDER_THREAD_TID:I

    .line 72
    sput v1, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mRenderThreadTid:I

    .line 80
    const/16 v2, 0x2b

    sput v2, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->MTKPOWER_HINT_UX_SCROLLING:I

    .line 82
    const/16 v2, 0x2d

    sput v2, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->MTKPOWER_HINT_UX_MOVE_SCROLLING:I

    .line 88
    const-wide/16 v2, 0x64

    sput-wide v2, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mCheckFPSTime:J

    .line 89
    sput-boolean v0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->isCorrectFPS:Z

    .line 90
    sput v0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mPolicyExeCount:I

    .line 91
    sput v0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mFlingPolicyExeCount:I

    .line 92
    sput v1, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mSpecialAppDesign:I

    .line 97
    sput-boolean v0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->useFPSGo:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mWorkerThread:Landroid/os/HandlerThread;

    .line 61
    iput-object v0, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mWorkerHandler:Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->waitingForReleaseFpsgo:Z

    .line 99
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->waitingForReleaseFpsgoStep:I

    .line 100
    iput-boolean v0, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->fpsgoUnderCtrlWhenFling:Z

    .line 101
    iput-boolean v0, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->uboostEnable:Z

    .line 103
    iput v1, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->scrollingFingStep:I

    .line 117
    invoke-direct {p0}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->initThread()V

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;
    .param p1, "x1"    # Z

    .line 53
    invoke-direct {p0, p1}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->releaseTargetFPSInternel(Z)V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 53
    sput-boolean p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->isCorrectFPS:Z

    return p0
.end method

.method static synthetic access$200(Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;
    .param p1, "x1"    # Z

    .line 53
    invoke-direct {p0, p1}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mtkScrollingPolicy(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;
    .param p1, "x1"    # Z

    .line 53
    invoke-direct {p0, p1}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mtkScrollingFlingPolicy(Z)V

    return-void
.end method

.method static synthetic access$400()I
    .registers 1

    .line 53
    sget v0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mPolicyExeCount:I

    return v0
.end method

.method static synthetic access$402(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 53
    sput p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mPolicyExeCount:I

    return p0
.end method

.method static synthetic access$500(Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;ZI)V
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->enableFPSGo(ZI)V

    return-void
.end method

.method static synthetic access$600()I
    .registers 1

    .line 53
    sget v0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mFlingPolicyExeCount:I

    return v0
.end method

.method static synthetic access$602(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 53
    sput p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mFlingPolicyExeCount:I

    return p0
.end method

.method static synthetic access$700(Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;

    .line 53
    iget v0, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->scrollingFingStep:I

    return v0
.end method

.method static synthetic access$802(Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;
    .param p1, "x1"    # Z

    .line 53
    iput-boolean p1, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->waitingForReleaseFpsgo:Z

    return p1
.end method

.method static synthetic access$900(Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;

    .line 53
    iget v0, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->waitingForReleaseFpsgoStep:I

    return v0
.end method

.method static synthetic access$902(Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;
    .param p1, "x1"    # I

    .line 53
    iput p1, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->waitingForReleaseFpsgoStep:I

    return p1
.end method

.method private commands2String([I)Ljava/lang/String;
    .registers 7
    .param p1, "commands"    # [I

    .line 484
    if-eqz p1, :cond_61

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_61

    .line 487
    :cond_6
    const-string v0, ""

    .line 488
    .local v0, "cStr":Ljava/lang/String;
    array-length v1, p1

    .line 489
    .local v1, "l":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_60

    .line 490
    aget v3, p1, v2

    sparse-switch v3, :sswitch_data_64

    .line 501
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, p1, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5d

    .line 495
    :sswitch_27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " PERF_RES_FPS_FPSGO_NOCTL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 496
    goto :goto_5d

    .line 492
    :sswitch_39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " PERF_RES_FPS_FPSGO_CTL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 493
    goto :goto_5d

    .line 498
    :sswitch_4b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " PERF_RES_FPS_FSTB_TARGET_FPS_PID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 499
    nop

    .line 489
    :goto_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 505
    .end local v2    # "i":I
    :cond_60
    return-object v0

    .line 485
    .end local v0    # "cStr":Ljava/lang/String;
    .end local v1    # "l":I
    :cond_61
    :goto_61
    const-string v0, ""

    return-object v0

    :sswitch_data_64
    .sparse-switch
        0x2000200 -> :sswitch_4b
        0x2000300 -> :sswitch_39
        0x2000400 -> :sswitch_27
    .end sparse-switch
.end method

.method private controlFpsgoInternal([ILjava/lang/String;)V
    .registers 7
    .param p1, "perf_lock_rsc"    # [I
    .param p2, "logStr"    # Ljava/lang/String;

    .line 473
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v0

    const-wide/16 v1, 0x8

    if-eqz v0, :cond_40

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " control Fpsgo"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->commands2String([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " control Fpsgo "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->commands2String([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ScrollPolicy"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_40
    invoke-direct {p0, p1}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->perfLockAcquire([I)V

    .line 478
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 479
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 481
    :cond_4c
    return-void
.end method

.method private delayControlFpsgo(IZ)V
    .registers 8
    .param p1, "step"    # I
    .param p2, "enable"    # Z

    .line 408
    const/4 v0, 0x0

    const/16 v1, 0xb

    if-nez p2, :cond_e

    .line 409
    iget-object v2, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mWorkerHandler:Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;

    invoke-virtual {v2, v1, v0}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 411
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->waitingForReleaseFpsgoStep:I

    goto :goto_1f

    .line 412
    :cond_e
    iget-boolean v2, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->waitingForReleaseFpsgo:Z

    if-nez v2, :cond_1f

    .line 416
    iget-object v2, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mWorkerHandler:Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;

    .line 417
    invoke-virtual {v2, v1, v0}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v3, 0x1e

    .line 416
    invoke-virtual {v2, v0, v3, v4}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 419
    iput p1, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->waitingForReleaseFpsgoStep:I

    .line 421
    :cond_1f
    :goto_1f
    iput-boolean p2, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->waitingForReleaseFpsgo:Z

    .line 422
    return-void
.end method

.method private disableTouchBoost()V
    .registers 2

    .line 599
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    .line 600
    .local v0, "perf_lock_rsc":[I
    invoke-direct {p0, v0}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->perfLockAcquire([I)V

    .line 601
    return-void

    :array_a
    .array-data 4
        0x3408500
        0x0
    .end array-data
.end method

.method private enableFPSGo(ZI)V
    .registers 11
    .param p1, "enable"    # Z
    .param p2, "step"    # I

    .line 385
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v0

    const-wide/16 v1, 0x8

    if-eqz v0, :cond_3d

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableFPSGo "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "start"

    const-string v5, "stop"

    if-eqz p1, :cond_1a

    move-object v6, v4

    goto :goto_1b

    :cond_1a
    move-object v6, v5

    :goto_1b
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_30

    goto :goto_31

    :cond_30
    move-object v4, v5

    :goto_31
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ScrollPolicy"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_3d
    iget-object v0, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mWorkerHandler:Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->removeMessages(I)V

    .line 390
    if-eqz p1, :cond_5e

    .line 391
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->releaseFPSGOControl(ZI)V

    .line 393
    sget-boolean v0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->useFPSGo:Z

    if-eqz v0, :cond_62

    .line 394
    iget-object v0, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mWorkerHandler:Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;

    const/4 v4, 0x0

    .line 395
    invoke-virtual {v0, v3, v4}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    sget-wide v6, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mCheckFPSTime:J

    sub-long/2addr v4, v6

    .line 394
    invoke-virtual {v0, v3, v4, v5}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_62

    .line 400
    :cond_5e
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->releaseFPSGOControl(ZI)V

    .line 402
    :cond_62
    :goto_62
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 403
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 405
    :cond_6b
    return-void
.end method

.method public static getInstance()Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;
    .registers 2

    .line 106
    sget-object v0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->sInstance:Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;

    if-nez v0, :cond_17

    .line 107
    sget-object v0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_7
    sget-object v1, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->sInstance:Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;

    if-nez v1, :cond_12

    .line 109
    new-instance v1, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;

    invoke-direct {v1}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;-><init>()V

    sput-object v1, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->sInstance:Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;

    .line 111
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 113
    :cond_17
    :goto_17
    sget-object v0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->sInstance:Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;

    return-object v0
.end method

.method private getRenderThreadTid()I
    .registers 3

    .line 563
    sget v0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mRenderThreadTid:I

    sget v1, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->NON_RENDER_THREAD_TID:I

    if-ne v0, v1, :cond_10

    .line 564
    invoke-static {}, Lcom/mediatek/boostfwk/info/ActivityInfo;->getInstance()Lcom/mediatek/boostfwk/info/ActivityInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/boostfwk/info/ActivityInfo;->getRenderThreadTid()I

    move-result v0

    sput v0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mRenderThreadTid:I

    .line 566
    :cond_10
    sget v0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mRenderThreadTid:I

    return v0
.end method

.method private initThread()V
    .registers 4

    .line 121
    iget-object v0, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mWorkerThread:Landroid/os/HandlerThread;

    const-string v1, "ScrollPolicy"

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mWorkerHandler:Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;

    if-eqz v0, :cond_1c

    .line 123
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 124
    const-string v0, "re-init"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 127
    :cond_1c
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mWorkerThread:Landroid/os/HandlerThread;

    .line 128
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 129
    iget-object v0, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 130
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_3a

    .line 131
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 132
    const-string v2, "Thread looper is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 135
    :cond_3a
    new-instance v1, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;

    invoke-direct {v1, p0, v0}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;-><init>(Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mWorkerHandler:Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;

    .line 138
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_41
    :goto_41
    return-void
.end method

.method private mtkScrollingFlingPolicy(Z)V
    .registers 12
    .param p1, "enable"    # Z

    .line 348
    sget-object v0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mPowerHalService:Lcom/mediatek/powerhalmgr/PowerHalMgr;

    const-string v1, "ScrollPolicy"

    if-nez v0, :cond_c

    .line 349
    const-string v0, "mPowerHalService is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return-void

    .line 352
    :cond_c
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v0

    const-wide/16 v2, 0x8

    if-eqz v0, :cond_47

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mtkScrollingFlingPolicy "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "start"

    const-string v6, "stop"

    if-eqz p1, :cond_26

    move-object v7, v5

    goto :goto_27

    :cond_26
    move-object v7, v6

    :goto_27
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3c

    goto :goto_3d

    :cond_3c
    move-object v5, v6

    :goto_3d
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_47
    const/4 v0, 0x0

    const/16 v1, 0xa

    const/4 v4, 0x1

    if-eqz p1, :cond_7f

    .line 357
    sget v5, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mFlingPolicyExeCount:I

    if-nez v5, :cond_9d

    .line 358
    iget v5, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->scrollingFingStep:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_59

    .line 359
    const/16 v5, 0x1f4

    goto :goto_5b

    :cond_59
    sget v5, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mReleaseFPSDuration:I

    .line 360
    .local v5, "duration":I
    :goto_5b
    sget-object v6, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mPowerHalService:Lcom/mediatek/powerhalmgr/PowerHalMgr;

    sget v7, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->MTKPOWER_HINT_UX_SCROLLING:I

    invoke-virtual {v6, v7, v5}, Lcom/mediatek/powerhalmgr/PowerHalMgr;->mtkPowerHint(II)V

    .line 361
    iget v6, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->scrollingFingStep:I

    invoke-direct {p0, v4, v6}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->enableFPSGo(ZI)V

    .line 362
    sget v6, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mFlingPolicyExeCount:I

    add-int/2addr v6, v4

    sput v6, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mFlingPolicyExeCount:I

    .line 363
    iget-object v4, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mWorkerHandler:Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;

    invoke-virtual {v4, v1, v0}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 364
    iget-object v4, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mWorkerHandler:Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;

    .line 365
    invoke-virtual {v4, v1, v0}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v6, v5

    sget-wide v8, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mCheckFPSTime:J

    sub-long/2addr v6, v8

    .line 364
    invoke-virtual {v4, v0, v6, v7}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 368
    .end local v5    # "duration":I
    goto :goto_9d

    .line 370
    :cond_7f
    const/4 v5, 0x0

    sput v5, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mFlingPolicyExeCount:I

    .line 371
    iget-object v6, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mWorkerHandler:Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;

    invoke-virtual {v6, v1, v0}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 372
    sget-object v0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mPowerHalService:Lcom/mediatek/powerhalmgr/PowerHalMgr;

    sget v1, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->MTKPOWER_HINT_UX_SCROLLING:I

    invoke-virtual {v0, v1, v5}, Lcom/mediatek/powerhalmgr/PowerHalMgr;->mtkPowerHint(II)V

    .line 373
    sget-boolean v0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->useFPSGo:Z

    if-eqz v0, :cond_98

    .line 374
    iget v0, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->scrollingFingStep:I

    invoke-direct {p0, v4, v0}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->enableFPSGo(ZI)V

    goto :goto_9d

    .line 376
    :cond_98
    iget v0, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->scrollingFingStep:I

    invoke-direct {p0, v0, v4}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->delayControlFpsgo(IZ)V

    .line 379
    :cond_9d
    :goto_9d
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 380
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 382
    :cond_a6
    return-void
.end method

.method private mtkScrollingPolicy(Z)V
    .registers 11
    .param p1, "enable"    # Z

    .line 293
    sget-object v0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mPowerHalService:Lcom/mediatek/powerhalmgr/PowerHalMgr;

    const-string v1, "ScrollPolicy"

    if-nez v0, :cond_c

    .line 294
    const-string v0, "mPowerHalService is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return-void

    .line 297
    :cond_c
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v0

    const-wide/16 v2, 0x8

    if-eqz v0, :cond_47

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mtkScrollingPolicy "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "start"

    const-string v6, "stop"

    if-eqz p1, :cond_26

    move-object v7, v5

    goto :goto_27

    :cond_26
    move-object v7, v6

    :goto_27
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3c

    goto :goto_3d

    :cond_3c
    move-object v5, v6

    :goto_3d
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_47
    const/4 v0, 0x7

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p1, :cond_96

    .line 302
    sget v6, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mPolicyExeCount:I

    if-nez v6, :cond_ab

    .line 303
    invoke-direct {p0}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->disableTouchBoost()V

    .line 305
    sget v6, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mSpecialAppDesign:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5a

    .line 306
    return-void

    .line 310
    :cond_5a
    sget v6, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mFlingPolicyExeCount:I

    if-eqz v6, :cond_6e

    .line 311
    iget-object v6, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mWorkerHandler:Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;

    const/16 v7, 0xa

    invoke-virtual {v6, v7, v4}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 313
    sget-object v6, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mPowerHalService:Lcom/mediatek/powerhalmgr/PowerHalMgr;

    sget v7, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->MTKPOWER_HINT_UX_SCROLLING:I

    invoke-virtual {v6, v7, v5}, Lcom/mediatek/powerhalmgr/PowerHalMgr;->mtkPowerHint(II)V

    .line 314
    sput v5, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mFlingPolicyExeCount:I

    .line 316
    :cond_6e
    sget v6, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mSpecialAppDesign:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_7e

    if-eqz v6, :cond_7e

    .line 318
    sget-object v6, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mPowerHalService:Lcom/mediatek/powerhalmgr/PowerHalMgr;

    sget v7, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->MTKPOWER_HINT_UX_MOVE_SCROLLING:I

    sget v8, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mReleaseFPSDuration:I

    invoke-virtual {v6, v7, v8}, Lcom/mediatek/powerhalmgr/PowerHalMgr;->mtkPowerHint(II)V

    .line 321
    :cond_7e
    invoke-direct {p0, v1, v5}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->enableFPSGo(ZI)V

    .line 322
    sget v5, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mPolicyExeCount:I

    add-int/2addr v5, v1

    sput v5, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mPolicyExeCount:I

    .line 323
    iget-object v1, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mWorkerHandler:Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;

    .line 324
    invoke-virtual {v1, v0, v4}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    sget v4, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mReleaseFPSDuration:I

    int-to-long v4, v4

    sget-wide v6, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mCheckFPSTime:J

    sub-long/2addr v4, v6

    .line 323
    invoke-virtual {v1, v0, v4, v5}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_ab

    .line 329
    :cond_96
    sput v5, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mPolicyExeCount:I

    .line 330
    iget-object v6, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mWorkerHandler:Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;

    invoke-virtual {v6, v0, v4}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 331
    sget-object v0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mPowerHalService:Lcom/mediatek/powerhalmgr/PowerHalMgr;

    sget v4, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->MTKPOWER_HINT_UX_MOVE_SCROLLING:I

    invoke-virtual {v0, v4, v5}, Lcom/mediatek/powerhalmgr/PowerHalMgr;->mtkPowerHint(II)V

    .line 332
    sget-boolean v0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->useFPSGo:Z

    if-nez v0, :cond_ab

    .line 334
    invoke-direct {p0, v5, v1}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->delayControlFpsgo(IZ)V

    .line 337
    :cond_ab
    :goto_ab
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 338
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 340
    :cond_b4
    return-void
.end method

.method private perfLockAcquire([I)V
    .registers 5
    .param p1, "resList"    # [I

    .line 570
    sget-object v0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mPowerHalService:Lcom/mediatek/powerhalmgr/PowerHalMgr;

    if-eqz v0, :cond_13

    .line 571
    sget v1, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mPowerHandle:I

    sget v2, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mReleaseFPSDuration:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/mediatek/powerhalmgr/PowerHalMgr;->perfLockAcquire(II[I)I

    move-result v0

    sput v0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mPowerHandle:I

    .line 573
    sget-object v1, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mPowerHalService:Lcom/mediatek/powerhalmgr/PowerHalMgr;

    invoke-virtual {v1, v0}, Lcom/mediatek/powerhalmgr/PowerHalMgr;->perfLockRelease(I)V

    .line 575
    :cond_13
    return-void
.end method

.method private releaseFPSGOControl(ZI)V
    .registers 4
    .param p1, "isBegin"    # Z
    .param p2, "step"    # I

    .line 425
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->releaseFPSGOControl(ZI[I)V

    .line 426
    return-void
.end method

.method private releaseFPSGOControl(ZI[I)V
    .registers 12
    .param p1, "isBegin"    # Z
    .param p2, "step"    # I
    .param p3, "commands"    # [I

    .line 436
    invoke-direct {p0}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->getRenderThreadTid()I

    move-result v0

    .line 437
    .local v0, "renderThreadTid":I
    const/4 v1, 0x2

    if-eqz p3, :cond_c

    array-length v2, p3

    if-le v2, v1, :cond_c

    move-object v2, p3

    goto :goto_f

    :cond_c
    const/4 v2, 0x4

    new-array v2, v2, [I

    .line 438
    .local v2, "perf_lock_rsc":[I
    :goto_f
    const v3, 0x2000400

    const v4, 0x2000300

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_4d

    .line 439
    invoke-direct {p0, v1, v7}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->delayControlFpsgo(IZ)V

    .line 440
    aput v4, v2, v7

    .line 441
    aput v0, v2, v6

    .line 442
    if-eq p2, v1, :cond_25

    if-ne p2, v5, :cond_38

    .line 445
    :cond_25
    iget-boolean v4, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->fpsgoUnderCtrlWhenFling:Z

    if-nez v4, :cond_2f

    .line 447
    aput v3, v2, v1

    .line 448
    neg-int v1, v0

    aput v1, v2, v5

    goto :goto_33

    .line 451
    :cond_2f
    aput v7, v2, v6

    aput v7, v2, v7

    .line 453
    :goto_33
    iput-boolean v6, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->fpsgoUnderCtrlWhenFling:Z

    .line 454
    invoke-direct {p0}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->uBoostAcquire()V

    .line 456
    :cond_38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->controlFpsgoInternal([ILjava/lang/String;)V

    goto :goto_76

    .line 458
    :cond_4d
    aput v4, v2, v7

    .line 459
    neg-int v4, v0

    aput v4, v2, v6

    .line 460
    if-eq p2, v1, :cond_56

    if-ne p2, v5, :cond_5f

    .line 462
    :cond_56
    aput v3, v2, v1

    .line 463
    aput v0, v2, v5

    .line 464
    iput-boolean v7, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->fpsgoUnderCtrlWhenFling:Z

    .line 465
    invoke-direct {p0}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->uBoostRelease()V

    .line 467
    :cond_5f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->controlFpsgoInternal([ILjava/lang/String;)V

    .line 468
    const/4 v1, -0x1

    sput v1, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mSpecialAppDesign:I

    .line 470
    :goto_76
    return-void
.end method

.method private releaseTargetFPSInternel(Z)V
    .registers 11
    .param p1, "isBegin"    # Z

    .line 546
    const-string v0, "release Target FPS"

    .line 547
    .local v0, "logStr":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->getInstance()Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->setScrolling(ZLjava/lang/String;)V

    .line 548
    invoke-direct {p0}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->getRenderThreadTid()I

    move-result v1

    .line 549
    .local v1, "renderThreadTid":I
    const/4 v2, 0x6

    new-array v2, v2, [I

    .line 550
    .local v2, "perf_lock_rsc":[I
    const/4 v3, 0x4

    const v4, 0x2000200

    aput v4, v2, v3

    .line 551
    if-eqz p1, :cond_1a

    move v3, v1

    goto :goto_1b

    :cond_1a
    neg-int v3, v1

    :goto_1b
    const/4 v4, 0x5

    aput v3, v2, v4

    .line 552
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v3

    const-wide/16 v4, 0x8

    if-eqz v3, :cond_59

    .line 553
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "start"

    const-string v7, "stop"

    if-eqz p1, :cond_36

    move-object v8, v6

    goto :goto_37

    :cond_36
    move-object v8, v7

    :goto_37
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 554
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_4c

    goto :goto_4d

    :cond_4c
    move-object v6, v7

    :goto_4d
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "ScrollPolicy"

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_59
    const/4 v3, 0x2

    invoke-direct {p0, p1, v3, v2}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->releaseFPSGOControl(ZI[I)V

    .line 557
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v3

    if-eqz v3, :cond_66

    .line 558
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 560
    :cond_66
    return-void
.end method

.method private uBoostAcquire()V
    .registers 5

    .line 583
    sget-object v0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mPowerHalService:Lcom/mediatek/powerhalmgr/PowerHalMgr;

    if-eqz v0, :cond_1b

    iget-boolean v1, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->uboostEnable:Z

    if-nez v1, :cond_1b

    .line 584
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->uboostEnable:Z

    .line 585
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_1c

    .line 586
    .local v1, "perf_lock_rsc":[I
    sget v2, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mBoostHandle:I

    sget v3, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mReleaseFPSDuration:I

    invoke-virtual {v0, v2, v3, v1}, Lcom/mediatek/powerhalmgr/PowerHalMgr;->perfLockAcquire(II[I)I

    move-result v0

    sput v0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mBoostHandle:I

    .line 589
    .end local v1    # "perf_lock_rsc":[I
    :cond_1b
    return-void

    :array_1c
    .array-data 4
        0x2048700
        0x1
    .end array-data
.end method

.method private uBoostRelease()V
    .registers 3

    .line 592
    sget-object v0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mPowerHalService:Lcom/mediatek/powerhalmgr/PowerHalMgr;

    if-eqz v0, :cond_10

    iget-boolean v1, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->uboostEnable:Z

    if-eqz v1, :cond_10

    .line 593
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->uboostEnable:Z

    .line 594
    sget v1, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mBoostHandle:I

    invoke-virtual {v0, v1}, Lcom/mediatek/powerhalmgr/PowerHalMgr;->perfLockRelease(I)V

    .line 596
    :cond_10
    return-void
.end method


# virtual methods
.method public disableMTKScrollingPolicy(Z)V
    .registers 5
    .param p1, "needCheckBoostNow"    # Z

    .line 279
    if-eqz p1, :cond_7

    sget v0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mPolicyExeCount:I

    if-nez v0, :cond_7

    .line 280
    return-void

    .line 282
    :cond_7
    iget-object v0, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mWorkerHandler:Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    .line 283
    invoke-virtual {v0, v1, v2}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 282
    invoke-virtual {v0, v1}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 285
    return-void
.end method

.method public releaseTargetFPS(Z)V
    .registers 8
    .param p1, "release"    # Z

    .line 513
    invoke-direct {p0}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->getRenderThreadTid()I

    move-result v0

    .line 514
    .local v0, "renderThreadTid":I
    sget v1, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->NON_RENDER_THREAD_TID:I

    if-ne v0, v1, :cond_10

    .line 515
    const-string v1, "ScrollPolicy"

    const-string v2, "cannot found render thread"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    return-void

    .line 521
    :cond_10
    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p1, :cond_33

    .line 522
    const/4 v3, 0x0

    sput-boolean v3, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->isCorrectFPS:Z

    .line 523
    iget-object v3, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mWorkerHandler:Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;

    const/4 v4, 0x1

    .line 524
    invoke-virtual {v3, v4, v2}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 523
    invoke-virtual {v3, v4}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 526
    iget-object v3, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mWorkerHandler:Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;

    invoke-virtual {v3, v1, v2}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 527
    iget-object v1, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mWorkerHandler:Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;

    const/4 v3, 0x3

    .line 528
    invoke-virtual {v1, v3, v2}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    sget-wide v3, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mCheckFPSTime:J

    .line 527
    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4e

    .line 532
    :cond_33
    sget-boolean v3, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->isCorrectFPS:Z

    if-eqz v3, :cond_42

    .line 533
    iget-object v1, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mWorkerHandler:Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;

    const/4 v3, 0x2

    .line 534
    invoke-virtual {v1, v3, v2}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 533
    invoke-virtual {v1, v2}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4e

    .line 537
    :cond_42
    iget-object v3, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mWorkerHandler:Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;

    .line 538
    invoke-virtual {v3, v1, v2}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    sget v2, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mReleaseFPSDuration:I

    int-to-long v4, v2

    .line 537
    invoke-virtual {v3, v1, v4, v5}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 543
    :goto_4e
    return-void
.end method

.method public scrollHint(II)V
    .registers 9
    .param p1, "step"    # I
    .param p2, "specialAppDesign"    # I

    .line 220
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v0

    const-wide/16 v1, 0x8

    if-eqz v0, :cond_40

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scrollHint step="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pageType="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pageType"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ScrollPolicy"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_40
    const/4 v0, 0x5

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_8e

    goto :goto_83

    .line 247
    :pswitch_46
    iput p1, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->scrollingFingStep:I

    .line 248
    sget v0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mFlingPolicyExeCount:I

    if-nez v0, :cond_83

    .line 249
    iget-object v0, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mWorkerHandler:Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;

    const/16 v4, 0x8

    .line 250
    invoke-virtual {v0, v4, v3}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 249
    invoke-virtual {v0, v3}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_83

    .line 240
    :pswitch_58
    iget-object v4, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mWorkerHandler:Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;

    invoke-virtual {v4, v0, v3}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 241
    iget-object v0, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mWorkerHandler:Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;

    const/4 v4, 0x6

    .line 242
    invoke-virtual {v0, v4, v3}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 241
    invoke-virtual {v0, v3}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 244
    goto :goto_83

    .line 226
    :pswitch_68
    sget-boolean v4, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->useFPSGo:Z

    if-eqz v4, :cond_6f

    .line 228
    const/4 v4, 0x0

    sput-boolean v4, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->useFPSGo:Z

    .line 230
    :cond_6f
    sget v4, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mSpecialAppDesign:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_76

    .line 231
    sput p2, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mSpecialAppDesign:I

    .line 233
    :cond_76
    sget v4, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mPolicyExeCount:I

    if-nez v4, :cond_83

    .line 234
    iget-object v4, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mWorkerHandler:Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;

    .line 235
    invoke-virtual {v4, v0, v3}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 234
    invoke-virtual {v4, v0}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 257
    :cond_83
    :goto_83
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 258
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 260
    :cond_8c
    return-void

    nop

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_68
        :pswitch_58
        :pswitch_46
        :pswitch_46
    .end packed-switch
.end method

.method public switchToFPSGo(Z)V
    .registers 9
    .param p1, "enableFPSGo"    # Z

    .line 263
    sput-boolean p1, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->useFPSGo:Z

    .line 266
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v0

    const-wide/16 v1, 0x8

    if-eqz v0, :cond_3f

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchToFPSGo "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "start"

    const-string v5, "stop"

    if-eqz p1, :cond_1c

    move-object v6, v4

    goto :goto_1d

    :cond_1c
    move-object v6, v5

    :goto_1d
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_32

    goto :goto_33

    :cond_32
    move-object v4, v5

    :goto_33
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ScrollPolicy"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_3f
    if-eqz p1, :cond_45

    .line 271
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->disableMTKScrollingPolicy(Z)V

    .line 273
    :cond_45
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 274
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 276
    :cond_4e
    return-void
.end method

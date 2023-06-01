.class public Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;
.super Ljava/lang/Object;
.source "ScrollIdentify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify$ScrollGestureListener;,
        Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify$ActivityListener;
    }
.end annotation


# static fields
.field private static final DISPLAY_RATE_60:F = 60.0f

.field protected static final MOVE_DISTANCE:F = 50.0f

.field public static final NO_CHECKED_STATUS:I = -0x1

.field public static final PAGE_TYPE_AOSP_DESIGN:I = 0x0

.field public static final PAGE_TYPE_SPECIAL_DESIGN:I = 0x1

.field public static final PAGE_TYPE_SPECIAL_DESIGN_WEB_ON_60:I = 0x2

.field private static final SCROLL_LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "ScrollIdentify"

.field private static lock:Ljava/lang/Object; = null

.field private static mDispatcherPkgName:Ljava/lang/String; = null

.field private static mFrameIntervalMs:J = 0x0L

.field private static mInputPkgName:Ljava/lang/String; = null

.field private static mIsInput:Z = false

.field private static mIsSpecialPageDesign:I = 0x0

.field private static mIsSystemApp:Z = false

.field private static mLimitVsyncTime:J = 0x0L

.field private static mRefreshRate:F = 0.0f

.field private static final sAUTO_SWITCH_FPSGO:Z = true

.field private static sInstance:Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;

.field private static scrollerLock:Ljava/lang/Object;


# instance fields
.field private final APP_TYPE_GAME:I

.field private final APP_TYPE_MAP:I

.field private final APP_TYPE_NORMAL:I

.field private final APP_TYPE_READER:I

.field protected final FLING_DISTANCE_HORIZONTAL_DP:I

.field protected final FLING_DISTANCE_VERTICAL_DP:F

.field protected final FLING_SPEED_HORIZONTAL_DP:I

.field protected final FLING_SPEED_VERTICAL_DP:I

.field private final PAGE_TYPE_FULLSCREEN_GLTHREAD:I

.field private activityChangeListener:Lcom/mediatek/boostfwk/info/ActivityInfo$ActivityChangeListener;

.field private activityInfo:Lcom/mediatek/boostfwk/info/ActivityInfo;

.field private applicationType:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHaveMoveEvent:Z

.field private mIsInputLockAcquired:Z

.field private mIsScrollLockAcquired:Z

.field private mIsScrolling:Z

.field private minTouchDistanceHorizontal:F

.field private minTouchDistanceVertical:F

.field private minVelocityHorizontal:F

.field private minVelocityVertical:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->sInstance:Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;

    .line 61
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->lock:Ljava/lang/Object;

    .line 62
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->SCROLL_LOCK:Ljava/lang/Object;

    .line 63
    sput-object v0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->scrollerLock:Ljava/lang/Object;

    .line 65
    const/4 v1, 0x0

    sput-boolean v1, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mIsInput:Z

    .line 66
    sput-object v0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mDispatcherPkgName:Ljava/lang/String;

    .line 67
    sput-boolean v1, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mIsSystemApp:Z

    .line 68
    const-string v0, ""

    sput-object v0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mInputPkgName:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mRefreshRate:F

    .line 70
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mFrameIntervalMs:J

    .line 71
    sput-wide v0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mLimitVsyncTime:J

    .line 97
    const/4 v0, -0x1

    sput v0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mIsSpecialPageDesign:I

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/high16 v0, 0x428c0000    # 70.0f

    iput v0, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->FLING_DISTANCE_VERTICAL_DP:F

    .line 76
    const/16 v0, 0x30

    iput v0, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->FLING_DISTANCE_HORIZONTAL_DP:I

    .line 77
    const/16 v0, 0x15e

    iput v0, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->FLING_SPEED_VERTICAL_DP:I

    .line 79
    const/16 v0, 0x190

    iput v0, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->FLING_SPEED_HORIZONTAL_DP:I

    .line 81
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->minVelocityHorizontal:F

    .line 82
    iput v0, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->minVelocityVertical:F

    .line 83
    iput v0, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->minTouchDistanceHorizontal:F

    .line 84
    iput v0, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->minTouchDistanceVertical:F

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mHaveMoveEvent:Z

    .line 89
    iput-boolean v0, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mIsInputLockAcquired:Z

    .line 91
    iput-boolean v0, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mIsScrollLockAcquired:Z

    .line 92
    iput-boolean v0, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mIsScrolling:Z

    .line 105
    const/4 v0, 0x3

    iput v0, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->PAGE_TYPE_FULLSCREEN_GLTHREAD:I

    .line 107
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->applicationType:I

    .line 108
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->APP_TYPE_GAME:I

    .line 109
    const/4 v1, 0x2

    iput v1, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->APP_TYPE_READER:I

    .line 110
    iput v0, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->APP_TYPE_MAP:I

    .line 111
    const/4 v0, 0x4

    iput v0, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->APP_TYPE_NORMAL:I

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->activityInfo:Lcom/mediatek/boostfwk/info/ActivityInfo;

    .line 120
    iput-object v0, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->activityChangeListener:Lcom/mediatek/boostfwk/info/ActivityInfo$ActivityChangeListener;

    .line 142
    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .line 56
    sget v0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mIsSpecialPageDesign:I

    return v0
.end method

.method static synthetic access$002(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 56
    sput p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mIsSpecialPageDesign:I

    return p0
.end method

.method static synthetic access$200(Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;

    .line 56
    invoke-direct {p0}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->checkSpecialPageType()V

    return-void
.end method

.method static synthetic access$302(Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;
    .param p1, "x1"    # Z

    .line 56
    iput-boolean p1, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mHaveMoveEvent:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->sbeHint(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;

    .line 56
    invoke-direct {p0}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->initMinValuesIfNeeded()V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;)F
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;

    .line 56
    iget v0, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->minTouchDistanceHorizontal:F

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;)F
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;

    .line 56
    iget v0, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->minVelocityHorizontal:F

    return v0
.end method

.method static synthetic access$800(Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;)F
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;

    .line 56
    iget v0, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->minTouchDistanceVertical:F

    return v0
.end method

.method static synthetic access$900(Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;)F
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;

    .line 56
    iget v0, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->minVelocityVertical:F

    return v0
.end method

.method private boostBeginEndCheck(I)Z
    .registers 5
    .param p1, "action"    # I

    .line 460
    const/4 v0, 0x0

    .line 461
    .local v0, "isBegin":Z
    packed-switch p1, :pswitch_data_12

    .line 469
    const-string v1, "ScrollIdentify"

    const-string v2, "Unknown define action inputed, exit now."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 466
    :pswitch_c
    const/4 v0, 0x0

    .line 467
    goto :goto_10

    .line 463
    :pswitch_e
    const/4 v0, 0x1

    .line 464
    nop

    .line 472
    :goto_10
    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_c
    .end packed-switch
.end method

.method private checkAppType(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 517
    const-string v0, "APP_TYPE_NORMAL"

    .line 518
    .local v0, "log":Ljava/lang/String;
    invoke-static {p1}, Lcom/mediatek/boostfwk/utils/TasksUtil;->isGameAPP(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 519
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->applicationType:I

    .line 520
    const-string v0, "APP_TYPE_GAME"

    goto :goto_11

    .line 527
    :cond_e
    const/4 v1, 0x4

    iput v1, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->applicationType:I

    .line 529
    :goto_11
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 530
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScroll -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScrollIdentify"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_2d
    return-void
.end method

.method private checkScroller(ZLjava/lang/Object;)Z
    .registers 6
    .param p1, "shouldBoost"    # Z
    .param p2, "obj"    # Ljava/lang/Object;

    .line 535
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 536
    return v0

    .line 538
    :cond_4
    const/4 v1, 0x1

    if-eqz p1, :cond_e

    .line 539
    sget-object v2, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->scrollerLock:Ljava/lang/Object;

    if-nez v2, :cond_18

    .line 540
    sput-object p2, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->scrollerLock:Ljava/lang/Object;

    .line 541
    return v1

    .line 544
    :cond_e
    sget-object v2, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->scrollerLock:Ljava/lang/Object;

    if-eqz v2, :cond_18

    if-ne v2, p2, :cond_18

    .line 545
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->scrollerLock:Ljava/lang/Object;

    .line 546
    return v1

    .line 549
    :cond_18
    return v0
.end method

.method private checkSpecialPageType()V
    .registers 4

    .line 480
    sget v0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mIsSpecialPageDesign:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_60

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown special app design status. flag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mIsSpecialPageDesign:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScrollIdentify"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    .line 508
    :pswitch_1f
    iput-boolean v1, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mIsInputLockAcquired:Z

    .line 509
    goto :goto_5f

    .line 504
    :pswitch_22
    goto :goto_5f

    .line 482
    :pswitch_23
    iget-object v0, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->activityInfo:Lcom/mediatek/boostfwk/info/ActivityInfo;

    invoke-virtual {v0}, Lcom/mediatek/boostfwk/info/ActivityInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 483
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_30

    .line 484
    sput v1, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mIsSpecialPageDesign:I

    .line 485
    iput-boolean v1, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mIsInputLockAcquired:Z

    .line 486
    goto :goto_5f

    .line 489
    :cond_30
    iget-object v2, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->activityInfo:Lcom/mediatek/boostfwk/info/ActivityInfo;

    invoke-virtual {v2}, Lcom/mediatek/boostfwk/info/ActivityInfo;->getWindowLayoutAttr()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/boostfwk/utils/TasksUtil;->fullscreenAndGl(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 490
    const/4 v1, 0x3

    sput v1, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mIsSpecialPageDesign:I

    goto :goto_5f

    .line 491
    :cond_40
    invoke-static {v0}, Lcom/mediatek/boostfwk/utils/TasksUtil;->isSpeicalAPP(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 492
    const/4 v1, 0x0

    sput v1, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mIsSpecialPageDesign:I

    goto :goto_5f

    .line 494
    :cond_4a
    sput v1, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mIsSpecialPageDesign:I

    .line 495
    iput-boolean v1, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mIsInputLockAcquired:Z

    .line 496
    sget v1, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mRefreshRate:F

    const/high16 v2, 0x42700000    # 60.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_5f

    .line 497
    invoke-static {v0}, Lcom/mediatek/boostfwk/utils/TasksUtil;->isSpeicalAPPWOWebView(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5f

    .line 498
    const/4 v1, 0x2

    sput v1, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mIsSpecialPageDesign:I

    .line 514
    .end local v0    # "context":Landroid/content/Context;
    :cond_5f
    :goto_5f
    return-void

    :pswitch_data_60
    .packed-switch -0x1
        :pswitch_23
        :pswitch_22
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch
.end method

.method private checkSystemAPP(Ljava/lang/String;)Z
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 553
    const/4 v0, 0x0

    .line 554
    .local v0, "isSystemApp":Z
    sget-object v1, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mDispatcherPkgName:Ljava/lang/String;

    if-nez v1, :cond_d

    if-eq v1, p1, :cond_d

    .line 555
    invoke-static {p1}, Lcom/mediatek/boostfwk/utils/Util;->isSystemApp(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mIsSystemApp:Z

    .line 558
    :cond_d
    sget-boolean v0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mIsSystemApp:Z

    .line 559
    return v0
.end method

.method public static getInstance()Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;
    .registers 2

    .line 130
    sget-object v0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->sInstance:Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;

    if-nez v0, :cond_17

    .line 131
    sget-object v0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_7
    sget-object v1, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->sInstance:Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;

    if-nez v1, :cond_12

    .line 133
    new-instance v1, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;

    invoke-direct {v1}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;-><init>()V

    sput-object v1, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->sInstance:Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;

    .line 135
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 137
    :cond_17
    :goto_17
    sget-object v0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->sInstance:Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;

    return-object v0
.end method

.method private inertialScrollHint(ZLjava/lang/String;)V
    .registers 5
    .param p1, "enable"    # Z
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 439
    sget-boolean v0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mIsInput:Z

    if-nez v0, :cond_1f

    sget-object v0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mInputPkgName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mInputPkgName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    sget v0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mIsSpecialPageDesign:I

    if-nez v0, :cond_1f

    .line 441
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->resetInputFlag(Z)V

    .line 442
    return-void

    .line 446
    :cond_1f
    invoke-static {}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->getInstance()Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->switchToFPSGo(Z)V

    .line 448
    invoke-static {}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->getInstance()Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->releaseTargetFPS(Z)V

    .line 449
    xor-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->resetInputFlag(Z)V

    .line 450
    return-void
.end method

.method private initMinValuesIfNeeded()V
    .registers 4

    .line 329
    iget v0, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->minVelocityHorizontal:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1a

    iget v0, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->minTouchDistanceHorizontal:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1a

    iget v0, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->minTouchDistanceVertical:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1a

    iget v0, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->minVelocityVertical:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_95

    .line 331
    :cond_1a
    iget-object v0, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->activityInfo:Lcom/mediatek/boostfwk/info/ActivityInfo;

    invoke-virtual {v0}, Lcom/mediatek/boostfwk/info/ActivityInfo;->getDensity()F

    move-result v0

    .line 332
    .local v0, "density":F
    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_29

    const/high16 v2, 0x43c80000    # 400.0f

    mul-float/2addr v2, v0

    goto :goto_2b

    :cond_29
    const/high16 v2, 0x44960000    # 1200.0f

    :goto_2b
    iput v2, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->minVelocityHorizontal:F

    .line 333
    cmpl-float v2, v0, v1

    if-lez v2, :cond_35

    const/high16 v2, 0x42400000    # 48.0f

    mul-float/2addr v2, v0

    goto :goto_37

    :cond_35
    const/high16 v2, 0x43160000    # 150.0f

    :goto_37
    iput v2, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->minTouchDistanceHorizontal:F

    .line 334
    cmpl-float v2, v0, v1

    if-lez v2, :cond_41

    const/high16 v2, 0x43af0000    # 350.0f

    mul-float/2addr v2, v0

    goto :goto_43

    :cond_41
    const/high16 v2, 0x447a0000    # 1000.0f

    :goto_43
    iput v2, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->minVelocityVertical:F

    .line 335
    cmpl-float v1, v0, v1

    if-lez v1, :cond_4d

    const/high16 v1, 0x428c0000    # 70.0f

    mul-float/2addr v1, v0

    goto :goto_4f

    :cond_4d
    const/high16 v1, 0x43480000    # 200.0f

    :goto_4f
    iput v1, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->minTouchDistanceVertical:F

    .line 336
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v1

    if-eqz v1, :cond_95

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFling density="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " minTouchDistanceVertical="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->minTouchDistanceVertical:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " minVelocityVertical="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->minVelocityVertical:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " minVelocityHorizontal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->minVelocityHorizontal:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "minTouchDistanceHorizontal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->minTouchDistanceHorizontal:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScrollIdentify"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    .end local v0    # "density":F
    :cond_95
    return-void
.end method

.method private inputDrawCheck(ILjava/lang/String;)V
    .registers 8
    .param p1, "action"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 383
    iget-boolean v0, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mHaveMoveEvent:Z

    if-eqz v0, :cond_48

    iget-boolean v0, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mIsInputLockAcquired:Z

    if-nez v0, :cond_48

    .line 384
    sget-wide v0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mFrameIntervalMs:J

    const/4 v2, 0x1

    shr-long/2addr v0, v2

    sput-wide v0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mLimitVsyncTime:J

    .line 385
    invoke-direct {p0, p1}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->boostBeginEndCheck(I)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mIsInput:Z

    .line 386
    sput-object p2, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mInputPkgName:Ljava/lang/String;

    .line 387
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vendor::inputDrawCheck begin, pkgName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", refresh rate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mFrameIntervalMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mFrameIntervalMs:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScrollIdentify"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_46
    iput-boolean v2, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mIsInputLockAcquired:Z

    .line 394
    :cond_48
    return-void
.end method

.method private inputEventCheck(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 351
    iget-boolean v0, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mIsScrollLockAcquired:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->scrollerLock:Ljava/lang/Object;

    if-eqz v0, :cond_14

    .line 352
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_14

    .line 354
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->scrollerLock:Ljava/lang/Object;

    .line 355
    iput-boolean v1, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mIsScrollLockAcquired:Z

    .line 357
    :cond_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_35

    .line 358
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 359
    const-string v0, "ScrollIdentify"

    const-string v3, "touch up"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_28
    iget-boolean v0, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mHaveMoveEvent:Z

    if-eqz v0, :cond_33

    .line 362
    iput-boolean v1, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mHaveMoveEvent:Z

    .line 363
    const-string v0, "Boost when up"

    invoke-direct {p0, v2, v0}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->sbeHint(ILjava/lang/String;)V

    .line 365
    :cond_33
    iput-boolean v1, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mIsInputLockAcquired:Z

    .line 368
    :cond_35
    iget-object v0, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_3c

    .line 369
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 371
    :cond_3c
    return-void
.end method

.method private resetInputFlag(Z)V
    .registers 3
    .param p1, "reset"    # Z

    .line 453
    if-eqz p1, :cond_9

    .line 454
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mIsInput:Z

    .line 455
    const-string v0, ""

    sput-object v0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mInputPkgName:Ljava/lang/String;

    .line 457
    :cond_9
    return-void
.end method

.method private sbeHint(ILjava/lang/String;)V
    .registers 5
    .param p1, "whichStep"    # I
    .param p2, "logStr"    # Ljava/lang/String;

    .line 563
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v0

    if-eqz v0, :cond_26

    if-eqz p2, :cond_26

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "step="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScrollIdentify"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_26
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2c

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3b

    :cond_2c
    sget v0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mIsSpecialPageDesign:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3b

    .line 568
    invoke-static {}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->getInstance()Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;

    move-result-object v0

    sget v1, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mIsSpecialPageDesign:I

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->scrollHint(II)V

    .line 569
    return-void

    .line 572
    :cond_3b
    iget-boolean v0, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mIsInputLockAcquired:Z

    if-eqz v0, :cond_48

    .line 573
    invoke-static {}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->getInstance()Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;

    move-result-object v0

    sget v1, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mIsSpecialPageDesign:I

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->scrollHint(II)V

    .line 576
    :cond_48
    return-void
.end method

.method private updateRefreshRate()V
    .registers 4

    .line 246
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Util;->getRefreshRate()F

    move-result v0

    .line 247
    .local v0, "refreshRate":F
    sget v1, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mRefreshRate:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_b

    .line 248
    return-void

    .line 250
    :cond_b
    sput v0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mRefreshRate:F

    .line 251
    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v1, v0

    float-to-long v1, v1

    sput-wide v1, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mFrameIntervalMs:J

    .line 252
    return-void
.end method


# virtual methods
.method public disableForSpecialRate()Z
    .registers 4

    .line 258
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkScrollIdentifyOn60hz()Z

    move-result v0

    if-eqz v0, :cond_10

    sget v0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mRefreshRate:F

    const/high16 v1, 0x42700000    # 60.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 260
    .local v0, "result":Z
    :goto_11
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v1

    if-eqz v1, :cond_31

    if-eqz v0, :cond_31

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filter specila rate when scrolling: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mRefreshRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScrollIdentify"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_31
    return v0
.end method

.method public inertialScrollCheck(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 8
    .param p1, "action"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "obj"    # Ljava/lang/Object;

    .line 405
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x2

    if-ne p1, v2, :cond_f

    .line 407
    invoke-static {}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->getInstance()Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->switchToFPSGo(Z)V

    .line 409
    iput-boolean v0, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mIsScrollLockAcquired:Z

    .line 410
    return-void

    .line 413
    :cond_f
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 414
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inertialScrollCheck action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pkgName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " obj="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->scrollerLock:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ScrollIdentify"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_45
    invoke-direct {p0, p1}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->boostBeginEndCheck(I)Z

    move-result v2

    .line 419
    .local v2, "shouldBoost":Z
    invoke-direct {p0, v2, p3}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->checkScroller(ZLjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    .line 420
    return-void

    .line 423
    :cond_50
    iget-boolean v3, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mIsScrollLockAcquired:Z

    if-nez v3, :cond_5c

    if-eqz v2, :cond_5c

    .line 424
    invoke-direct {p0, v1, p2}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->inertialScrollHint(ZLjava/lang/String;)V

    .line 425
    iput-boolean v1, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mIsScrollLockAcquired:Z

    goto :goto_65

    .line 426
    :cond_5c
    if-eqz v3, :cond_65

    if-nez v2, :cond_65

    .line 427
    invoke-direct {p0, v0, p2}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->inertialScrollHint(ZLjava/lang/String;)V

    .line 428
    iput-boolean v0, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mIsScrollLockAcquired:Z

    .line 430
    :cond_65
    :goto_65
    return-void
.end method

.method public isScroll()Z
    .registers 3

    .line 579
    sget-object v0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->SCROLL_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 580
    :try_start_3
    iget-boolean v1, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mIsScrolling:Z

    monitor-exit v0

    return v1

    .line 581
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public scrollActionsDispatcher(Lcom/mediatek/boostfwk/scenario/scroll/ScrollScenario;)V
    .registers 12
    .param p1, "scenario"    # Lcom/mediatek/boostfwk/scenario/scroll/ScrollScenario;

    .line 150
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkScrollIdentify()Z

    move-result v0

    if-eqz v0, :cond_100

    if-eqz p1, :cond_100

    .line 151
    invoke-virtual {p1}, Lcom/mediatek/boostfwk/scenario/scroll/ScrollScenario;->getScenarioAction()I

    move-result v0

    .line 152
    .local v0, "action":I
    invoke-virtual {p1}, Lcom/mediatek/boostfwk/scenario/scroll/ScrollScenario;->getBoostStatus()I

    move-result v1

    .line 153
    .local v1, "status":I
    invoke-virtual {p1}, Lcom/mediatek/boostfwk/scenario/scroll/ScrollScenario;->getScenarioInputEvent()Landroid/view/MotionEvent;

    move-result-object v2

    .line 154
    .local v2, "event":Landroid/view/MotionEvent;
    invoke-virtual {p1}, Lcom/mediatek/boostfwk/scenario/scroll/ScrollScenario;->getScenarioObj()Ljava/lang/Object;

    move-result-object v3

    .line 155
    .local v3, "object":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 156
    .local v4, "packageName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 158
    .local v5, "viewContext":Landroid/content/Context;
    invoke-virtual {p1}, Lcom/mediatek/boostfwk/scenario/scroll/ScrollScenario;->getScenarioContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_24

    .line 159
    invoke-virtual {p1}, Lcom/mediatek/boostfwk/scenario/scroll/ScrollScenario;->getScenarioContext()Landroid/content/Context;

    move-result-object v5

    .line 161
    :cond_24
    if-nez v5, :cond_27

    .line 162
    return-void

    .line 165
    :cond_27
    iget-object v6, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->activityInfo:Lcom/mediatek/boostfwk/info/ActivityInfo;

    if-nez v6, :cond_31

    .line 166
    invoke-static {}, Lcom/mediatek/boostfwk/info/ActivityInfo;->getInstance()Lcom/mediatek/boostfwk/info/ActivityInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->activityInfo:Lcom/mediatek/boostfwk/info/ActivityInfo;

    .line 169
    :cond_31
    iget-object v6, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->activityInfo:Lcom/mediatek/boostfwk/info/ActivityInfo;

    invoke-virtual {v6}, Lcom/mediatek/boostfwk/info/ActivityInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 170
    if-nez v4, :cond_3d

    .line 171
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 173
    :cond_3d
    if-eqz v4, :cond_ff

    const-string v6, "android"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4d

    invoke-direct {p0, v4}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->checkSystemAPP(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_ff

    .line 174
    :cond_4d
    invoke-static {v4}, Lcom/mediatek/boostfwk/utils/TasksUtil;->isAPPInStrictMode(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_55

    goto/16 :goto_ff

    .line 178
    :cond_55
    sget-object v6, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mDispatcherPkgName:Ljava/lang/String;

    const/4 v7, -0x1

    if-eqz v6, :cond_60

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_62

    .line 179
    :cond_60
    iput v7, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->applicationType:I

    .line 182
    :cond_62
    iget v6, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->applicationType:I

    if-ne v6, v7, :cond_69

    .line 183
    invoke-direct {p0, v4}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->checkAppType(Ljava/lang/String;)V

    .line 186
    :cond_69
    iget v6, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->applicationType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6f

    .line 187
    return-void

    .line 191
    :cond_6f
    iget-object v6, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v7, 0x0

    const-string v8, "ScrollIdentify"

    if-nez v6, :cond_92

    .line 193
    :try_start_76
    new-instance v6, Landroid/view/GestureDetector;

    new-instance v9, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify$ScrollGestureListener;

    invoke-direct {v9, p0}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify$ScrollGestureListener;-><init>(Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;)V

    invoke-direct {v6, v5, v9}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v6, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mGestureDetector:Landroid/view/GestureDetector;
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_82} :catch_83

    .line 201
    goto :goto_92

    .line 194
    :catch_83
    move-exception v6

    .line 195
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v9

    if-eqz v9, :cond_8f

    .line 196
    const-string v9, "layout not inflate, cannot create GestureDetector,try to next time."

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_8f
    iput-object v7, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mGestureDetector:Landroid/view/GestureDetector;

    .line 200
    return-void

    .line 203
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_92
    :goto_92
    iget-object v6, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->activityChangeListener:Lcom/mediatek/boostfwk/info/ActivityInfo$ActivityChangeListener;

    if-nez v6, :cond_a2

    .line 204
    new-instance v6, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify$ActivityListener;

    invoke-direct {v6, v7}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify$ActivityListener;-><init>(Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify$1;)V

    iput-object v6, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->activityChangeListener:Lcom/mediatek/boostfwk/info/ActivityInfo$ActivityChangeListener;

    .line 205
    iget-object v7, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->activityInfo:Lcom/mediatek/boostfwk/info/ActivityInfo;

    invoke-virtual {v7, v6}, Lcom/mediatek/boostfwk/info/ActivityInfo;->registerActivityListener(Lcom/mediatek/boostfwk/info/ActivityInfo$ActivityChangeListener;)V

    .line 208
    :cond_a2
    invoke-direct {p0}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->updateRefreshRate()V

    .line 209
    sput-object v4, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mDispatcherPkgName:Ljava/lang/String;

    .line 211
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v6

    if-eqz v6, :cond_d4

    .line 212
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", Scroll action dispatcher to = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", viewContext = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_d4
    packed-switch v0, :pswitch_data_102

    .line 239
    const-string v6, "Not found dispatcher scroll action."

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_100

    .line 229
    :pswitch_dd
    iget-boolean v6, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mHaveMoveEvent:Z

    if-eqz v6, :cond_100

    .line 230
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v6

    if-eqz v6, :cond_ec

    .line 231
    const-string v6, "using scroller when HORIZONTAL scroll"

    invoke-static {v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_ec
    const/4 v6, -0x2

    invoke-virtual {p0, v6, v4, v3}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->inertialScrollCheck(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_100

    .line 226
    :pswitch_f1
    invoke-virtual {p0, v1, v4, v3}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->inertialScrollCheck(ILjava/lang/String;Ljava/lang/Object;)V

    .line 227
    goto :goto_100

    .line 223
    :pswitch_f5
    invoke-direct {p0, v1, v4}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->inputDrawCheck(ILjava/lang/String;)V

    .line 224
    goto :goto_100

    .line 218
    :pswitch_f9
    if-eqz v2, :cond_100

    .line 219
    invoke-direct {p0, v2}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->inputEventCheck(Landroid/view/MotionEvent;)V

    goto :goto_100

    .line 175
    :cond_ff
    :goto_ff
    return-void

    .line 243
    .end local v0    # "action":I
    .end local v1    # "status":I
    .end local v2    # "event":Landroid/view/MotionEvent;
    .end local v3    # "object":Ljava/lang/Object;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "viewContext":Landroid/content/Context;
    :cond_100
    :goto_100
    return-void

    nop

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_f9
        :pswitch_f5
        :pswitch_f1
        :pswitch_dd
    .end packed-switch
.end method

.method public setScrolling(ZLjava/lang/String;)V
    .registers 7
    .param p1, "scrolling"    # Z
    .param p2, "msg"    # Ljava/lang/String;

    .line 585
    sget-object v0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->SCROLL_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 586
    :try_start_3
    iput-boolean p1, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mIsScrolling:Z

    .line 587
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " curScrollingState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mIsScrolling:Z

    .line 589
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 588
    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 590
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 592
    :cond_2d
    monitor-exit v0

    .line 593
    return-void

    .line 592
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

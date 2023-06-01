.class public Lcom/mediatek/view/impl/ViewDebugManagerImpl;
.super Lcom/mediatek/view/ViewDebugManager;
.source "ViewDebugManagerImpl.java"


# static fields
.field private static final DATE_FORMAT_STRING:Ljava/lang/String; = "yyyyMMdd_hhmmss"

.field private static final DBG_APP_DRAWING_MODE:I

.field private static final DBG_APP_DRAWING_MODE_FORCE_HWLAYER:I = 0x4

.field private static final DBG_APP_DRAWING_MODE_FORCE_HWUI:I = 0x1

.field private static final DBG_APP_DRAWING_MODE_FORCE_SW:I = 0x2

.field private static final DBG_APP_DRAWING_MODE_FORCE_SWLAYER:I = 0x8

.field private static final DBG_APP_DRAWING_MODE_NOT_SET:I = 0x0

.field static final DBG_APP_FAST_LAUNCH_ENHANCE:Z

.field static final DBG_APP_LAUNCH_ENHANCE:Z = true

.field private static final DBG_TRANSP:Z

.field private static final DEBUG_CHOREOGRAPHER_FRAMES_FLAG:I = 0x20000000

.field private static final DEBUG_CHOREOGRAPHER_JANK_FLAG:I = 0x10000000

.field private static final DEBUG_CONFIGURATION_FLAG:I = 0x100

.field private static final DEBUG_DEFAULT_FLAG:I = 0x200

.field private static final DEBUG_DIALOG_FLAG:I = 0x8

.field private static final DEBUG_DRAW_FLAG:I = 0x2

.field private static final DEBUG_ENABLE_ALL_FLAG:I = 0x1

.field private static final DEBUG_FOCUS_FLAG:I = 0x1000000

.field private static final DEBUG_FPS_FLAG:I = 0x400

.field private static final DEBUG_HWUI_FLAG:I = 0x800

.field private static final DEBUG_IME_ANR_FLAG:I = 0x8000

.field private static final DEBUG_IMF_FLAG:I = 0x80

.field private static final DEBUG_INPUT_FLAG:I = 0x1000

.field private static final DEBUG_INPUT_RESIZE_FLAG:I = 0x10

.field private static final DEBUG_INPUT_STAGES_FLAG:I = 0x400000

.field private static final DEBUG_INVALIDATE_FLAG:I = 0x40000

.field private static final DEBUG_KEEP_SCREEN_ON_FLAG:I = 0x800000

.field private static final DEBUG_KEY_FLAG:I = 0x2000

.field private static final DEBUG_LAYOUT_FLAG:I = 0x4

.field private static final DEBUG_LIFECYCLE_FLAG:I = 0x10000

.field private static final DEBUG_MET_TRACE_FLAG:I = 0x40000000

.field private static final DEBUG_MOTION_FLAG:I = 0x4000

.field private static final DEBUG_ORIENTATION_FLAG:I = 0x20

.field private static final DEBUG_REQUESTLAYOUT_FLAG:I = 0x20000

.field private static final DEBUG_SCHEDULETRAVERSALS_FLAG:I = 0x80000

.field private static final DEBUG_SYSTRACE_DRAW_FLAG:I = 0x2000000

.field private static final DEBUG_SYSTRACE_LAYOUT_FLAG:I = 0x8000000

.field private static final DEBUG_SYSTRACE_MEASURE_FLAG:I = 0x4000000

.field private static final DEBUG_TOUCHMODE_FLAG:I = 0x100000

.field private static final DEBUG_TOUCH_FLAG:I = 0x200000

.field private static final DEBUG_TRACKBALL_FLAG:I = 0x40

.field private static final DUMP_IMAGE_FORMAT:Ljava/lang/String; = ".png"

.field private static final DUMP_IMAGE_PTAH:Ljava/lang/String; = "/data/dump/"

.field public static final INPUT_TIMEOUT:I = 0x1770

.field private static final LOG_DISABLED:I = 0x0

.field private static final LOG_ENABLED:I = 0x1

.field private static final LOG_PROPERTY_NAME:Ljava/lang/String; = "mtk_d.viewroot.enable"

.field private static final USE_RENDER_THREAD:Z = false

.field private static final VIEWROOT_LOG_TAG:Ljava/lang/String; = "ViewRoot"

.field private static final VIEW_LOG_TAG:Ljava/lang/String; = "View"

.field private static sIdent:J


# instance fields
.field private mCurrentKeyEvent:Landroid/view/KeyEvent;

.field private mCurrentMotion:Landroid/view/MotionEvent;

.field private mIdent:J

.field private mInputStageRecored:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyEventStartTime:J

.field private mKeyEventStatus:Ljava/lang/String;

.field private mMotionEventStartTime:J

.field private mMotionEventStatus:Ljava/lang/String;

.field private mPreviousKeyEvent:Landroid/view/KeyEvent;

.field private mPreviousKeyEventFinishTime:J

.field private mPreviousMotion:Landroid/view/MotionEvent;

.field private mPreviousMotionEventFinishTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 92
    nop

    .line 93
    const-string v0, "mtk_ro.mtk_dbg_app_drawing_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->DBG_APP_DRAWING_MODE:I

    .line 102
    const-string v0, "mtk_d.view.transparentRegion"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->DBG_TRANSP:Z

    .line 109
    const-string v0, "mtk_ro.mtk_perf_fast_start_win"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_1c

    move v1, v2

    :cond_1c
    sput-boolean v1, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->DBG_APP_FAST_LAUNCH_ENHANCE:Z

    .line 115
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->sIdent:J

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Lcom/mediatek/view/ViewDebugManager;-><init>()V

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->mInputStageRecored:Ljava/util/HashMap;

    .line 605
    const-string v0, "0: Finish handle input event"

    iput-object v0, p0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->mKeyEventStatus:Ljava/lang/String;

    .line 606
    iput-object v0, p0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->mMotionEventStatus:Ljava/lang/String;

    return-void
.end method

.method private static checkAppLaunchTimeProperty()Z
    .registers 3

    .line 449
    const-string v0, "persist.applaunchtime.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_b

    move v1, v2

    :cond_b
    return v1
.end method

.method static checkViewRootImplLogProperty()V
    .registers 8

    .line 370
    const-string v0, "ViewRoot"

    const-string v1, "mtk_d.viewroot.enable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, "propString":Ljava/lang/String;
    const/4 v2, 0x1

    sput-boolean v2, Lcom/mediatek/view/ViewDebugManager;->DEBUG_USER:Z

    .line 372
    sget-boolean v3, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->DBG_TRANSP:Z

    sput-boolean v3, Lcom/mediatek/view/ViewDebugManager;->DBG_TRANSP:Z

    .line 373
    if-eqz v1, :cond_1d4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1d4

    .line 374
    const/4 v3, 0x0

    .line 376
    .local v3, "logFilter":I
    const/16 v4, 0x10

    :try_start_1a
    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_1e} :catch_20

    move v3, v5

    .line 379
    goto :goto_35

    .line 377
    :catch_20
    move-exception v5

    .line 378
    .local v5, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid format of propery string: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :goto_35
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkViewRootImplLogProperty: propString = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",logFilter = #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 381
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    and-int/lit8 v0, v3, 0x1

    const/4 v5, 0x0

    if-ne v0, v2, :cond_5c

    move v0, v2

    goto :goto_5d

    :cond_5c
    move v0, v5

    :goto_5d
    sput-boolean v0, Lcom/mediatek/view/ViewDebugManager;->LOCAL_LOGV:Z

    sput-boolean v0, Landroid/view/ViewRootImpl;->LOCAL_LOGV:Z

    .line 385
    and-int/lit8 v0, v3, 0x2

    const/4 v6, 0x2

    if-ne v0, v6, :cond_68

    move v0, v2

    goto :goto_69

    :cond_68
    move v0, v5

    :goto_69
    sput-boolean v0, Lcom/mediatek/view/ViewDebugManager;->DEBUG_DRAW:Z

    sput-boolean v0, Landroid/view/ViewRootImpl;->DEBUG_DRAW:Z

    .line 387
    and-int/lit8 v0, v3, 0x4

    const/4 v6, 0x4

    if-ne v0, v6, :cond_74

    move v0, v2

    goto :goto_75

    :cond_74
    move v0, v5

    :goto_75
    sput-boolean v0, Lcom/mediatek/view/ViewDebugManager;->DEBUG_LAYOUT:Z

    sput-boolean v0, Landroid/view/ViewRootImpl;->DEBUG_LAYOUT:Z

    .line 389
    and-int/lit8 v0, v3, 0x8

    const/16 v6, 0x8

    if-ne v0, v6, :cond_81

    move v0, v2

    goto :goto_82

    :cond_81
    move v0, v5

    :goto_82
    sput-boolean v0, Lcom/mediatek/view/ViewDebugManager;->DEBUG_DIALOG:Z

    sput-boolean v0, Landroid/view/ViewRootImpl;->DEBUG_DIALOG:Z

    .line 391
    and-int/lit8 v0, v3, 0x10

    if-ne v0, v4, :cond_8c

    move v0, v2

    goto :goto_8d

    :cond_8c
    move v0, v5

    :goto_8d
    sput-boolean v0, Lcom/mediatek/view/ViewDebugManager;->DEBUG_INPUT_RESIZE:Z

    sput-boolean v0, Landroid/view/ViewRootImpl;->DEBUG_INPUT_RESIZE:Z

    .line 393
    and-int/lit8 v0, v3, 0x20

    const/16 v4, 0x20

    if-ne v0, v4, :cond_99

    move v0, v2

    goto :goto_9a

    :cond_99
    move v0, v5

    :goto_9a
    sput-boolean v0, Lcom/mediatek/view/ViewDebugManager;->DEBUG_ORIENTATION:Z

    sput-boolean v0, Landroid/view/ViewRootImpl;->DEBUG_ORIENTATION:Z

    .line 395
    and-int/lit8 v0, v3, 0x40

    const/16 v4, 0x40

    if-ne v0, v4, :cond_a6

    move v0, v2

    goto :goto_a7

    :cond_a6
    move v0, v5

    :goto_a7
    sput-boolean v0, Lcom/mediatek/view/ViewDebugManager;->DEBUG_TRACKBALL:Z

    sput-boolean v0, Landroid/view/ViewRootImpl;->DEBUG_TRACKBALL:Z

    .line 397
    and-int/lit16 v0, v3, 0x80

    const/16 v4, 0x80

    if-ne v0, v4, :cond_b3

    move v0, v2

    goto :goto_b4

    :cond_b3
    move v0, v5

    :goto_b4
    sput-boolean v0, Lcom/mediatek/view/ViewDebugManager;->DEBUG_IMF:Z

    sput-boolean v0, Landroid/view/ViewRootImpl;->DEBUG_IMF:Z

    .line 399
    and-int/lit16 v0, v3, 0x100

    const/16 v4, 0x100

    if-ne v0, v4, :cond_c0

    move v0, v2

    goto :goto_c1

    :cond_c0
    move v0, v5

    :goto_c1
    sput-boolean v0, Lcom/mediatek/view/ViewDebugManager;->DEBUG_CONFIGURATION:Z

    sput-boolean v0, Landroid/view/ViewRootImpl;->DEBUG_CONFIGURATION:Z

    .line 401
    and-int/lit16 v0, v3, 0x200

    const/16 v4, 0x200

    if-ne v0, v4, :cond_cd

    move v0, v2

    goto :goto_ce

    :cond_cd
    move v0, v5

    :goto_ce
    sput-boolean v0, Lcom/mediatek/view/ViewDebugManager;->DBG:Z

    sput-boolean v0, Landroid/view/ViewRootImpl;->DBG:Z

    .line 403
    and-int/lit16 v0, v3, 0x400

    const/16 v4, 0x400

    if-ne v0, v4, :cond_da

    move v0, v2

    goto :goto_db

    :cond_da
    move v0, v5

    :goto_db
    sput-boolean v0, Lcom/mediatek/view/ViewDebugManager;->DEBUG_FPS:Z

    sput-boolean v0, Landroid/view/ViewRootImpl;->DEBUG_FPS:Z

    .line 405
    const/high16 v0, 0x400000

    and-int v4, v3, v0

    if-ne v4, v0, :cond_e7

    move v0, v2

    goto :goto_e8

    :cond_e7
    move v0, v5

    :goto_e8
    sput-boolean v0, Lcom/mediatek/view/ViewDebugManager;->DEBUG_INPUT_STAGES:Z

    sput-boolean v0, Landroid/view/ViewRootImpl;->DEBUG_INPUT_STAGES:Z

    .line 407
    const/high16 v0, 0x800000

    and-int v4, v3, v0

    if-ne v4, v0, :cond_f4

    move v0, v2

    goto :goto_f5

    :cond_f4
    move v0, v5

    :goto_f5
    sput-boolean v0, Lcom/mediatek/view/ViewDebugManager;->DEBUG_KEEP_SCREEN_ON:Z

    sput-boolean v0, Landroid/view/ViewRootImpl;->DEBUG_KEEP_SCREEN_ON:Z

    .line 409
    and-int/lit16 v0, v3, 0x800

    const/16 v4, 0x800

    if-ne v0, v4, :cond_101

    move v0, v2

    goto :goto_102

    :cond_101
    move v0, v5

    :goto_102
    sput-boolean v0, Lcom/mediatek/view/ViewDebugManager;->DEBUG_HWUI:Z

    .line 410
    and-int/lit16 v0, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v0, v4, :cond_10c

    move v0, v2

    goto :goto_10d

    :cond_10c
    move v0, v5

    :goto_10d
    sput-boolean v0, Lcom/mediatek/view/ViewDebugManager;->DEBUG_INPUT:Z

    .line 411
    sget-boolean v0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->DEBUG_INPUT:Z

    if-nez v0, :cond_11c

    and-int/lit16 v0, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v0, v4, :cond_11a

    goto :goto_11c

    :cond_11a
    move v0, v5

    goto :goto_11d

    :cond_11c
    :goto_11c
    move v0, v2

    :goto_11d
    sput-boolean v0, Lcom/mediatek/view/ViewDebugManager;->DEBUG_KEY:Z

    .line 413
    sget-boolean v0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->DEBUG_INPUT:Z

    if-nez v0, :cond_12c

    and-int/lit16 v0, v3, 0x4000

    const/16 v4, 0x4000

    if-ne v0, v4, :cond_12a

    goto :goto_12c

    :cond_12a
    move v0, v5

    goto :goto_12d

    :cond_12c
    :goto_12c
    move v0, v2

    :goto_12d
    sput-boolean v0, Lcom/mediatek/view/ViewDebugManager;->DEBUG_MOTION:Z

    .line 415
    const v0, 0x8000

    and-int v4, v3, v0

    if-ne v4, v0, :cond_138

    move v0, v2

    goto :goto_139

    :cond_138
    move v0, v5

    :goto_139
    sput-boolean v0, Lcom/mediatek/view/ViewDebugManager;->DEBUG_IME_ANR:Z

    .line 417
    const/high16 v0, 0x10000

    and-int v4, v3, v0

    if-ne v4, v0, :cond_143

    move v0, v2

    goto :goto_144

    :cond_143
    move v0, v5

    :goto_144
    sput-boolean v0, Lcom/mediatek/view/ViewDebugManager;->DEBUG_LIFECYCLE:Z

    .line 419
    const/high16 v0, 0x20000

    and-int v4, v3, v0

    if-ne v4, v0, :cond_14e

    move v0, v2

    goto :goto_14f

    :cond_14e
    move v0, v5

    :goto_14f
    sput-boolean v0, Lcom/mediatek/view/ViewDebugManager;->DEBUG_REQUESTLAYOUT:Z

    .line 421
    const/high16 v0, 0x40000

    and-int/2addr v0, v3

    const/high16 v4, 0x40000

    if-ne v0, v4, :cond_15a

    move v0, v2

    goto :goto_15b

    :cond_15a
    move v0, v5

    :goto_15b
    sput-boolean v0, Lcom/mediatek/view/ViewDebugManager;->DEBUG_INVALIDATE:Z

    .line 423
    const/high16 v0, 0x80000

    and-int/2addr v0, v3

    const/high16 v4, 0x80000

    if-ne v0, v4, :cond_166

    move v0, v2

    goto :goto_167

    :cond_166
    move v0, v5

    :goto_167
    sput-boolean v0, Lcom/mediatek/view/ViewDebugManager;->DEBUG_SCHEDULETRAVERSALS:Z

    .line 425
    const/high16 v0, 0x100000

    and-int/2addr v0, v3

    const/high16 v4, 0x100000

    if-ne v0, v4, :cond_172

    move v0, v2

    goto :goto_173

    :cond_172
    move v0, v5

    :goto_173
    sput-boolean v0, Lcom/mediatek/view/ViewDebugManager;->DEBUG_TOUCHMODE:Z

    .line 427
    const/high16 v0, 0x200000

    and-int/2addr v0, v3

    const/high16 v4, 0x200000

    if-ne v0, v4, :cond_17e

    move v0, v2

    goto :goto_17f

    :cond_17e
    move v0, v5

    :goto_17f
    sput-boolean v0, Lcom/mediatek/view/ViewDebugManager;->DEBUG_TOUCH:Z

    .line 428
    const/high16 v0, 0x1000000

    and-int/2addr v0, v3

    const/high16 v4, 0x1000000

    if-ne v0, v4, :cond_18a

    move v0, v2

    goto :goto_18b

    :cond_18a
    move v0, v5

    :goto_18b
    sput-boolean v0, Lcom/mediatek/view/ViewDebugManager;->DEBUG_FOCUS:Z

    .line 429
    const/high16 v0, 0x4000000

    and-int/2addr v0, v3

    const/high16 v4, 0x4000000

    if-ne v0, v4, :cond_196

    move v0, v2

    goto :goto_197

    :cond_196
    move v0, v5

    :goto_197
    sput-boolean v0, Lcom/mediatek/view/ViewDebugManager;->DEBUG_SYSTRACE_MEASURE:Z

    .line 431
    const/high16 v0, 0x8000000

    and-int/2addr v0, v3

    const/high16 v4, 0x8000000

    if-ne v0, v4, :cond_1a2

    move v0, v2

    goto :goto_1a3

    :cond_1a2
    move v0, v5

    :goto_1a3
    sput-boolean v0, Lcom/mediatek/view/ViewDebugManager;->DEBUG_SYSTRACE_LAYOUT:Z

    .line 433
    const/high16 v0, 0x2000000

    and-int/2addr v0, v3

    const/high16 v4, 0x2000000

    if-ne v0, v4, :cond_1ae

    move v0, v2

    goto :goto_1af

    :cond_1ae
    move v0, v5

    :goto_1af
    sput-boolean v0, Lcom/mediatek/view/ViewDebugManager;->DEBUG_SYSTRACE_DRAW:Z

    .line 435
    const/high16 v0, 0x10000000

    and-int/2addr v0, v3

    const/high16 v4, 0x10000000

    if-ne v0, v4, :cond_1ba

    move v0, v2

    goto :goto_1bb

    :cond_1ba
    move v0, v5

    :goto_1bb
    sput-boolean v0, Lcom/mediatek/view/ViewDebugManager;->DEBUG_CHOREOGRAPHER_JANK:Z

    .line 437
    const/high16 v0, 0x20000000

    and-int/2addr v0, v3

    const/high16 v4, 0x20000000

    if-ne v0, v4, :cond_1c6

    move v0, v2

    goto :goto_1c7

    :cond_1c6
    move v0, v5

    :goto_1c7
    sput-boolean v0, Lcom/mediatek/view/ViewDebugManager;->DEBUG_CHOREOGRAPHER_FRAMES:Z

    .line 439
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, v3

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v4, :cond_1d1

    goto :goto_1d2

    :cond_1d1
    move v2, v5

    :goto_1d2
    sput-boolean v2, Lcom/mediatek/view/ViewDebugManager;->DEBUG_MET_TRACE:Z

    .line 442
    .end local v3    # "logFilter":I
    :cond_1d4
    return-void
.end method

.method private getCurrentLevel(Landroid/view/View;)I
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 251
    const/4 v0, 0x0

    .line 252
    .local v0, "level":I
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 253
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_5
    if-eqz v1, :cond_15

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_15

    .line 254
    add-int/lit8 v0, v0, 0x1

    .line 255
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    .line 256
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 257
    .end local v2    # "v":Landroid/view/View;
    goto :goto_5

    .line 258
    :cond_15
    return v0
.end method

.method private getViewLayoutProperties(Landroid/view/View;)Ljava/lang/String;
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 238
    .local v0, "out":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Padding = {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_50

    .line 242
    const-string v1, ", BAD! no layout params"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6c

    .line 244
    :cond_50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :goto_6c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private sizeToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "size"    # I

    .line 262
    const/4 v0, -0x2

    if-ne p1, v0, :cond_6

    .line 263
    const-string v0, "wrap-content"

    return-object v0

    .line 265
    :cond_6
    const/4 v0, -0x1

    if-ne p1, v0, :cond_c

    .line 266
    const-string v0, "match-parent"

    return-object v0

    .line 268
    :cond_c
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method clearInputStageInfo()V
    .registers 2

    .line 498
    iget-object v0, p0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->mInputStageRecored:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 499
    return-void
.end method

.method public debug(Ljava/lang/String;Landroid/view/ViewGroup$MarginLayoutParams;)Ljava/lang/String;
    .registers 5
    .param p1, "output"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ViewGroup.MarginLayoutParams={ width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-direct {p0, v1}, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 273
    invoke-direct {p0, v1}, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", leftMargin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rightMargin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", topMargin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottomMargin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    return-object v0
.end method

.method public debugEventHandled(Landroid/view/View;Landroid/view/InputEvent;Ljava/lang/String;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/InputEvent;
    .param p3, "handler"    # Ljava/lang/String;

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event handle in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", handler = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void
.end method

.method public debugForceHWDraw(Z)Z
    .registers 5
    .param p1, "hwDraw"    # Z

    .line 126
    sget v0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->DBG_APP_DRAWING_MODE:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 128
    return v2

    .line 129
    :cond_8
    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_e

    .line 131
    const/4 v0, 0x0

    return v0

    .line 133
    :cond_e
    return p1
.end method

.method public debugForceHWLayer(I)I
    .registers 5
    .param p1, "hwLayer"    # I

    .line 138
    sget v0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->DBG_APP_DRAWING_MODE:I

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_9

    .line 140
    const/4 v0, 0x2

    return v0

    .line 141
    :cond_9
    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_10

    .line 143
    const/4 v0, 0x1

    return v0

    .line 145
    :cond_10
    return p1
.end method

.method public debugInputDispatchState(Landroid/view/InputEvent;Ljava/lang/String;)V
    .registers 4
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "state"    # Ljava/lang/String;

    .line 576
    instance-of v0, p1, Landroid/view/KeyEvent;

    if-eqz v0, :cond_8

    .line 577
    invoke-virtual {p0, p2}, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->setKeyDispatchState(Ljava/lang/String;)V

    goto :goto_b

    .line 579
    :cond_8
    invoke-virtual {p0, p2}, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->setMotionDispatchState(Ljava/lang/String;)V

    .line 581
    :goto_b
    return-void
.end method

.method public debugInputEventFinished(Ljava/lang/String;ZLandroid/view/InputEvent;Landroid/view/ViewRootImpl;)V
    .registers 14
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "handled"    # Z
    .param p3, "event"    # Landroid/view/InputEvent;
    .param p4, "root"    # Landroid/view/ViewRootImpl;

    .line 536
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 537
    .local v0, "currentTime":J
    instance-of v2, p3, Landroid/view/KeyEvent;

    const-string v3, "0: Finish handle input event"

    const/4 v4, 0x0

    if-eqz v2, :cond_20

    .line 538
    iget-object v2, p0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->mCurrentKeyEvent:Landroid/view/KeyEvent;

    iput-object v2, p0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->mPreviousKeyEvent:Landroid/view/KeyEvent;

    .line 539
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->mPreviousKeyEventFinishTime:J

    .line 540
    iput-object v4, p0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->mCurrentKeyEvent:Landroid/view/KeyEvent;

    .line 541
    iget-object v2, p0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->mKeyEventStatus:Ljava/lang/String;

    .line 542
    .local v2, "stage":Ljava/lang/String;
    iput-object v3, p0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->mKeyEventStatus:Ljava/lang/String;

    .line 543
    iget-wide v3, p0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->mKeyEventStartTime:J

    sub-long v3, v0, v3

    .local v3, "inputElapseTime":J
    goto :goto_34

    .line 545
    .end local v2    # "stage":Ljava/lang/String;
    .end local v3    # "inputElapseTime":J
    :cond_20
    iget-object v2, p0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->mCurrentMotion:Landroid/view/MotionEvent;

    iput-object v2, p0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->mPreviousMotion:Landroid/view/MotionEvent;

    .line 546
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->mPreviousMotionEventFinishTime:J

    .line 547
    iput-object v4, p0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->mCurrentMotion:Landroid/view/MotionEvent;

    .line 548
    iget-object v2, p0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->mMotionEventStatus:Ljava/lang/String;

    .line 549
    .restart local v2    # "stage":Ljava/lang/String;
    iput-object v3, p0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->mMotionEventStatus:Ljava/lang/String;

    .line 550
    iget-wide v3, p0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->mMotionEventStartTime:J

    sub-long v3, v0, v3

    .line 552
    .restart local v3    # "inputElapseTime":J
    :goto_34
    const-wide/16 v5, 0x1770

    cmp-long v5, v3, v5

    if-ltz v5, :cond_6b

    .line 553
    new-instance v5, Landroid/icu/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v5, v6}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 554
    .local v5, "simpleDateFormat":Landroid/icu/text/SimpleDateFormat;
    new-instance v6, Ljava/util/Date;

    sub-long v7, v0, v3

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 555
    .local v6, "enqueueTime":Ljava/util/Date;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ANR Warning]Input routeing takes more than 6000ms since "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual {v5, v6}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", this = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 555
    invoke-static {p1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-virtual {p0, p1, v5}, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->dumpInputStageInfo(Ljava/lang/String;Landroid/icu/text/SimpleDateFormat;)V

    .line 559
    .end local v5    # "simpleDateFormat":Landroid/icu/text/SimpleDateFormat;
    .end local v6    # "enqueueTime":Ljava/util/Date;
    :cond_6b
    invoke-virtual {p0}, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->clearInputStageInfo()V

    .line 562
    sget-boolean v5, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->DEBUG_ENG:Z

    if-nez v5, :cond_7e

    sget-boolean v5, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->DEBUG_INPUT:Z

    if-nez v5, :cond_7e

    sget-boolean v5, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->DEBUG_KEY:Z

    if-nez v5, :cond_7e

    sget-boolean v5, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->DEBUG_MOTION:Z

    if-eqz v5, :cond_f0

    .line 563
    :cond_7e
    instance-of v5, p3, Landroid/view/MotionEvent;

    const-string v6, ", stage = "

    const-string v7, "finishInputEvent: handled = "

    if-eqz v5, :cond_d0

    .line 564
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",event action = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v7, p3

    check-cast v7, Landroid/view/MotionEvent;

    .line 565
    invoke-virtual {v7}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    invoke-static {v7}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",x = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v7, p3

    check-cast v7, Landroid/view/MotionEvent;

    .line 566
    invoke-virtual {v7}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ",y = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v7, p3

    check-cast v7, Landroid/view/MotionEvent;

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 564
    invoke-static {p1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f0

    .line 569
    :cond_d0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",event = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_f0
    :goto_f0
    return-void
.end method

.method public debugInputEventStart(Landroid/view/InputEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 518
    instance-of v0, p1, Landroid/view/KeyEvent;

    const-string v1, "1: Start event from input"

    if-eqz v0, :cond_14

    .line 519
    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    iput-object v0, p0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->mCurrentKeyEvent:Landroid/view/KeyEvent;

    .line 520
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->mKeyEventStartTime:J

    .line 521
    iput-object v1, p0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->mKeyEventStatus:Ljava/lang/String;

    goto :goto_21

    .line 523
    :cond_14
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    iput-object v0, p0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->mCurrentMotion:Landroid/view/MotionEvent;

    .line 524
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->mMotionEventStartTime:J

    .line 525
    iput-object v1, p0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->mMotionEventStatus:Ljava/lang/String;

    .line 528
    :goto_21
    return-void
.end method

.method public debugInputStageDeliverd(Ljava/lang/Object;J)V
    .registers 6
    .param p1, "stage"    # Ljava/lang/Object;
    .param p2, "time"    # J

    .line 494
    iget-object v0, p0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->mInputStageRecored:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    return-void
.end method

.method public debugKeyDispatch(Landroid/view/View;Landroid/view/KeyEvent;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 151
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const-string v1, ", event = "

    const-string v2, "View"

    if-nez v0, :cond_25

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key down dispatch to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 153
    :cond_25
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_46

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key up dispatch to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_46
    :goto_46
    return-void
.end method

.method public debugOnDrawDone(Landroid/view/View;J)V
    .registers 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "start"    # J

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 187
    .local v0, "nowTime":J
    sub-long v2, v0, p2

    sget v4, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->DBG_TIMEOUT_VALUE:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    const-string v3, " ms"

    const-string v4, "time ="

    const-string v5, "View"

    if-lez v2, :cond_32

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ANR Warning]onDraw time too long, this ="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v6, v0, p2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_32
    sget-boolean v2, Lcom/mediatek/view/ViewDebugManager;->DEBUG_DRAW:Z

    if-eqz v2, :cond_55

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDraw done, this ="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v6, v0, p2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_55
    return-void
.end method

.method public debugOnLayoutEnd(Landroid/view/View;J)V
    .registers 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "logTime"    # J

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 226
    .local v0, "nowTime":J
    sub-long v2, v0, p2

    sget v4, Lcom/mediatek/view/ViewDebugManager;->DBG_TIMEOUT_VALUE:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    const-string v3, " ms"

    const-string v4, "View"

    if-lez v2, :cond_32

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ANR Warning]onLayout time too long, this ="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "time ="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v5, v0, p2

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_32
    sget-boolean v2, Lcom/mediatek/view/ViewDebugManager;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_57

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "view layout end, this ="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", time ="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v5, v0, p2

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_57
    return-void
.end method

.method public debugOnMeasureEnd(Landroid/view/View;J)V
    .registers 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "logTime"    # J

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 213
    .local v0, "nowTime":J
    sub-long v2, v0, p2

    sget v4, Lcom/mediatek/view/ViewDebugManager;->DBG_TIMEOUT_VALUE:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    const-string v3, " ms"

    const-string v4, "View"

    if-lez v2, :cond_32

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ANR Warning]onMeasure time too long, this ="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "time ="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v5, v0, p2

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_32
    sget-boolean v2, Lcom/mediatek/view/ViewDebugManager;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_6f

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "view onMeasure end (measure cache), this ="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", mMeasuredWidth = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mMeasuredHeight = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", time ="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v5, v0, p2

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 218
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_6f
    return-void
.end method

.method public debugOnMeasureStart(Landroid/view/View;IIII)J
    .registers 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I
    .param p4, "oldWidthMeasureSpec"    # I
    .param p5, "oldHeightMeasureSpec"    # I

    .line 200
    sget-boolean v0, Lcom/mediatek/view/ViewDebugManager;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_51

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "view measure start, this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", widthMeasureSpec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", heightMeasureSpec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mOldWidthMeasureSpec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mOldHeightMeasureSpec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-static {p5}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->getViewLayoutProperties(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 208
    .local v0, "logTime":J
    return-wide v0
.end method

.method public debugTouchDispatched(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 164
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v1, ", event x = "

    const-string v2, ",y = "

    const-string v3, "View"

    if-nez v0, :cond_35

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Touch down dispatch to "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9f

    .line 167
    :cond_35
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_65

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Touch up dispatch to "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9f

    .line 171
    :cond_65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(View)dispatchTouchEvent: event action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-static {v1}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :goto_9f
    return-void
.end method

.method public debugTraveralDone(Ljava/lang/Object;Ljava/lang/Object;ZLandroid/view/ViewRootImpl;ZZLjava/lang/String;)V
    .registers 13
    .param p1, "attachInfo"    # Ljava/lang/Object;
    .param p2, "threadRender"    # Ljava/lang/Object;
    .param p3, "hwuiEnabled"    # Z
    .param p4, "root"    # Landroid/view/ViewRootImpl;
    .param p5, "visable"    # Z
    .param p6, "cancelDraw"    # Z
    .param p7, "logTag"    # Ljava/lang/String;

    .line 593
    const-wide/16 v0, -0x3e7

    .line 594
    .local v0, "frameCount":J
    const-string v2, "0x0"

    .line 595
    .local v2, "rendererAddr":Ljava/lang/String;
    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    if-eqz p3, :cond_d

    .line 597
    iget v3, p4, Landroid/view/ViewRootImpl;->mFrame:I

    int-to-long v0, v3

    .line 599
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ViewRoot performTraversals and draw- : frame#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", isViewVisible = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " (cancelDraw = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget v3, p4, Landroid/view/ViewRootImpl;->mFrame:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p4, Landroid/view/ViewRootImpl;->mFrame:I

    .line 603
    return-void
.end method

.method public debugViewGroupChildMeasure(Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .registers 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "lp"    # Landroid/view/ViewGroup$LayoutParams;
    .param p4, "widthUsed"    # I
    .param p5, "heightUsed"    # I

    .line 304
    invoke-direct {p0, p2}, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->getCurrentLevel(Landroid/view/View;)I

    move-result v0

    .line 305
    .local v0, "level":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ViewGroup][measureChildWithMargins] +"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , child = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", child params (width, height) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", widthUsed = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", heightUsed = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", parent padding (L,R,T,B) = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 305
    const-string v2, "View"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return-void
.end method

.method public debugViewGroupChildMeasure(Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;II)V
    .registers 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "lp"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p4, "widthUsed"    # I
    .param p5, "heightUsed"    # I

    .line 292
    invoke-direct {p0, p2}, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->getCurrentLevel(Landroid/view/View;)I

    move-result v0

    .line 293
    .local v0, "level":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ViewGroup][measureChildWithMargins] +"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , child = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", child margin (L,R,T,B) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", widthUsed = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", heightUsed = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", parent padding (L,R,T,B) = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 293
    const-string v2, "View"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-void
.end method

.method public debugViewRemoved(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Thread;)V
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "rootThread"    # Ljava/lang/Thread;

    .line 279
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    const-string v1, " view == "

    const-string v2, "View"

    if-eqz v0, :cond_2a

    .line 280
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq p3, v0, :cond_2a

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Warning] remove view from parent not in UIThread: parent = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_2a
    sget-boolean v0, Lcom/mediatek/view/ViewDebugManager;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_4d

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "will remove view from parent "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 288
    :cond_4d
    return-void
.end method

.method public debugViewRootConstruct(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/ViewRootImpl;)V
    .registers 11
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "context"    # Ljava/lang/Object;
    .param p3, "thread"    # Ljava/lang/Object;
    .param p4, "chorgrapher"    # Ljava/lang/Object;
    .param p5, "traversal"    # Ljava/lang/Object;
    .param p6, "root"    # Landroid/view/ViewRootImpl;

    .line 320
    sget-wide v0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->sIdent:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->sIdent:J

    iput-wide v0, p6, Landroid/view/ViewRootImpl;->mIdent:J

    .line 321
    invoke-static {}, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->checkViewRootImplLogProperty()V

    .line 322
    sget-boolean v0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->LOCAL_LOGV:Z

    if-eqz v0, :cond_14

    .line 323
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->enableLog(Ljava/lang/String;Z)V

    .line 326
    :cond_14
    sget-boolean v0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_4c

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewRootImpl construct: context = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mThread = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mChoreographer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTraversalRunnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_4c
    return-void
.end method

.method public dumpInputDispatchingStatus(Ljava/lang/String;)V
    .registers 16
    .param p1, "logTag"    # Ljava/lang/String;

    .line 460
    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 461
    .local v0, "simpleDateFormat":Landroid/icu/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->mKeyEventStartTime:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 462
    .local v1, "date":Ljava/util/Date;
    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->mPreviousKeyEventFinishTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 463
    .local v2, "date2":Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->mKeyEventStartTime:J

    sub-long/2addr v3, v5

    .line 464
    .local v3, "dispatchTime":J
    iget-object v5, p0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->mCurrentKeyEvent:Landroid/view/KeyEvent;

    const-string v6, ",finish at "

    const-string v7, "ms."

    const-string v8, ", spent "

    const-string v9, ",start at "

    const-string v10, " status is "

    const-string v11, "Dispatch "

    if-nez v5, :cond_52

    .line 465
    const-string v5, "ANR Key Analyze: No Key event currently."

    invoke-static {p1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ANR Key Analyze: Previeous Event "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->mPreviousKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    invoke-virtual {v0, v2}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 466
    invoke-static {p1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_81

    .line 469
    :cond_52
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->mCurrentKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->mKeyEventStatus:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 469
    invoke-static {p1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :goto_81
    iget-object v5, p0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->mCurrentMotion:Landroid/view/MotionEvent;

    if-nez v5, :cond_b0

    .line 475
    iget-wide v7, p0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->mPreviousMotionEventFinishTime:J

    invoke-virtual {v2, v7, v8}, Ljava/util/Date;->setTime(J)V

    .line 476
    const-string v5, "ANR Motion Analyze: No motion event currently."

    invoke-static {p1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ANR Motion Analyze: Previeous Event "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->mPreviousMotion:Landroid/view/MotionEvent;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    invoke-virtual {v0, v2}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 477
    invoke-static {p1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ec

    .line 480
    :cond_b0
    iget-wide v5, p0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->mMotionEventStartTime:J

    invoke-virtual {v1, v5, v6}, Ljava/util/Date;->setTime(J)V

    .line 481
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v12, p0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->mMotionEventStartTime:J

    sub-long v3, v5, v12

    .line 482
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->mCurrentMotion:Landroid/view/MotionEvent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->mMotionEventStatus:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 482
    invoke-static {p1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :goto_ec
    invoke-virtual {p0, p1, v0}, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->dumpInputStageInfo(Ljava/lang/String;Landroid/icu/text/SimpleDateFormat;)V

    .line 488
    invoke-virtual {p0}, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->clearInputStageInfo()V

    .line 490
    return-void
.end method

.method dumpInputStageInfo(Ljava/lang/String;Landroid/icu/text/SimpleDateFormat;)V
    .registers 10
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "sdf"    # Landroid/icu/text/SimpleDateFormat;

    .line 502
    iget-object v0, p0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->mInputStageRecored:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_54

    .line 503
    iget-object v0, p0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->mInputStageRecored:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 504
    .local v1, "obj":Ljava/lang/Object;
    iget-object v2, p0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->mInputStageRecored:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 505
    .local v2, "dt":J
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 506
    .local v4, "deliveredTime":Ljava/util/Date;
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-eqz v5, :cond_53

    .line 507
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Input event delivered to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    invoke-virtual {p2, v4}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 507
    invoke-static {p1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    .end local v1    # "obj":Ljava/lang/Object;
    .end local v2    # "dt":J
    .end local v4    # "deliveredTime":Ljava/util/Date;
    :cond_53
    goto :goto_12

    .line 512
    :cond_54
    return-void
.end method

.method enableLog(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableLog: enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    sput-boolean p2, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->LOCAL_LOGV:Z

    .line 344
    sput-boolean p2, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->DEBUG_DRAW:Z

    .line 345
    sput-boolean p2, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->DEBUG_LAYOUT:Z

    .line 346
    sput-boolean p2, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->DEBUG_DIALOG:Z

    .line 347
    sput-boolean p2, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->DEBUG_INPUT_RESIZE:Z

    .line 348
    sput-boolean p2, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->DEBUG_ORIENTATION:Z

    .line 349
    sput-boolean p2, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->DEBUG_TRACKBALL:Z

    .line 350
    sput-boolean p2, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->DEBUG_IMF:Z

    .line 351
    sput-boolean p2, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->DEBUG_CONFIGURATION:Z

    .line 352
    sput-boolean p2, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->DEBUG_FPS:Z

    .line 353
    sput-boolean p2, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->DEBUG_INPUT:Z

    .line 354
    sput-boolean p2, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->DEBUG_IME_ANR:Z

    .line 355
    sput-boolean p2, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->DEBUG_LIFECYCLE:Z

    .line 356
    sput-boolean p2, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->DEBUG_REQUESTLAYOUT:Z

    .line 357
    sput-boolean p2, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->DEBUG_INVALIDATE:Z

    .line 358
    sput-boolean p2, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->DEBUG_SCHEDULETRAVERSALS:Z

    .line 359
    return-void
.end method

.method setKeyDispatchState(Ljava/lang/String;)V
    .registers 2
    .param p1, "state"    # Ljava/lang/String;

    .line 584
    iput-object p1, p0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->mKeyEventStatus:Ljava/lang/String;

    .line 585
    return-void
.end method

.method setMotionDispatchState(Ljava/lang/String;)V
    .registers 2
    .param p1, "state"    # Ljava/lang/String;

    .line 588
    iput-object p1, p0, Lcom/mediatek/view/impl/ViewDebugManagerImpl;->mMotionEventStatus:Ljava/lang/String;

    .line 589
    return-void
.end method

.method public warningParentToNull(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 178
    sget-boolean v0, Lcom/mediatek/view/ViewDebugManager;->DEBUG_MOTION:Z

    const-string v1, "View"

    if-eqz v0, :cond_24

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assignParent to null: this = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", callstack = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Warning] assignParent to null: this = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void
.end method

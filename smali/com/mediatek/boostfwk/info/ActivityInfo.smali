.class public final Lcom/mediatek/boostfwk/info/ActivityInfo;
.super Ljava/lang/Object;
.source "ActivityInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/boostfwk/info/ActivityInfo$ActivityChangeListener;
    }
.end annotation


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static instance:Lcom/mediatek/boostfwk/info/ActivityInfo;


# instance fields
.field private activityChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/boostfwk/info/ActivityInfo$ActivityChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private activityContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private activityType:I

.field private attrs:Landroid/view/WindowManager$LayoutParams;

.field private density:F

.field private mRenderThreadTid:I

.field private packageName:Ljava/lang/String;

.field private scrollingState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/boostfwk/info/ActivityInfo;->instance:Lcom/mediatek/boostfwk/info/ActivityInfo;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/boostfwk/info/ActivityInfo;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/boostfwk/info/ActivityInfo;->activityContext:Ljava/lang/ref/WeakReference;

    .line 54
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/mediatek/boostfwk/info/ActivityInfo;->density:F

    .line 55
    iput-object v0, p0, Lcom/mediatek/boostfwk/info/ActivityInfo;->packageName:Ljava/lang/String;

    .line 56
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/mediatek/boostfwk/info/ActivityInfo;->mRenderThreadTid:I

    .line 58
    iput-object v0, p0, Lcom/mediatek/boostfwk/info/ActivityInfo;->activityChangeListeners:Ljava/util/ArrayList;

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/boostfwk/info/ActivityInfo;->activityType:I

    .line 62
    iput v0, p0, Lcom/mediatek/boostfwk/info/ActivityInfo;->scrollingState:I

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/boostfwk/info/ActivityInfo;->activityChangeListeners:Ljava/util/ArrayList;

    .line 69
    return-void
.end method

.method public static getInstance()Lcom/mediatek/boostfwk/info/ActivityInfo;
    .registers 2

    .line 73
    sget-object v0, Lcom/mediatek/boostfwk/info/ActivityInfo;->instance:Lcom/mediatek/boostfwk/info/ActivityInfo;

    if-nez v0, :cond_17

    .line 74
    sget-object v0, Lcom/mediatek/boostfwk/info/ActivityInfo;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_7
    sget-object v1, Lcom/mediatek/boostfwk/info/ActivityInfo;->instance:Lcom/mediatek/boostfwk/info/ActivityInfo;

    if-nez v1, :cond_12

    .line 76
    new-instance v1, Lcom/mediatek/boostfwk/info/ActivityInfo;

    invoke-direct {v1}, Lcom/mediatek/boostfwk/info/ActivityInfo;-><init>()V

    sput-object v1, Lcom/mediatek/boostfwk/info/ActivityInfo;->instance:Lcom/mediatek/boostfwk/info/ActivityInfo;

    .line 78
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 80
    :cond_17
    :goto_17
    sget-object v0, Lcom/mediatek/boostfwk/info/ActivityInfo;->instance:Lcom/mediatek/boostfwk/info/ActivityInfo;

    return-object v0
.end method

.method private initialBasicInfo(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/boostfwk/info/ActivityInfo;->attrs:Landroid/view/WindowManager$LayoutParams;

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/mediatek/boostfwk/info/ActivityInfo;->density:F

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/boostfwk/info/ActivityInfo;->packageName:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/mediatek/boostfwk/info/ActivityInfo;->activityChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/boostfwk/info/ActivityInfo$ActivityChangeListener;

    .line 112
    .local v1, "listener":Lcom/mediatek/boostfwk/info/ActivityInfo$ActivityChangeListener;
    invoke-interface {v1, p1}, Lcom/mediatek/boostfwk/info/ActivityInfo$ActivityChangeListener;->onChange(Landroid/content/Context;)V

    .line 113
    .end local v1    # "listener":Lcom/mediatek/boostfwk/info/ActivityInfo$ActivityChangeListener;
    goto :goto_1b

    .line 114
    :cond_2b
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/mediatek/boostfwk/info/ActivityInfo;->activityContext:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 87
    :cond_6
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public getDensity()F
    .registers 2

    .line 136
    iget v0, p0, Lcom/mediatek/boostfwk/info/ActivityInfo;->density:F

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/mediatek/boostfwk/info/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRenderThreadTid()I
    .registers 3

    .line 159
    iget v0, p0, Lcom/mediatek/boostfwk/info/ActivityInfo;->mRenderThreadTid:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_10

    .line 160
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/boostfwk/utils/TasksUtil;->findRenderTheadTid(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/boostfwk/info/ActivityInfo;->mRenderThreadTid:I

    .line 162
    :cond_10
    iget v0, p0, Lcom/mediatek/boostfwk/info/ActivityInfo;->mRenderThreadTid:I

    return v0
.end method

.method public getWindowLayoutAttr()Landroid/view/WindowManager$LayoutParams;
    .registers 5

    .line 117
    iget-object v0, p0, Lcom/mediatek/boostfwk/info/ActivityInfo;->attrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_5

    .line 118
    return-object v0

    .line 120
    :cond_5
    iget-object v0, p0, Lcom/mediatek/boostfwk/info/ActivityInfo;->activityContext:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 121
    return-object v1

    .line 123
    :cond_b
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 124
    .local v0, "context":Landroid/content/Context;
    const/4 v2, 0x0

    .line 125
    .local v2, "win":Landroid/view/Window;
    if-eqz v0, :cond_1f

    instance-of v3, v0, Landroid/app/Activity;

    if-eqz v3, :cond_1f

    .line 126
    move-object v3, v0

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 128
    :cond_1f
    if-eqz v2, :cond_28

    .line 129
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/boostfwk/info/ActivityInfo;->attrs:Landroid/view/WindowManager$LayoutParams;

    .line 130
    return-object v1

    .line 132
    :cond_28
    return-object v1
.end method

.method public registerActivityListener(Lcom/mediatek/boostfwk/info/ActivityInfo$ActivityChangeListener;)V
    .registers 3
    .param p1, "changeListener"    # Lcom/mediatek/boostfwk/info/ActivityInfo$ActivityChangeListener;

    .line 148
    if-nez p1, :cond_3

    .line 149
    return-void

    .line 151
    :cond_3
    iget-object v0, p0, Lcom/mediatek/boostfwk/info/ActivityInfo;->activityChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 94
    if-nez p1, :cond_3

    .line 95
    return-void

    .line 97
    :cond_3
    iget-object v0, p0, Lcom/mediatek/boostfwk/info/ActivityInfo;->activityContext:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_12

    .line 98
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mediatek/boostfwk/info/ActivityInfo;->activityContext:Ljava/lang/ref/WeakReference;

    .line 99
    invoke-direct {p0, p1}, Lcom/mediatek/boostfwk/info/ActivityInfo;->initialBasicInfo(Landroid/content/Context;)V

    goto :goto_2b

    .line 100
    :cond_12
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 101
    iget-object v0, p0, Lcom/mediatek/boostfwk/info/ActivityInfo;->activityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 102
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mediatek/boostfwk/info/ActivityInfo;->activityContext:Ljava/lang/ref/WeakReference;

    .line 103
    invoke-direct {p0, p1}, Lcom/mediatek/boostfwk/info/ActivityInfo;->initialBasicInfo(Landroid/content/Context;)V

    .line 105
    :cond_2b
    :goto_2b
    return-void
.end method

.method public setRenderThreadTid(I)V
    .registers 2
    .param p1, "renderThreadTid"    # I

    .line 155
    iput p1, p0, Lcom/mediatek/boostfwk/info/ActivityInfo;->mRenderThreadTid:I

    .line 156
    return-void
.end method

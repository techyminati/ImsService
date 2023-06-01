.class public Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;
.super Ljava/lang/Object;
.source "LaunchIdentify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify$WorkerHandler;
    }
.end annotation


# static fields
.field public static final HOSTTYPE_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final TAG:Ljava/lang/String; = "SBE-LaunchIdentify"

.field public static final THREAD_NAME:Ljava/lang/String; = "launch"

.field private static lock:Ljava/lang/Object;

.field private static sInstance:Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;


# instance fields
.field private mCount:I

.field private mIsBegin:Z

.field private mLaunchConfig:Lcom/mediatek/boostfwk/identify/launch/LaunchConfig;

.field private mLaunchPolicy:Lcom/mediatek/boostfwk/policy/launch/LaunchPolicy;

.field private mPkgName:Ljava/lang/String;

.field private mSpecialPkgNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkerHandler:Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify$WorkerHandler;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->sInstance:Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->mWorkerThread:Landroid/os/HandlerThread;

    .line 67
    iput-object v0, p0, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->mWorkerHandler:Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify$WorkerHandler;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->mIsBegin:Z

    .line 73
    iput v0, p0, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->mCount:I

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->mSpecialPkgNames:Ljava/util/List;

    .line 106
    new-instance v0, Lcom/mediatek/boostfwk/identify/launch/LaunchConfig;

    invoke-direct {v0}, Lcom/mediatek/boostfwk/identify/launch/LaunchConfig;-><init>()V

    iput-object v0, p0, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->mLaunchConfig:Lcom/mediatek/boostfwk/identify/launch/LaunchConfig;

    .line 107
    new-instance v0, Lcom/mediatek/boostfwk/policy/launch/LaunchPolicy;

    invoke-direct {v0}, Lcom/mediatek/boostfwk/policy/launch/LaunchPolicy;-><init>()V

    iput-object v0, p0, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->mLaunchPolicy:Lcom/mediatek/boostfwk/policy/launch/LaunchPolicy;

    .line 108
    invoke-virtual {p0}, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->initSpecialMap()V

    .line 109
    invoke-direct {p0}, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->initThread()V

    .line 110
    return-void
.end method

.method private getActivityCount(Ljava/lang/String;)I
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 317
    sget-object v0, Lcom/mediatek/boostfwk/identify/launch/LaunchConfig;->SPECIAL_MAP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 318
    sget-object v0, Lcom/mediatek/boostfwk/identify/launch/LaunchConfig;->SPECIAL_MAP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 320
    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method public static getInstance()Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;
    .registers 2

    .line 79
    sget-object v0, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->sInstance:Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;

    if-nez v0, :cond_17

    .line 80
    sget-object v0, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_7
    sget-object v1, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->sInstance:Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;

    if-nez v1, :cond_12

    .line 82
    new-instance v1, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;

    invoke-direct {v1}, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;-><init>()V

    sput-object v1, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->sInstance:Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;

    .line 84
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 86
    :cond_17
    :goto_17
    sget-object v0, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->sInstance:Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;

    return-object v0
.end method

.method private initThread()V
    .registers 4

    .line 90
    iget-object v0, p0, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->mWorkerThread:Landroid/os/HandlerThread;

    const-string v1, "SBE-LaunchIdentify"

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->mWorkerHandler:Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify$WorkerHandler;

    if-eqz v0, :cond_16

    .line 92
    const-string v0, "re-init"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 94
    :cond_16
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "launch"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->mWorkerThread:Landroid/os/HandlerThread;

    .line 95
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 96
    iget-object v0, p0, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 97
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_30

    .line 98
    const-string v2, "Thread looper is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 100
    :cond_30
    new-instance v1, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify$WorkerHandler;

    invoke-direct {v1, p0, v0}, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify$WorkerHandler;-><init>(Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->mWorkerHandler:Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify$WorkerHandler;

    .line 103
    .end local v0    # "looper":Landroid/os/Looper;
    :goto_37
    return-void
.end method

.method private isInSpecialList(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 309
    iget-object v0, p0, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->mSpecialPkgNames:Ljava/util/List;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 310
    const/4 v0, 0x1

    return v0

    .line 312
    :cond_c
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public boostEnd(Ljava/lang/String;)V
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 286
    iget-boolean v0, p0, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->mIsBegin:Z

    if-eqz v0, :cond_2c

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SBE boost:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SBE-LaunchIdentify"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->mLaunchPolicy:Lcom/mediatek/boostfwk/policy/launch/LaunchPolicy;

    invoke-virtual {v0, p1}, Lcom/mediatek/boostfwk/policy/launch/LaunchPolicy;->boostEnd(Ljava/lang/String;)V

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->mIsBegin:Z

    .line 290
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->mPkgName:Ljava/lang/String;

    .line 291
    iput v0, p0, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->mCount:I

    .line 293
    :cond_2c
    return-void
.end method

.method public boostHintBegin(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "hostingType"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 185
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v0

    const-string v1, "SBE-LaunchIdentify"

    if-eqz v0, :cond_24

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "boostHintBegin for hostingType= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; pkgName= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_24
    if-eqz p1, :cond_55

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-static {p2}, Lcom/mediatek/boostfwk/utils/Util;->isSystemApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SBE boost:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " begin"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iput-object p2, p0, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->mPkgName:Ljava/lang/String;

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->mIsBegin:Z

    .line 195
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->mCount:I

    .line 197
    :cond_55
    return-void
.end method

.method public boostHintEnd(Ljava/lang/String;Landroid/view/WindowManager$LayoutParams;)V
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 224
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "boostHintEnd for pkgName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPkgName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isGameApp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-static {p1}, Lcom/mediatek/boostfwk/utils/Util;->isGameApp(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSpecialApp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-direct {p0, p1}, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->isInSpecialList(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isFullScreen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-static {p2}, Lcom/mediatek/boostfwk/utils/Util;->IsFullScreen(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    const-string v1, "SBE-LaunchIdentify"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_4a
    iget-object v0, p0, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->mPkgName:Ljava/lang/String;

    if-eqz v0, :cond_7f

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-static {p1}, Lcom/mediatek/boostfwk/utils/Util;->isSystemApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7f

    .line 237
    invoke-direct {p0, p1}, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->isInSpecialList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 238
    return-void

    .line 243
    :cond_61
    invoke-static {p1}, Lcom/mediatek/boostfwk/utils/Util;->isGameApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 245
    return-void

    .line 250
    :cond_68
    invoke-static {p2}, Lcom/mediatek/boostfwk/utils/Util;->IsFullScreen(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_7f

    .line 252
    iget-object v0, p0, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->mWorkerHandler:Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify$WorkerHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify$WorkerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 255
    iget-object v0, p0, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->mWorkerHandler:Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify$WorkerHandler;

    .line 256
    invoke-virtual {v0, v1, p1}, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify$WorkerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    .line 255
    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 261
    :cond_7f
    return-void
.end method

.method public boostHintEndForSpecial(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;

    .line 200
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "boostHintResume for pkgName= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", activityName= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLaunchConfig.isInSpecialList(pkgName) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-direct {p0, p1}, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->isInSpecialList(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    const-string v1, "SBE-LaunchIdentify"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_30
    iget-object v0, p0, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->mPkgName:Ljava/lang/String;

    if-eqz v0, :cond_5d

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-direct {p0, p1}, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->isInSpecialList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 209
    iget v0, p0, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->mCount:I

    .line 210
    invoke-direct {p0, p1}, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->getActivityCount(Ljava/lang/String;)I

    move-result v0

    .line 212
    .local v0, "configCount":I
    iget v1, p0, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->mCount:I

    if-ne v1, v0, :cond_5d

    .line 214
    iget-object v1, p0, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->mWorkerHandler:Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify$WorkerHandler;

    const/4 v2, 0x2

    .line 215
    invoke-virtual {v1, v2, p1}, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify$WorkerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    .line 214
    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 218
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->mCount:I

    .line 221
    .end local v0    # "configCount":I
    :cond_5d
    return-void
.end method

.method public initSpecialMap()V
    .registers 5

    .line 297
    sget-object v0, Lcom/mediatek/boostfwk/identify/launch/LaunchConfig;->SPECIAL_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 298
    .local v0, "it":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 299
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 302
    .local v1, "entry":Ljava/util/Map$Entry;
    iget-object v2, p0, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->mSpecialPkgNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    .end local v1    # "entry":Ljava/util/Map$Entry;
    goto :goto_a

    .line 304
    :cond_22
    return-void
.end method

.method public launchActionsDispatcher(Lcom/mediatek/boostfwk/scenario/launch/LaunchScenario;)V
    .registers 13
    .param p1, "scenario"    # Lcom/mediatek/boostfwk/scenario/launch/LaunchScenario;

    .line 119
    const-string v0, "SBE-LaunchIdentify"

    if-nez p1, :cond_a

    .line 120
    const-string v1, "No Launch scenario to dispatcher."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void

    .line 124
    :cond_a
    invoke-virtual {p1}, Lcom/mediatek/boostfwk/scenario/launch/LaunchScenario;->getScenarioAction()I

    move-result v1

    .line 125
    .local v1, "action":I
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launch action dispatcher to = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_28
    packed-switch v1, :pswitch_data_8a

    .line 147
    :pswitch_2b
    const-string v2, "Not found dispatcher launch action."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_89

    .line 137
    :pswitch_31
    invoke-virtual {p1}, Lcom/mediatek/boostfwk/scenario/launch/LaunchScenario;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v2

    .line 138
    .local v2, "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    if-eqz v2, :cond_89

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_89

    .line 139
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTIVITY_SWITCH set new context -->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_5b
    invoke-static {}, Lcom/mediatek/boostfwk/info/ActivityInfo;->getInstance()Lcom/mediatek/boostfwk/info/ActivityInfo;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/mediatek/boostfwk/info/ActivityInfo;->setContext(Landroid/content/Context;)V

    .line 143
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->clear()V

    goto :goto_89

    .line 131
    .end local v2    # "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    :pswitch_6c
    invoke-virtual {p1}, Lcom/mediatek/boostfwk/scenario/launch/LaunchScenario;->getBoostStatus()I

    move-result v5

    .line 132
    invoke-virtual {p1}, Lcom/mediatek/boostfwk/scenario/launch/LaunchScenario;->getHostingType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/mediatek/boostfwk/scenario/launch/LaunchScenario;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 133
    invoke-virtual {p1}, Lcom/mediatek/boostfwk/scenario/launch/LaunchScenario;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    invoke-virtual {p1}, Lcom/mediatek/boostfwk/scenario/launch/LaunchScenario;->getActivityName()Ljava/lang/String;

    move-result-object v9

    .line 134
    invoke-virtual {p1}, Lcom/mediatek/boostfwk/scenario/launch/LaunchScenario;->getIsComeFromIdle()Z

    move-result v10

    .line 131
    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->launchHintCheck(ILjava/lang/String;Ljava/lang/String;Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;Z)V

    .line 135
    nop

    .line 150
    :cond_89
    :goto_89
    return-void

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_2b
        :pswitch_31
    .end packed-switch
.end method

.method public launchHintCheck(ILjava/lang/String;Ljava/lang/String;Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;Z)V
    .registers 9
    .param p1, "boostStaus"    # I
    .param p2, "hostingType"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p5, "activityName"    # Ljava/lang/String;
    .param p6, "isComeFromIdle"    # Z

    .line 167
    packed-switch p1, :pswitch_data_1a

    .line 179
    const-string v0, "SBE-LaunchIdentify"

    const-string v1, "Not found dispatcher launch action."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 172
    :pswitch_b
    if-eqz p6, :cond_11

    .line 173
    invoke-virtual {p0, p3, p4}, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->boostHintEnd(Ljava/lang/String;Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_19

    .line 175
    :cond_11
    invoke-virtual {p0, p3, p5}, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->boostHintEndForSpecial(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    goto :goto_19

    .line 169
    :pswitch_15
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->boostHintBegin(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    nop

    .line 182
    :goto_19
    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_15
        :pswitch_b
    .end packed-switch
.end method

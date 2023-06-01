.class public Lcom/mediatek/server/dx/DexOptExtImpl;
.super Lcom/mediatek/dx/DexOptExt;
.source "DexOptExtImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/server/dx/DexOptExtImpl$DexOptExtHandler;
    }
.end annotation


# static fields
.field private static final BLOCK_CHECK_POINT:Ljava/lang/String; = "performDexOpt"

.field private static final CMDLINE_OUT:[I

.field private static final COMPILERFILTER_SPEED_PROFILE:Ljava/lang/String; = "speed-profile"

.field private static final DEX_OPT_INTERVAL_MS:I = 0x32

.field private static final MAX_TRY_COUNTS:I = 0x4

.field private static final MSG_BASE:I = 0x2710

.field private static final MSG_DO_DEXOPT:I = 0x2712

.field private static final MSG_ON_PROCESS_START:I = 0x2711

.field private static final PIDS_OF_INTREST:[Ljava/lang/String;

.field private static final PROPERTY_FEATURE_ENABLE:Ljava/lang/String; = "pm.dexopt.aggressive_dex2oat.enable"

.field private static final PROPERTY_TRY_INTERVAL:Ljava/lang/String; = "pm.dexopt.aggressive_dex2oat.interval"

.field private static final TAG:Ljava/lang/String; = "DexOptExtImpl"

.field private static final THREAD_NAME_SPEEDUP:Ljava/lang/String; = "DexoptExtSpeedup"

.field private static final TRY_DEX2OAT_INTERVAL_MS:I = 0x2bf20

.field private static lock:Ljava/lang/Object;

.field private static sInstance:Lcom/mediatek/server/dx/DexOptExtImpl;

.field private static sIsEnable:Z


# instance fields
.field private mCurDex2oatThread:Ljava/lang/Thread;

.field private mDexoptExtHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLastDex2oatTime:J

.field private mLastKillDex2oatTime:J

.field private mMointorPkgs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMointorPkgsLock:Ljava/lang/Object;

.field private mPm:Lcom/android/server/pm/PackageManagerService;

.field private mRcvNotifyThread:Ljava/lang/Thread;

.field private mTryDex2oatInterval:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 49
    const-string v0, "pm.dexopt.aggressive_dex2oat.enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-nez v0, :cond_10

    move v0, v1

    goto :goto_11

    :cond_10
    move v0, v2

    :goto_11
    sput-boolean v0, Lcom/mediatek/server/dx/DexOptExtImpl;->sIsEnable:Z

    .line 51
    new-array v0, v1, [I

    const/16 v1, 0x1000

    aput v1, v0, v2

    sput-object v0, Lcom/mediatek/server/dx/DexOptExtImpl;->CMDLINE_OUT:[I

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/server/dx/DexOptExtImpl;->sInstance:Lcom/mediatek/server/dx/DexOptExtImpl;

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/server/dx/DexOptExtImpl;->lock:Ljava/lang/Object;

    .line 64
    const-string v0, "/system/bin/installd"

    const-string v1, "/apex/com.android.art/bin/dex2oat32"

    const-string v2, "/apex/com.android.art/bin/dex2oat64"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/server/dx/DexOptExtImpl;->PIDS_OF_INTREST:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 71
    invoke-direct {p0}, Lcom/mediatek/dx/DexOptExt;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/server/dx/DexOptExtImpl;->mRcvNotifyThread:Ljava/lang/Thread;

    .line 55
    iput-object v0, p0, Lcom/mediatek/server/dx/DexOptExtImpl;->mCurDex2oatThread:Ljava/lang/Thread;

    .line 58
    iput-object v0, p0, Lcom/mediatek/server/dx/DexOptExtImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 59
    const v0, 0x2bf20

    iput v0, p0, Lcom/mediatek/server/dx/DexOptExtImpl;->mTryDex2oatInterval:I

    .line 60
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/mediatek/server/dx/DexOptExtImpl;->mLastDex2oatTime:J

    .line 61
    iput-wide v1, p0, Lcom/mediatek/server/dx/DexOptExtImpl;->mLastKillDex2oatTime:J

    .line 62
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/mediatek/server/dx/DexOptExtImpl;->mMointorPkgs:Ljava/util/HashSet;

    .line 63
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/server/dx/DexOptExtImpl;->mMointorPkgsLock:Ljava/lang/Object;

    .line 72
    const-string v1, "pm.dexopt.aggressive_dex2oat.interval"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/server/dx/DexOptExtImpl;->setTryDex2oatInterval(I)V

    .line 74
    invoke-virtual {p0}, Lcom/mediatek/server/dx/DexOptExtImpl;->isDexOptExtEnable()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 75
    invoke-direct {p0}, Lcom/mediatek/server/dx/DexOptExtImpl;->initHandlerAndStartHandlerThread()V

    .line 76
    :cond_35
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/server/dx/DexOptExtImpl;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/server/dx/DexOptExtImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0, p1}, Lcom/mediatek/server/dx/DexOptExtImpl;->handleProcessStart(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/server/dx/DexOptExtImpl;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/server/dx/DexOptExtImpl;
    .param p1, "x1"    # Landroid/os/Message;

    .line 36
    invoke-direct {p0, p1}, Lcom/mediatek/server/dx/DexOptExtImpl;->handleDoDexopt(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/server/dx/DexOptExtImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/server/dx/DexOptExtImpl;

    .line 36
    invoke-direct {p0}, Lcom/mediatek/server/dx/DexOptExtImpl;->isBlockedInDexopt()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .registers 1

    .line 36
    sget-object v0, Lcom/mediatek/server/dx/DexOptExtImpl;->PIDS_OF_INTREST:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(I)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # I

    .line 36
    invoke-static {p0}, Lcom/mediatek/server/dx/DexOptExtImpl;->readCmdlineFromProcfs(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/server/dx/DexOptExtImpl;ILjava/lang/String;I)V
    .registers 4
    .param p0, "x0"    # Lcom/mediatek/server/dx/DexOptExtImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/server/dx/DexOptExtImpl;->killIfIsDex2oat(ILjava/lang/String;I)V

    return-void
.end method

.method private addPkgToMonitor(Ljava/lang/String;)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;

    .line 266
    iget-object v0, p0, Lcom/mediatek/server/dx/DexOptExtImpl;->mMointorPkgsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_3
    iget-object v1, p0, Lcom/mediatek/server/dx/DexOptExtImpl;->mMointorPkgs:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 268
    monitor-exit v0

    .line 269
    return-void

    .line 268
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private checkAndWait()V
    .registers 11

    .line 166
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 167
    .local v0, "now":J
    const-wide/16 v2, 0x32

    .line 171
    .local v2, "duration":J
    iget-wide v4, p0, Lcom/mediatek/server/dx/DexOptExtImpl;->mLastKillDex2oatTime:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_3f

    .line 174
    const-wide/32 v8, 0x94ed0

    sub-long v4, v0, v4

    sub-long/2addr v8, v4

    .line 175
    .end local v2    # "duration":J
    .local v8, "duration":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last killed at:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/mediatek/server/dx/DexOptExtImpl;->mLastKillDex2oatTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " now:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " duration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DexOptExtImpl"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iput-wide v6, p0, Lcom/mediatek/server/dx/DexOptExtImpl;->mLastKillDex2oatTime:J

    goto :goto_47

    .line 179
    .end local v8    # "duration":J
    .restart local v2    # "duration":J
    :cond_3f
    const-wide/16 v4, 0x32

    iget-wide v8, p0, Lcom/mediatek/server/dx/DexOptExtImpl;->mLastDex2oatTime:J

    sub-long v8, v0, v8

    sub-long v8, v4, v8

    .line 181
    .end local v2    # "duration":J
    .restart local v8    # "duration":J
    :goto_47
    cmp-long v2, v8, v6

    if-lez v2, :cond_4e

    .line 182
    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    .line 183
    :cond_4e
    return-void
.end method

.method private getFirstCodeIsa(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .registers 6
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, "isa":Ljava/lang/String;
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, "instructionSets":[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, "dexCodeInstructionSets":[Ljava/lang/String;
    array-length v3, v2

    if-lez v3, :cond_13

    .line 259
    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 262
    :cond_13
    return-object v0
.end method

.method public static getInstance()Lcom/mediatek/server/dx/DexOptExtImpl;
    .registers 2

    .line 108
    sget-object v0, Lcom/mediatek/server/dx/DexOptExtImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_3
    sget-object v1, Lcom/mediatek/server/dx/DexOptExtImpl;->sInstance:Lcom/mediatek/server/dx/DexOptExtImpl;

    if-nez v1, :cond_e

    .line 110
    new-instance v1, Lcom/mediatek/server/dx/DexOptExtImpl;

    invoke-direct {v1}, Lcom/mediatek/server/dx/DexOptExtImpl;-><init>()V

    sput-object v1, Lcom/mediatek/server/dx/DexOptExtImpl;->sInstance:Lcom/mediatek/server/dx/DexOptExtImpl;

    .line 111
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 112
    sget-object v0, Lcom/mediatek/server/dx/DexOptExtImpl;->sInstance:Lcom/mediatek/server/dx/DexOptExtImpl;

    return-object v0

    .line 111
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private getPackageManager()Lcom/android/server/pm/PackageManagerService;
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/mediatek/server/dx/DexOptExtImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    if-eqz v0, :cond_5

    .line 159
    return-object v0

    .line 161
    :cond_5
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/mediatek/server/dx/DexOptExtImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 162
    return-object v0
.end method

.method private handleDoDexopt(Landroid/os/Message;)V
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;

    .line 186
    const-string v6, "speed-profile"

    .line 187
    .local v6, "targetCompilerFilter":Ljava/lang/String;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 188
    .local v7, "pkg":Ljava/lang/String;
    const/4 v8, -0x1

    .line 189
    .local v8, "result":I
    const/4 v9, 0x5

    .line 193
    .local v9, "flags":I
    invoke-direct {p0}, Lcom/mediatek/server/dx/DexOptExtImpl;->checkAndWait()V

    .line 194
    iget-object v10, p0, Lcom/mediatek/server/dx/DexOptExtImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    new-instance v11, Lcom/android/server/pm/dex/DexoptOptions;

    const/16 v2, 0x2710

    const/4 v4, 0x0

    move-object v0, v11

    move-object v1, v7

    move-object v3, v6

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v10, v11}, Lcom/android/server/pm/PackageManagerService;->performDexOptWithStatusByOption(Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v0

    .line 197
    .end local v8    # "result":I
    .local v0, "result":I
    iget-object v1, p0, Lcom/mediatek/server/dx/DexOptExtImpl;->mCurDex2oatThread:Ljava/lang/Thread;

    iget-object v2, p0, Lcom/mediatek/server/dx/DexOptExtImpl;->mHandlerThread:Landroid/os/HandlerThread;

    if-ne v1, v2, :cond_27

    .line 198
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/server/dx/DexOptExtImpl;->mCurDex2oatThread:Ljava/lang/Thread;

    .line 200
    :cond_27
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mediatek/server/dx/DexOptExtImpl;->mLastDex2oatTime:J

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "try dex2oat for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cnt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DexOptExtImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    if-nez v0, :cond_71

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_71

    .line 204
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    .line 205
    .local v1, "againMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 207
    iget-object v2, p0, Lcom/mediatek/server/dx/DexOptExtImpl;->mDexoptExtHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/mediatek/server/dx/DexOptExtImpl;->mTryDex2oatInterval:I

    div-int/lit8 v3, v3, 0x2

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 208
    .end local v1    # "againMsg":Landroid/os/Message;
    goto :goto_74

    .line 210
    :cond_71
    invoke-direct {p0, v7}, Lcom/mediatek/server/dx/DexOptExtImpl;->removeMonitorPkg(Ljava/lang/String;)V

    .line 212
    :goto_74
    return-void
.end method

.method private handleProcessStart(Ljava/lang/String;)V
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;

    .line 216
    invoke-direct {p0, p1}, Lcom/mediatek/server/dx/DexOptExtImpl;->isDexoptReasonInstall(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 217
    return-void

    .line 219
    :cond_7
    invoke-direct {p0, p1}, Lcom/mediatek/server/dx/DexOptExtImpl;->addPkgToMonitor(Ljava/lang/String;)V

    .line 220
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 221
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x2712

    iput v1, v0, Landroid/os/Message;->what:I

    .line 222
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 223
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 224
    iget-object v1, p0, Lcom/mediatek/server/dx/DexOptExtImpl;->mDexoptExtHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/mediatek/server/dx/DexOptExtImpl;->mTryDex2oatInterval:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 225
    return-void
.end method

.method private initHandlerAndStartHandlerThread()V
    .registers 4

    .line 79
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DexOptExt"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/server/dx/DexOptExtImpl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 80
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 81
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/server/dx/DexOptExtImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/mediatek/server/dx/DexOptExtImpl$DexOptExtHandler;

    invoke-direct {v2, p0}, Lcom/mediatek/server/dx/DexOptExtImpl$DexOptExtHandler;-><init>(Lcom/mediatek/server/dx/DexOptExtImpl;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/mediatek/server/dx/DexOptExtImpl;->mDexoptExtHandler:Landroid/os/Handler;

    .line 82
    return-void
.end method

.method private isBlockedInDexopt()Z
    .registers 3

    .line 291
    iget-object v0, p0, Lcom/mediatek/server/dx/DexOptExtImpl;->mCurDex2oatThread:Ljava/lang/Thread;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/mediatek/server/dx/DexOptExtImpl;->mHandlerThread:Landroid/os/HandlerThread;

    if-ne v0, v1, :cond_a

    .line 293
    const/4 v0, 0x1

    return v0

    .line 295
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private isDexoptReasonInstall(Ljava/lang/String;)Z
    .registers 10
    .param p1, "pkg"    # Ljava/lang/String;

    .line 228
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 229
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 230
    .local v0, "androidPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 231
    return v1

    .line 232
    :cond_10
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 233
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v2, :cond_17

    .line 234
    return v1

    .line 235
    :cond_17
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 236
    .local v3, "abi":Ljava/lang/String;
    if-nez v3, :cond_1f

    .line 237
    sget-object v4, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v3, v4, v1

    .line 239
    :cond_1f
    const-class v4, Landroid/content/pm/dex/ArtManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/dex/ArtManagerInternal;

    .line 240
    .local v4, "artManager":Landroid/content/pm/dex/ArtManagerInternal;
    const-string v5, "fakeactivity"

    invoke-virtual {v4, v2, v3, v5}, Landroid/content/pm/dex/ArtManagerInternal;->getPackageOptimizationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/dex/PackageOptimizationInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationReason()I

    move-result v5

    .line 241
    .local v5, "reason":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " reason is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " abi is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DexOptExtImpl"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    sparse-switch v5, :sswitch_data_58

    .line 250
    return v1

    .line 246
    :sswitch_56
    const/4 v1, 0x1

    return v1

    :sswitch_data_58
    .sparse-switch
        0x4 -> :sswitch_56
        0x9 -> :sswitch_56
    .end sparse-switch
.end method

.method private isInMonitorList(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;

    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, "result":Z
    iget-object v1, p0, Lcom/mediatek/server/dx/DexOptExtImpl;->mMointorPkgsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 274
    :try_start_4
    iget-object v2, p0, Lcom/mediatek/server/dx/DexOptExtImpl;->mMointorPkgs:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .line 275
    monitor-exit v1

    .line 276
    return v0

    .line 275
    :catchall_d
    move-exception v2

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v2
.end method

.method private killIfIsDex2oat(ILjava/lang/String;I)V
    .registers 7
    .param p1, "pid"    # I
    .param p2, "cmdline"    # Ljava/lang/String;
    .param p3, "installPid"    # I

    .line 309
    const/4 v0, -0x1

    .line 311
    .local v0, "ppid":I
    if-ne p1, p3, :cond_4

    .line 312
    return-void

    .line 314
    :cond_4
    invoke-static {p1}, Landroid/os/Process;->getParentPid(I)I

    move-result v0

    .line 316
    if-eq v0, p3, :cond_b

    .line 317
    return-void

    .line 319
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kill dex2oat,pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cmdline is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DexOptExtImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mediatek/server/dx/DexOptExtImpl;->mLastKillDex2oatTime:J

    .line 321
    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    .line 322
    return-void
.end method

.method private static readCmdlineFromProcfs(I)Ljava/lang/String;
    .registers 5
    .param p0, "pid"    # I

    .line 299
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 301
    .local v0, "cmdline":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/cmdline"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mediatek/server/dx/DexOptExtImpl;->CMDLINE_OUT:[I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, v3}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v1

    if-nez v1, :cond_25

    .line 303
    const-string v1, ""

    return-object v1

    .line 305
    :cond_25
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method private removeMonitorPkg(Ljava/lang/String;)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;

    .line 280
    iget-object v0, p0, Lcom/mediatek/server/dx/DexOptExtImpl;->mMointorPkgsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 281
    :try_start_3
    iget-object v1, p0, Lcom/mediatek/server/dx/DexOptExtImpl;->mMointorPkgs:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 282
    monitor-exit v0

    .line 283
    return-void

    .line 282
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private shouldSendProcessStartMessage(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "hostingType"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 138
    invoke-virtual {p0}, Lcom/mediatek/server/dx/DexOptExtImpl;->isDexOptExtEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 139
    return v1

    .line 142
    :cond_8
    if-eqz p1, :cond_2b

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_2b

    .line 146
    :cond_13
    invoke-direct {p0}, Lcom/mediatek/server/dx/DexOptExtImpl;->getPackageManager()Lcom/android/server/pm/PackageManagerService;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 147
    return v1

    .line 150
    :cond_1a
    const-string v0, "dev.bootcomplete"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "bootcomplete":Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 152
    return v1

    .line 154
    :cond_29
    const/4 v1, 0x1

    return v1

    .line 143
    .end local v0    # "bootcomplete":Ljava/lang/String;
    :cond_2b
    :goto_2b
    return v1
.end method

.method private tryToStopDex2oat()V
    .registers 3

    .line 326
    iget-object v0, p0, Lcom/mediatek/server/dx/DexOptExtImpl;->mRcvNotifyThread:Ljava/lang/Thread;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_d

    .line 328
    return-void

    .line 330
    :cond_d
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mediatek/server/dx/DexOptExtImpl$1;

    invoke-direct {v1, p0}, Lcom/mediatek/server/dx/DexOptExtImpl$1;-><init>(Lcom/mediatek/server/dx/DexOptExtImpl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/mediatek/server/dx/DexOptExtImpl;->mRcvNotifyThread:Ljava/lang/Thread;

    .line 361
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 362
    iget-object v0, p0, Lcom/mediatek/server/dx/DexOptExtImpl;->mRcvNotifyThread:Ljava/lang/Thread;

    const-string v1, "DexoptExtSpeedup"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/mediatek/server/dx/DexOptExtImpl;->mRcvNotifyThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 364
    return-void
.end method


# virtual methods
.method public isDexOptExtEnable()Z
    .registers 2

    .line 286
    sget-boolean v0, Lcom/mediatek/server/dx/DexOptExtImpl;->sIsEnable:Z

    return v0
.end method

.method public notifyBeginDexopt(Ljava/lang/String;)V
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 382
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/server/dx/DexOptExtImpl;->mCurDex2oatThread:Ljava/lang/Thread;

    .line 384
    return-void
.end method

.method public notifySpeedUp()V
    .registers 3

    .line 371
    invoke-direct {p0}, Lcom/mediatek/server/dx/DexOptExtImpl;->isBlockedInDexopt()Z

    move-result v0

    const-string v1, "DexOptExtImpl"

    if-nez v0, :cond_e

    .line 372
    const-string v0, "receive speed up notify,do nothing!"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return-void

    .line 375
    :cond_e
    const-string v0, "we are doing dex2oat, stop it now"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-direct {p0}, Lcom/mediatek/server/dx/DexOptExtImpl;->tryToStopDex2oat()V

    .line 377
    return-void
.end method

.method public onStartProcess(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "hostingType"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/mediatek/server/dx/DexOptExtImpl;->shouldSendProcessStartMessage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 124
    return-void

    .line 126
    :cond_7
    monitor-enter p0

    .line 127
    :try_start_8
    invoke-direct {p0, p2}, Lcom/mediatek/server/dx/DexOptExtImpl;->isInMonitorList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 128
    monitor-exit p0

    return-void

    .line 129
    :cond_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_21

    .line 131
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 132
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x2711

    iput v1, v0, Landroid/os/Message;->what:I

    .line 133
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 134
    iget-object v1, p0, Lcom/mediatek/server/dx/DexOptExtImpl;->mDexoptExtHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 135
    return-void

    .line 129
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_21
    move-exception v0

    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public setTryDex2oatInterval(I)V
    .registers 2
    .param p1, "durationMillionSeconds"    # I

    .line 102
    if-gez p1, :cond_3

    .line 103
    return-void

    .line 104
    :cond_3
    iput p1, p0, Lcom/mediatek/server/dx/DexOptExtImpl;->mTryDex2oatInterval:I

    .line 105
    return-void
.end method

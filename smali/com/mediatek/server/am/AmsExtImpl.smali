.class public Lcom/mediatek/server/am/AmsExtImpl;
.super Lcom/mediatek/server/am/AmsExt;
.source "AmsExtImpl.java"


# static fields
.field private static final MTKPOWER_STATE_PAUSED:I = 0x0

.field private static final MTKPOWER_STATE_RESUMED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AmsExtImpl"

.field public static sClassLoader:Ldalvik/system/PathClassLoader;


# instance fields
.field private final amsLogProp:Ljava/lang/String;

.field private isDebug:Z

.field private isDuraSpeedSupport:Z

.field private mAalUtils:Lcom/mediatek/amsAal/AalUtils;

.field private mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private mAm:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mCtaManager:Lcom/mediatek/cta/CtaManager;

.field private mCurTopPkg:Ljava/lang/String;

.field private mDexOptExt:Lcom/mediatek/dx/DexOptExt;

.field private mDuraSpeedService:Lcom/mediatek/duraspeed/manager/IDuraSpeedNative;

.field private mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mPowerHalManagerImpl:Lcom/mediatek/server/powerhal/PowerHalManagerImpl;

.field private mProcessNamesField:Ljava/lang/reflect/Field;

.field private mStartProcessMethod:Ljava/lang/reflect/Method;

.field private mSuppressAction:Lcom/mediatek/duraspeed/suppress/ISuppressAction;


# direct methods
.method public constructor <init>()V
    .registers 8

    .line 204
    invoke-direct {p0}, Lcom/mediatek/server/am/AmsExt;-><init>()V

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/server/am/AmsExtImpl;->isDebug:Z

    .line 170
    nop

    .line 171
    const-string v1, "persist.vendor.duraspeed.support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/server/am/AmsExtImpl;->isDuraSpeedSupport:Z

    .line 174
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/server/am/AmsExtImpl;->mPowerHalManagerImpl:Lcom/mediatek/server/powerhal/PowerHalManagerImpl;

    .line 180
    iput-object v1, p0, Lcom/mediatek/server/am/AmsExtImpl;->mAalUtils:Lcom/mediatek/amsAal/AalUtils;

    .line 195
    const-string v2, "persist.vendor.sys.activitylog"

    iput-object v2, p0, Lcom/mediatek/server/am/AmsExtImpl;->amsLogProp:Ljava/lang/String;

    .line 201
    iput-object v1, p0, Lcom/mediatek/server/am/AmsExtImpl;->mCtaManager:Lcom/mediatek/cta/CtaManager;

    .line 202
    iput-object v1, p0, Lcom/mediatek/server/am/AmsExtImpl;->mAm:Landroid/app/ActivityManager;

    .line 733
    const-string v1, ""

    iput-object v1, p0, Lcom/mediatek/server/am/AmsExtImpl;->mCurTopPkg:Ljava/lang/String;

    .line 205
    new-instance v1, Lcom/mediatek/server/powerhal/PowerHalManagerImpl;

    invoke-direct {v1}, Lcom/mediatek/server/powerhal/PowerHalManagerImpl;-><init>()V

    iput-object v1, p0, Lcom/mediatek/server/am/AmsExtImpl;->mPowerHalManagerImpl:Lcom/mediatek/server/powerhal/PowerHalManagerImpl;

    .line 206
    invoke-static {}, Lcom/mediatek/dx/DexOptExtFactory;->getInstance()Lcom/mediatek/dx/DexOptExtFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/dx/DexOptExtFactory;->makeDexOpExt()Lcom/mediatek/dx/DexOptExt;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/server/am/AmsExtImpl;->mDexOptExt:Lcom/mediatek/dx/DexOptExt;

    .line 208
    iget-boolean v1, p0, Lcom/mediatek/server/am/AmsExtImpl;->isDuraSpeedSupport:Z

    if-eqz v1, :cond_86

    .line 209
    const-string v1, "com.mediatek.duraspeed.manager.DuraSpeedService"

    .line 210
    .local v1, "className1":Ljava/lang/String;
    const-string v2, "com.mediatek.duraspeed.suppress.SuppressAction"

    .line 211
    .local v2, "className2":Ljava/lang/String;
    const-string v3, "/system/framework/duraspeed.jar"

    .line 212
    .local v3, "classPackage":Ljava/lang/String;
    const/4 v4, 0x0

    .line 214
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_42
    new-instance v5, Ldalvik/system/PathClassLoader;

    const-class v6, Lcom/mediatek/server/am/AmsExtImpl;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v5, Lcom/mediatek/server/am/AmsExtImpl;->sClassLoader:Ldalvik/system/PathClassLoader;

    .line 215
    invoke-static {v1, v0, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    move-object v4, v5

    .line 216
    new-array v5, v0, [Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/duraspeed/manager/IDuraSpeedNative;

    iput-object v5, p0, Lcom/mediatek/server/am/AmsExtImpl;->mDuraSpeedService:Lcom/mediatek/duraspeed/manager/IDuraSpeedNative;

    .line 218
    sget-object v5, Lcom/mediatek/server/am/AmsExtImpl;->sClassLoader:Ldalvik/system/PathClassLoader;

    invoke-static {v2, v0, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    move-object v4, v5

    .line 219
    new-array v5, v0, [Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/duraspeed/suppress/ISuppressAction;

    iput-object v0, p0, Lcom/mediatek/server/am/AmsExtImpl;->mSuppressAction:Lcom/mediatek/duraspeed/suppress/ISuppressAction;
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_7b} :catch_7c

    .line 222
    goto :goto_86

    .line 220
    :catch_7c
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AmsExtImpl"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "className1":Ljava/lang/String;
    .end local v2    # "className2":Ljava/lang/String;
    .end local v3    # "classPackage":Ljava/lang/String;
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_86
    :goto_86
    iget-object v0, p0, Lcom/mediatek/server/am/AmsExtImpl;->mAalUtils:Lcom/mediatek/amsAal/AalUtils;

    if-nez v0, :cond_96

    invoke-static {}, Lcom/mediatek/amsAal/AalUtils;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 228
    invoke-static {}, Lcom/mediatek/amsAal/AalUtils;->getInstance()Lcom/mediatek/amsAal/AalUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/server/am/AmsExtImpl;->mAalUtils:Lcom/mediatek/amsAal/AalUtils;

    .line 231
    :cond_96
    return-void
.end method

.method private amsBoostNotify(ILjava/lang/String;Ljava/lang/String;II)V
    .registers 12
    .param p1, "pid"    # I
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "state"    # I

    .line 358
    iget-object v0, p0, Lcom/mediatek/server/am/AmsExtImpl;->mPowerHalManagerImpl:Lcom/mediatek/server/powerhal/PowerHalManagerImpl;

    if-eqz v0, :cond_d

    .line 359
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/server/powerhal/PowerHalManagerImpl;->amsBoostNotify(ILjava/lang/String;Ljava/lang/String;II)V

    goto :goto_14

    .line 361
    :cond_d
    const-string v0, "AmsExtImpl"

    const-string v1, "amsBoostNotify mPowerHalManagerImpl is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :goto_14
    return-void
.end method

.method private enableAmsLog(ZLjava/util/ArrayList;)V
    .registers 8
    .param p1, "isEnable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    .line 513
    .local p2, "lruProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iput-boolean p1, p0, Lcom/mediatek/server/am/AmsExtImpl;->isDebug:Z

    .line 515
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->APPEND_CATEGORY_NAME:Z

    .line 516
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    .line 517
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ANR:Z

    .line 518
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKGROUND_CHECK:Z

    .line 519
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKUP:Z

    .line 520
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    .line 521
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_BACKGROUND:Z

    .line 522
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z

    .line 523
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    .line 524
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    .line 525
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    .line 526
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_NETWORK:Z

    .line 527
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER:Z

    .line 528
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER_QUICK:Z

    .line 529
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    .line 530
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    .line 531
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROVIDER:Z

    .line 532
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    .line 533
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    .line 534
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    .line 535
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE_EXECUTING:Z

    .line 536
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    .line 537
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_USAGE_STATS:Z

    .line 538
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    .line 539
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALLOWLISTS:Z

    .line 542
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->APPEND_CATEGORY_NAME:Z

    .line 543
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL:Z

    .line 544
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    .line 545
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    .line 546
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ROOT_TASK:Z

    .line 547
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    .line 548
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    .line 549
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    .line 550
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_APP:Z

    .line 551
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IDLE:Z

    .line 552
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RELEASE:Z

    .line 553
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    .line 554
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    .line 555
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RESULTS:Z

    .line 556
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    .line 557
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    .line 558
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    .line 560
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_57
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7a

    .line 561
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 562
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_77

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_77

    .line 564
    :try_start_69
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    invoke-interface {v2, p1}, Landroid/app/IApplicationThread;->enableActivityThreadLog(Z)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6e} :catch_6f

    .line 567
    goto :goto_77

    .line 565
    :catch_6f
    move-exception v2

    .line 566
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "AmsExtImpl"

    const-string v4, "Error happens when enableActivityThreadLog"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 560
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_77
    :goto_77
    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    .line 570
    .end local v0    # "i":I
    :cond_7a
    return-void
.end method


# virtual methods
.method public IsBuildInApp()Z
    .registers 7

    .line 664
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 666
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    const/4 v1, 0x0

    :try_start_5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 667
    .local v2, "pkgName":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-interface {v0, v2, v1, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 669
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_24

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-nez v4, :cond_23

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1f} :catch_25

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_24

    .line 671
    :cond_23
    return v5

    .line 675
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_24
    goto :goto_3c

    .line 673
    :catch_25
    move-exception v2

    .line 674
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCallerProcessName exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AmsExtImpl"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_3c
    return v1
.end method

.method public addDuraSpeedService()V
    .registers 4

    .line 615
    iget-boolean v0, p0, Lcom/mediatek/server/am/AmsExtImpl;->isDuraSpeedSupport:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mediatek/server/am/AmsExtImpl;->mDuraSpeedService:Lcom/mediatek/duraspeed/manager/IDuraSpeedNative;

    if-eqz v0, :cond_10

    .line 616
    check-cast v0, Landroid/os/IBinder;

    const/4 v1, 0x1

    const-string v2, "duraspeed"

    invoke-static {v2, v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 618
    :cond_10
    return-void
.end method

.method public addToSuppressRestartList(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 647
    iget-object v0, p0, Lcom/mediatek/server/am/AmsExtImpl;->mDuraSpeedService:Lcom/mediatek/duraspeed/manager/IDuraSpeedNative;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Lcom/mediatek/duraspeed/manager/IDuraSpeedNative;->isDuraSpeedEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/mediatek/server/am/AmsExtImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_13

    .line 649
    iget-object v1, p0, Lcom/mediatek/server/am/AmsExtImpl;->mSuppressAction:Lcom/mediatek/duraspeed/suppress/ISuppressAction;

    invoke-interface {v1, v0, p1}, Lcom/mediatek/duraspeed/suppress/ISuppressAction;->addToSuppressRestartList(Landroid/content/Context;Ljava/lang/String;)V

    .line 651
    :cond_13
    return-void
.end method

.method public amsAalDump(Ljava/io/PrintWriter;[Ljava/lang/String;I)I
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "opti"    # I

    .line 395
    iget-object v0, p0, Lcom/mediatek/server/am/AmsExtImpl;->mAalUtils:Lcom/mediatek/amsAal/AalUtils;

    if-eqz v0, :cond_9

    .line 396
    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/amsAal/AalUtils;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 398
    :cond_9
    return p3
.end method

.method public checkAutoBootPermission(Landroid/content/Context;Ljava/lang/String;ILjava/util/ArrayList;I)Z
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p5, "callingPid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;I)Z"
        }
    .end annotation

    .line 683
    .local p4, "runningProcess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v0, p0, Lcom/mediatek/server/am/AmsExtImpl;->mCtaManager:Lcom/mediatek/cta/CtaManager;

    if-nez v0, :cond_e

    .line 684
    invoke-static {}, Lcom/mediatek/cta/CtaManagerFactory;->getInstance()Lcom/mediatek/cta/CtaManagerFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/cta/CtaManagerFactory;->makeCtaManager()Lcom/mediatek/cta/CtaManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/server/am/AmsExtImpl;->mCtaManager:Lcom/mediatek/cta/CtaManager;

    .line 687
    :cond_e
    iget-object v0, p0, Lcom/mediatek/server/am/AmsExtImpl;->mCtaManager:Lcom/mediatek/cta/CtaManager;

    invoke-virtual {v0}, Lcom/mediatek/cta/CtaManager;->isCtaSupported()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_18

    .line 688
    return v1

    .line 691
    :cond_18
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_1d
    if-ltz v0, :cond_85

    .line 692
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 693
    .local v2, "processRecord":Lcom/android/server/am/ProcessRecord;
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    if-ne v3, p5, :cond_82

    .line 701
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v3, v3, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    const/16 v4, 0xc8

    if-le v3, v4, :cond_82

    .line 702
    iget-object v3, p0, Lcom/mediatek/server/am/AmsExtImpl;->mCtaManager:Lcom/mediatek/cta/CtaManager;

    invoke-virtual {v3, p1, p2, p3}, Lcom/mediatek/cta/CtaManager;->checkAutoBootPermission(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    .line 704
    .local v3, "result":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AmsExtImpl"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    if-nez v3, :cond_82

    .line 706
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t start procss because auto boot permission. calling package:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " start process:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-object v1, p0, Lcom/mediatek/server/am/AmsExtImpl;->mAm:Landroid/app/ActivityManager;

    if-nez v1, :cond_7b

    .line 711
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/mediatek/server/am/AmsExtImpl;->mAm:Landroid/app/ActivityManager;

    .line 714
    :cond_7b
    iget-object v1, p0, Lcom/mediatek/server/am/AmsExtImpl;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v1, p2, p3}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V

    .line 715
    const/4 v1, 0x0

    return v1

    .line 691
    .end local v2    # "processRecord":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "result":Z
    :cond_82
    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    .line 720
    .end local v0    # "i":I
    :cond_85
    return v1
.end method

.method public enableAmsLog(Ljava/io/PrintWriter;[Ljava/lang/String;ILjava/util/ArrayList;)V
    .registers 13
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "opti"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "[",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    .line 487
    .local p4, "lruProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v0, 0x0

    .line 488
    .local v0, "option":Ljava/lang/String;
    const/4 v1, 0x0

    .line 489
    .local v1, "isEnable":Z
    add-int/lit8 v2, p3, 0x1

    .line 491
    .local v2, "indexLast":I
    array-length v3, p2

    const-string v4, "  Invalid argument!"

    const-string v5, ""

    const-string v6, "persist.vendor.sys.activitylog"

    if-lt v2, v3, :cond_16

    .line 492
    if-eqz p1, :cond_12

    .line 493
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 495
    :cond_12
    invoke-static {v6, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_50

    .line 497
    :cond_16
    aget-object v0, p2, p3

    .line 498
    aget-object v3, p2, v2

    const-string v7, "on"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    move v1, v3

    .line 499
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, p2, p3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, p2, v2

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 502
    invoke-direct {p0, v1, p4}, Lcom/mediatek/server/am/AmsExtImpl;->enableAmsLog(ZLjava/util/ArrayList;)V

    goto :goto_50

    .line 504
    :cond_48
    if-eqz p1, :cond_4d

    .line 505
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 507
    :cond_4d
    invoke-static {v6, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    :goto_50
    return-void
.end method

.method public enableAmsLog(Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    .line 470
    .local p1, "lruProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    const-string v0, "persist.vendor.sys.activitylog"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 471
    .local v2, "activitylog":Ljava/lang/String;
    if-eqz v2, :cond_4a

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4a

    .line 472
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_47

    .line 473
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v5, v7, :cond_47

    .line 474
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 475
    .local v0, "args":[Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v5

    .line 476
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v6

    .line 477
    invoke-virtual {p0, v1, v0, v5, p1}, Lcom/mediatek/server/am/AmsExtImpl;->enableAmsLog(Ljava/io/PrintWriter;[Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 478
    .end local v0    # "args":[Ljava/lang/String;
    goto :goto_4a

    .line 479
    :cond_47
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :cond_4a
    :goto_4a
    return-void
.end method

.method public enableProcessMainThreadLooperLog(Ljava/io/PrintWriter;[Ljava/lang/String;ILjava/util/ArrayList;)V
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "opti"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "[",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    .line 575
    .local p4, "lruProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v0, 0x0

    .line 576
    .local v0, "processName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 578
    .local v1, "isSucess":Z
    array-length v2, p2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_e

    .line 579
    if-eqz p1, :cond_5a

    .line 580
    const-string v2, "Invalid argument!"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5a

    .line 583
    :cond_e
    aget-object v0, p2, p3

    .line 584
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5a

    .line 585
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 586
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v3, :cond_57

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_57

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v4, :cond_57

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 587
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 589
    :try_start_2f
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    invoke-interface {v4}, Landroid/app/IApplicationThread;->enableProcessMainThreadLooperLog()V

    .line 590
    const/4 v1, 0x1

    .line 591
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sucess enalbe "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " main thread looper log."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_4e} :catch_4f

    .line 594
    goto :goto_57

    .line 592
    :catch_4f
    move-exception v4

    .line 593
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "AmsExtImpl"

    const-string v6, "Error happens when enableProcessMainThreadLooperLog"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 584
    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_57
    :goto_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 600
    .end local v2    # "i":I
    :cond_5a
    :goto_5a
    if-nez v1, :cond_70

    .line 601
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Canntot find prcess: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 603
    :cond_70
    return-void
.end method

.method public isOpenAccelerate()Z
    .registers 4

    .line 750
    iget-object v0, p0, Lcom/mediatek/server/am/AmsExtImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "switch_game_accelerate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v2, 0x1

    :cond_10
    move v0, v2

    .line 751
    .local v0, "state":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOpenAccelerate state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GameSpace"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    return v0
.end method

.method public notRemoveAlarm(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 655
    iget-object v0, p0, Lcom/mediatek/server/am/AmsExtImpl;->mDuraSpeedService:Lcom/mediatek/duraspeed/manager/IDuraSpeedNative;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Lcom/mediatek/duraspeed/manager/IDuraSpeedNative;->isDuraSpeedEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 656
    iget-object v0, p0, Lcom/mediatek/server/am/AmsExtImpl;->mSuppressAction:Lcom/mediatek/duraspeed/suppress/ISuppressAction;

    invoke-interface {v0, p1}, Lcom/mediatek/duraspeed/suppress/ISuppressAction;->notRemoveAlarm(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 658
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityStateChanged(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 13
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "onTop"    # Z

    .line 336
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v0, :cond_5

    .line 337
    return-void

    .line 340
    :cond_5
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v0, v0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    .line 341
    .local v0, "pid":I
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v7, v1, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 342
    .local v7, "uid":I
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 343
    .local v8, "activityName":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 344
    .local v9, "packageName":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/mediatek/server/am/AmsExtImpl;->isDebug:Z

    if-eqz v1, :cond_47

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityStateChanged(onTop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "), pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", activityName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AmsExtImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_47
    if-eqz p2, :cond_53

    .line 351
    const/4 v6, 0x1

    move-object v1, p0

    move v2, v0

    move-object v3, v8

    move-object v4, v9

    move v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/server/am/AmsExtImpl;->amsBoostNotify(ILjava/lang/String;Ljava/lang/String;II)V

    goto :goto_5c

    .line 353
    :cond_53
    const/4 v6, 0x0

    move-object v1, p0

    move v2, v0

    move-object v3, v8

    move-object v4, v9

    move v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/server/am/AmsExtImpl;->amsBoostNotify(ILjava/lang/String;Ljava/lang/String;II)V

    .line 355
    :goto_5c
    return-void
.end method

.method public onAddErrorToDropBox(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "dropboxTag"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;
    .param p3, "pid"    # I

    .line 235
    iget-boolean v0, p0, Lcom/mediatek/server/am/AmsExtImpl;->isDebug:Z

    if-eqz v0, :cond_2a

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAddErrorToDropBox, dropboxTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AmsExtImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_2a
    return-void
.end method

.method public onAfterActivityResumed(Lcom/android/server/wm/ActivityRecord;)V
    .registers 15
    .param p1, "resumedActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 293
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v0, :cond_5

    .line 294
    return-void

    .line 297
    :cond_5
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v0, v0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    .line 298
    .local v0, "pid":I
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v1, v1, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 299
    .local v1, "uid":I
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 300
    .local v2, "activityName":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v10, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 301
    .local v10, "packageName":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/mediatek/server/am/AmsExtImpl;->isDebug:Z

    if-eqz v3, :cond_3f

    .line 302
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAfterActivityResumed, pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", activityName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AmsExtImpl"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_3f
    iget-object v3, p0, Lcom/mediatek/server/am/AmsExtImpl;->mAalUtils:Lcom/mediatek/amsAal/AalUtils;

    if-eqz v3, :cond_46

    .line 312
    invoke-virtual {v3, v10, v2}, Lcom/mediatek/amsAal/AalUtils;->onAfterActivityResumed(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :cond_46
    invoke-static {}, Lcom/mediatek/boostfwk/BoostFwkFactory;->getInstance()Lcom/mediatek/boostfwk/BoostFwkFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/boostfwk/BoostFwkFactory;->makeBoostFwkManager()Lcom/mediatek/boostfwk/BoostFwkManager;

    move-result-object v11

    new-instance v12, Lcom/mediatek/boostfwk/scenario/launch/LaunchScenario;

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v9, 0x0

    move-object v3, v12

    move-object v7, v10

    move-object v8, v2

    invoke-direct/range {v3 .. v9}, Lcom/mediatek/boostfwk/scenario/launch/LaunchScenario;-><init>(IIILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v11, v12}, Lcom/mediatek/boostfwk/BoostFwkManager;->perfHint(Lcom/mediatek/boostfwk/scenario/BasicScenario;)V

    .line 325
    sget-boolean v3, Lcom/mediatek/common/prizeoption/PrizeOption;->PRIZE_GAME_SPACE_APP:Z

    if-eqz v3, :cond_80

    invoke-virtual {p0}, Lcom/mediatek/server/am/AmsExtImpl;->isOpenAccelerate()Z

    move-result v3

    if-eqz v3, :cond_80

    .line 326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resumed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GameSpace"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-virtual {p0, v10}, Lcom/mediatek/server/am/AmsExtImpl;->updateTopRunningInfo(Ljava/lang/String;)V

    .line 330
    :cond_80
    return-void
.end method

.method public onAppProcessDied(Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ApplicationInfo;ILjava/util/ArrayList;Ljava/lang/String;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "userId"    # I
    .param p6, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/am/ProcessRecord;",
            "Landroid/content/pm/ApplicationInfo;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 726
    .local p5, "lruProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-boolean v0, p0, Lcom/mediatek/server/am/AmsExtImpl;->isDuraSpeedSupport:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/mediatek/server/am/AmsExtImpl;->mDuraSpeedService:Lcom/mediatek/duraspeed/manager/IDuraSpeedNative;

    if-eqz v0, :cond_d

    .line 727
    iget-object v1, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, p2, v1, p6}, Lcom/mediatek/duraspeed/manager/IDuraSpeedNative;->onAppProcessDied(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    :cond_d
    return-void
.end method

.method public onBeforeActivitySwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ZIZ)V
    .registers 10
    .param p1, "lastResumedActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "nextResumedActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "pausing"    # Z
    .param p4, "nextResumedActivityType"    # I
    .param p5, "isKeyguardShowing"    # Z

    .line 259
    if-eqz p2, :cond_5c

    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_5c

    if-nez p1, :cond_b

    if-nez p5, :cond_b

    goto :goto_5c

    .line 262
    :cond_b
    if-eqz p1, :cond_1e

    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    if-ne v0, v1, :cond_1e

    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-ne v0, v1, :cond_1e

    .line 266
    return-void

    .line 269
    :cond_1e
    const/4 v0, 0x0

    .line 270
    .local v0, "lastResumedPackageName":Ljava/lang/String;
    if-eqz p1, :cond_23

    .line 271
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 273
    :cond_23
    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 274
    .local v1, "nextResumedPackageName":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/mediatek/server/am/AmsExtImpl;->isDebug:Z

    if-eqz v2, :cond_47

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBeforeActivitySwitch, lastResumedPackageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", nextResumedPackageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AmsExtImpl"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_47
    iget-object v2, p0, Lcom/mediatek/server/am/AmsExtImpl;->mPowerHalManagerImpl:Lcom/mediatek/server/powerhal/PowerHalManagerImpl;

    if-eqz v2, :cond_4e

    .line 280
    invoke-virtual {v2, v0, v1}, Lcom/mediatek/server/powerhal/PowerHalManagerImpl;->amsBoostResume(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_4e
    iget-boolean v2, p0, Lcom/mediatek/server/am/AmsExtImpl;->isDuraSpeedSupport:Z

    if-eqz v2, :cond_5b

    iget-object v2, p0, Lcom/mediatek/server/am/AmsExtImpl;->mDuraSpeedService:Lcom/mediatek/duraspeed/manager/IDuraSpeedNative;

    if-eqz v2, :cond_5b

    if-eqz p1, :cond_5b

    .line 285
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/mediatek/duraspeed/manager/IDuraSpeedNative;->onBeforeActivitySwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ZI)V

    .line 289
    :cond_5b
    return-void

    .line 261
    .end local v0    # "lastResumedPackageName":Ljava/lang/String;
    .end local v1    # "nextResumedPackageName":Ljava/lang/String;
    :cond_5c
    :goto_5c
    return-void
.end method

.method public onBeforeStartProcessForStaticReceiver(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 639
    iget-object v0, p0, Lcom/mediatek/server/am/AmsExtImpl;->mDuraSpeedService:Lcom/mediatek/duraspeed/manager/IDuraSpeedNative;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Lcom/mediatek/duraspeed/manager/IDuraSpeedNative;->isDuraSpeedEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 640
    iget-object v0, p0, Lcom/mediatek/server/am/AmsExtImpl;->mSuppressAction:Lcom/mediatek/duraspeed/suppress/ISuppressAction;

    invoke-interface {v0, p1}, Lcom/mediatek/duraspeed/suppress/ISuppressAction;->onBeforeStartProcessForStaticReceiver(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 642
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public onEndOfActivityIdle(Landroid/content/Context;Lcom/android/server/wm/ActivityRecord;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 444
    iget-boolean v0, p0, Lcom/mediatek/server/am/AmsExtImpl;->isDebug:Z

    if-eqz v0, :cond_1a

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEndOfActivityIdle, activityRecord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AmsExtImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_1a
    iget-object v0, p0, Lcom/mediatek/server/am/AmsExtImpl;->mPowerHalManagerImpl:Lcom/mediatek/server/powerhal/PowerHalManagerImpl;

    if-eqz v0, :cond_21

    .line 449
    invoke-virtual {v0}, Lcom/mediatek/server/powerhal/PowerHalManagerImpl;->amsBoostStop()V

    .line 452
    :cond_21
    iget-boolean v0, p0, Lcom/mediatek/server/am/AmsExtImpl;->isDuraSpeedSupport:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/mediatek/server/am/AmsExtImpl;->mDuraSpeedService:Lcom/mediatek/duraspeed/manager/IDuraSpeedNative;

    if-eqz v0, :cond_2e

    .line 453
    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-interface {v0, p1, v1}, Lcom/mediatek/duraspeed/manager/IDuraSpeedNative;->onActivityIdle(Landroid/content/Context;Landroid/content/Intent;)V

    .line 458
    :cond_2e
    invoke-static {}, Lcom/mediatek/boostfwk/BoostFwkFactory;->getInstance()Lcom/mediatek/boostfwk/BoostFwkFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/boostfwk/BoostFwkFactory;->makeBoostFwkManager()Lcom/mediatek/boostfwk/BoostFwkManager;

    move-result-object v0

    new-instance v8, Lcom/mediatek/boostfwk/scenario/launch/LaunchScenario;

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x1

    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 463
    invoke-virtual {p2, v1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    const/4 v7, 0x1

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/mediatek/boostfwk/scenario/launch/LaunchScenario;-><init>(IIILjava/lang/String;Landroid/view/WindowManager$LayoutParams;Z)V

    .line 458
    invoke-virtual {v0, v8}, Lcom/mediatek/boostfwk/BoostFwkManager;->perfHint(Lcom/mediatek/boostfwk/scenario/BasicScenario;)V

    .line 466
    return-void
.end method

.method public onNotifyAppCrash(IILjava/lang/String;)V
    .registers 6
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 432
    iget-boolean v0, p0, Lcom/mediatek/server/am/AmsExtImpl;->isDebug:Z

    if-eqz v0, :cond_22

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNotifyAppCrash, packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AmsExtImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_22
    iget-object v0, p0, Lcom/mediatek/server/am/AmsExtImpl;->mPowerHalManagerImpl:Lcom/mediatek/server/powerhal/PowerHalManagerImpl;

    if-eqz v0, :cond_29

    .line 438
    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/server/powerhal/PowerHalManagerImpl;->NotifyAppCrash(IILjava/lang/String;)V

    .line 440
    :cond_29
    return-void
.end method

.method public onReadyToStartComponent(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "suppressReason"    # Ljava/lang/String;
    .param p4, "className"    # Ljava/lang/String;

    .line 630
    iget-object v0, p0, Lcom/mediatek/server/am/AmsExtImpl;->mDuraSpeedService:Lcom/mediatek/duraspeed/manager/IDuraSpeedNative;

    if-eqz v0, :cond_17

    invoke-interface {v0}, Lcom/mediatek/duraspeed/manager/IDuraSpeedNative;->isDuraSpeedEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 631
    iget-object v1, p0, Lcom/mediatek/server/am/AmsExtImpl;->mSuppressAction:Lcom/mediatek/duraspeed/suppress/ISuppressAction;

    iget-object v2, p0, Lcom/mediatek/server/am/AmsExtImpl;->mContext:Landroid/content/Context;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/mediatek/duraspeed/suppress/ISuppressAction;->onReadyToStartComponent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 634
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartProcess(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "hostingType"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 405
    iget-boolean v0, p0, Lcom/mediatek/server/am/AmsExtImpl;->isDebug:Z

    if-eqz v0, :cond_22

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartProcess, hostingType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AmsExtImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_22
    iget-object v0, p0, Lcom/mediatek/server/am/AmsExtImpl;->mPowerHalManagerImpl:Lcom/mediatek/server/powerhal/PowerHalManagerImpl;

    if-eqz v0, :cond_29

    .line 411
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/server/powerhal/PowerHalManagerImpl;->amsBoostProcessCreate(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :cond_29
    iget-object v0, p0, Lcom/mediatek/server/am/AmsExtImpl;->mDexOptExt:Lcom/mediatek/dx/DexOptExt;

    if-eqz v0, :cond_30

    .line 415
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/dx/DexOptExt;->onStartProcess(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :cond_30
    invoke-static {}, Lcom/mediatek/boostfwk/BoostFwkFactory;->getInstance()Lcom/mediatek/boostfwk/BoostFwkFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/boostfwk/BoostFwkFactory;->makeBoostFwkManager()Lcom/mediatek/boostfwk/BoostFwkManager;

    move-result-object v0

    new-instance v7, Lcom/mediatek/boostfwk/scenario/launch/LaunchScenario;

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v1, v7

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/boostfwk/scenario/launch/LaunchScenario;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/mediatek/boostfwk/BoostFwkManager;->perfHint(Lcom/mediatek/boostfwk/scenario/BasicScenario;)V

    .line 428
    return-void
.end method

.method public onSystemReady(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 244
    const-string v0, "AmsExtImpl"

    const-string v1, "onSystemReady"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-boolean v0, p0, Lcom/mediatek/server/am/AmsExtImpl;->isDuraSpeedSupport:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/mediatek/server/am/AmsExtImpl;->mDuraSpeedService:Lcom/mediatek/duraspeed/manager/IDuraSpeedNative;

    if-eqz v0, :cond_12

    .line 248
    invoke-interface {v0}, Lcom/mediatek/duraspeed/manager/IDuraSpeedNative;->onSystemReady()V

    .line 250
    :cond_12
    iput-object p1, p0, Lcom/mediatek/server/am/AmsExtImpl;->mContext:Landroid/content/Context;

    .line 252
    return-void
.end method

.method public onUpdateSleep(ZZ)V
    .registers 5
    .param p1, "wasSleeping"    # Z
    .param p2, "isSleepingAfterUpdate"    # Z

    .line 367
    iget-boolean v0, p0, Lcom/mediatek/server/am/AmsExtImpl;->isDebug:Z

    if-eqz v0, :cond_22

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateSleep, wasSleeping="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSleepingAfterUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AmsExtImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_22
    iget-object v0, p0, Lcom/mediatek/server/am/AmsExtImpl;->mAalUtils:Lcom/mediatek/amsAal/AalUtils;

    if-eqz v0, :cond_29

    .line 373
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/amsAal/AalUtils;->onUpdateSleep(ZZ)V

    .line 376
    :cond_29
    return-void
.end method

.method public onWakefulnessChanged(I)V
    .registers 3
    .param p1, "wakefulness"    # I

    .line 608
    iget-boolean v0, p0, Lcom/mediatek/server/am/AmsExtImpl;->isDuraSpeedSupport:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/mediatek/server/am/AmsExtImpl;->mDuraSpeedService:Lcom/mediatek/duraspeed/manager/IDuraSpeedNative;

    if-eqz v0, :cond_b

    .line 609
    invoke-interface {v0, p1}, Lcom/mediatek/duraspeed/manager/IDuraSpeedNative;->onWakefulnessChanged(I)V

    .line 611
    :cond_b
    return-void
.end method

.method public setAalEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 388
    iget-object v0, p0, Lcom/mediatek/server/am/AmsExtImpl;->mAalUtils:Lcom/mediatek/amsAal/AalUtils;

    if-eqz v0, :cond_7

    .line 389
    invoke-virtual {v0, p1}, Lcom/mediatek/amsAal/AalUtils;->setEnabled(Z)V

    .line 391
    :cond_7
    return-void
.end method

.method public setAalMode(I)V
    .registers 3
    .param p1, "mode"    # I

    .line 381
    iget-object v0, p0, Lcom/mediatek/server/am/AmsExtImpl;->mAalUtils:Lcom/mediatek/amsAal/AalUtils;

    if-eqz v0, :cond_7

    .line 382
    invoke-virtual {v0, p1}, Lcom/mediatek/amsAal/AalUtils;->setAalMode(I)V

    .line 384
    :cond_7
    return-void
.end method

.method public startDuraSpeedService(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 622
    iget-boolean v0, p0, Lcom/mediatek/server/am/AmsExtImpl;->isDuraSpeedSupport:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/mediatek/server/am/AmsExtImpl;->mDuraSpeedService:Lcom/mediatek/duraspeed/manager/IDuraSpeedNative;

    if-eqz v0, :cond_b

    .line 623
    invoke-interface {v0, p1}, Lcom/mediatek/duraspeed/manager/IDuraSpeedNative;->startDuraSpeedService(Landroid/content/Context;)V

    .line 625
    :cond_b
    return-void
.end method

.method public updateTopRunningInfo(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTopRunningInfo currentTopPackage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , mCurTopPkg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/server/am/AmsExtImpl;->mCurTopPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameSpace"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget-object v0, p0, Lcom/mediatek/server/am/AmsExtImpl;->mCurTopPkg:Ljava/lang/String;

    if-eqz v0, :cond_37

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 741
    iput-object p1, p0, Lcom/mediatek/server/am/AmsExtImpl;->mCurTopPkg:Ljava/lang/String;

    .line 742
    iget-object v0, p0, Lcom/mediatek/server/am/AmsExtImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_game_package"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 744
    :cond_37
    return-void
.end method

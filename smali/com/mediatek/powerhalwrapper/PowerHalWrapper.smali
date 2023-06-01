.class public Lcom/mediatek/powerhalwrapper/PowerHalWrapper;
.super Ljava/lang/Object;
.source "PowerHalWrapper.java"


# static fields
.field private static AMS_BOOST_ACT_SWITCH:Z = false

.field private static AMS_BOOST_PACK_SWITCH:Z = false

.field private static AMS_BOOST_PROCESS_CREATE:Z = false

.field private static AMS_BOOST_PROCESS_CREATE_BOOST:Z = false

.field private static final AMS_BOOST_TIME:I = 0x2710

.field private static final ENG:Z = true

.field private static EXT_PEAK_PERF_MODE:Z = false

.field public static final MAX_NETD_IP_FILTER_COUNT:I = 0x3

.field public static final MTKPOWER_CMD_GET_POWER_SCN_TYPE:I = 0x69

.field public static final MTKPOWER_CMD_GET_RILD_CAP:I = 0x28

.field private static final MTKPOWER_HINT_ACT_SWITCH:I = 0x17

.field private static final MTKPOWER_HINT_ALWAYS_ENABLE:I = 0xfffffff

.field private static final MTKPOWER_HINT_APP_ROTATE:I = 0x18

.field private static final MTKPOWER_HINT_EXT_LAUNCH:I = 0x1e

.field private static final MTKPOWER_HINT_GALLERY_BOOST:I = 0x1a

.field private static final MTKPOWER_HINT_PACK_SWITCH:I = 0x16

.field private static final MTKPOWER_HINT_PMS_INSTALL:I = 0x1d

.field private static final MTKPOWER_HINT_PROCESS_CREATE:I = 0x15

.field private static final MTKPOWER_HINT_WFD:I = 0x1c

.field private static final MTKPOWER_HINT_WIPHY_SPEED_DL:I = 0x20

.field private static final MTKPOWER_STATE_DEAD:I = 0x3

.field private static final MTKPOWER_STATE_DESTORYED:I = 0x2

.field private static final MTKPOWER_STATE_PAUSED:I = 0x0

.field private static final MTKPOWER_STATE_RESUMED:I = 0x1

.field private static final MTKPOWER_STATE_STOPPED:I = 0x4

.field public static final PERF_RES_NET_MD_CRASH_PID:I = 0x280c300

.field public static final PERF_RES_NET_WIFI_SMART_PREDICT:I = 0x2804100

.field public static final PERF_RES_POWERHAL_SCREEN_OFF_STATE:I = 0x3400000

.field public static final POWER_HIDL_SET_SYS_INFO:I = 0x0

.field public static final SCN_PERF_LOCK_HINT:I = 0x3

.field public static final SCN_USER_HINT:I = 0x2

.field public static final SCREEN_OFF_DISABLE:I = 0x0

.field public static final SCREEN_OFF_ENABLE:I = 0x1

.field public static final SCREEN_OFF_WAIT_RESTORE:I = 0x2

.field public static final SETSYS_FOREGROUND_SPORTS:I = 0x3

.field public static final SETSYS_INTERNET_STATUS:I = 0x5

.field public static final SETSYS_MANAGEMENT_PERIODIC:I = 0x4

.field public static final SETSYS_MANAGEMENT_PREDICT:I = 0x1

.field public static final SETSYS_NETD_CLEAR_FASTPATH_RULES:I = 0x11

.field public static final SETSYS_NETD_DUPLICATE_PACKET_LINK:I = 0x8

.field public static final SETSYS_NETD_SET_FASTPATH_BY_LINKINFO:I = 0x10

.field public static final SETSYS_NETD_SET_FASTPATH_BY_UID:I = 0xf

.field public static final SETSYS_NETD_STATUS:I = 0x6

.field public static final SETSYS_PACKAGE_VERSION_NAME:I = 0x9

.field public static final SETSYS_PREDICT_INFO:I = 0x7

.field public static final SETSYS_SPORTS_APK:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PowerHalWrapper"

.field private static final USER_DURATION_MAX:I = 0x7530

.field private static lock:Ljava/lang/Object;

.field private static mProcessCreatePack:Ljava/lang/String;

.field private static sInstance:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;


# instance fields
.field private mLock:Ljava/util/concurrent/locks/Lock;

.field public scnlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mediatek/powerhalwrapper/ScnList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 116
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->AMS_BOOST_PROCESS_CREATE:Z

    .line 117
    sput-boolean v0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->AMS_BOOST_PROCESS_CREATE_BOOST:Z

    .line 118
    sput-boolean v0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->AMS_BOOST_PACK_SWITCH:Z

    .line 119
    sput-boolean v0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->AMS_BOOST_ACT_SWITCH:Z

    .line 120
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->EXT_PEAK_PERF_MODE:Z

    .line 121
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->sInstance:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    .line 122
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->lock:Ljava/lang/Object;

    .line 124
    sput-object v0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->mProcessCreatePack:Ljava/lang/String;

    .line 174
    const-string v0, "powerhalwrap_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->scnlist:Ljava/util/List;

    .line 169
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 189
    return-void
.end method

.method public static getInstance()Lcom/mediatek/powerhalwrapper/PowerHalWrapper;
    .registers 2

    .line 178
    const-string v0, "PowerHalWrapper.getInstance"

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->log(Ljava/lang/String;)V

    .line 179
    sget-object v0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    :try_start_8
    sget-object v1, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->sInstance:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    if-nez v1, :cond_13

    .line 181
    new-instance v1, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    invoke-direct {v1}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;-><init>()V

    sput-object v1, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->sInstance:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    .line 183
    :cond_13
    sget-object v1, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->sInstance:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    monitor-exit v0

    return-object v1

    .line 184
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private static log(Ljava/lang/String;)V
    .registers 3
    .param p0, "info"    # Ljava/lang/String;

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerHalWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .registers 3
    .param p0, "info"    # Ljava/lang/String;

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerHalWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .registers 3
    .param p0, "info"    # Ljava/lang/String;

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerHalWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    return-void
.end method

.method public static native nativeMtkCusPowerHint(II)I
.end method

.method public static native nativeMtkPowerHint(II)I
.end method

.method public static native nativeNotifyAppState(Ljava/lang/String;Ljava/lang/String;III)I
.end method

.method public static native nativeNotifySbeRescue(III)I
.end method

.method public static native nativePerfCusLockHint(II)I
.end method

.method public static varargs native nativePerfLockAcq(II[I)I
.end method

.method public static native nativePerfLockRel(I)I
.end method

.method public static native nativeQuerySysInfo(II)I
.end method

.method public static native nativeScnConfig(IIIIII)I
.end method

.method public static native nativeScnDisable(I)I
.end method

.method public static native nativeScnEnable(II)I
.end method

.method public static native nativeScnReg()I
.end method

.method public static native nativeScnUltraCfg(IIIIII)I
.end method

.method public static native nativeScnUnreg(I)I
.end method

.method public static native nativeSetSysInfo(Ljava/lang/String;I)I
.end method

.method public static native nativeSetSysInfoAsync(Ljava/lang/String;I)I
.end method


# virtual methods
.method public NotifyAppCrash(IILjava/lang/String;)V
    .registers 11
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 346
    const/4 v0, 0x0

    .local v0, "found":I
    const/4 v1, -0x1

    .line 348
    .local v1, "type":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 351
    .local v2, "myPid":I
    if-ne v2, p1, :cond_2d

    .line 352
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<NotifyAppCrash> pack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ,pid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " == myPid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->log(Ljava/lang/String;)V

    .line 353
    return-void

    .line 357
    :cond_2d
    const/4 v3, 0x3

    invoke-static {p3, p3, p1, v3, p2}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeNotifyAppState(Ljava/lang/String;Ljava/lang/String;III)I

    .line 359
    iget-object v3, p0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 361
    iget-object v3, p0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->scnlist:Ljava/util/List;

    if-eqz v3, :cond_95

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_95

    .line 362
    iget-object v3, p0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->scnlist:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 363
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/powerhalwrapper/ScnList;>;"
    :goto_46
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_95

    .line 364
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/powerhalwrapper/ScnList;

    .line 365
    .local v4, "item":Lcom/mediatek/powerhalwrapper/ScnList;
    invoke-virtual {v4}, Lcom/mediatek/powerhalwrapper/ScnList;->getpid()I

    move-result v5

    if-ne v5, p1, :cond_94

    .line 366
    invoke-virtual {v4}, Lcom/mediatek/powerhalwrapper/ScnList;->gethandle()I

    move-result v5

    invoke-static {v5}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativePerfLockRel(I)I

    .line 367
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<NotifyAppCrash> pid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/mediatek/powerhalwrapper/ScnList;->getpid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v4}, Lcom/mediatek/powerhalwrapper/ScnList;->getuid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " handle:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/mediatek/powerhalwrapper/ScnList;->gethandle()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 367
    invoke-static {v5}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->log(Ljava/lang/String;)V

    .line 369
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 370
    add-int/lit8 v0, v0, 0x1

    .line 372
    .end local v4    # "item":Lcom/mediatek/powerhalwrapper/ScnList;
    :cond_94
    goto :goto_46

    .line 374
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/powerhalwrapper/ScnList;>;"
    :cond_95
    iget-object v3, p0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 375
    return-void
.end method

.method public UpdateManagementPkt(ILjava/lang/String;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "packet"    # Ljava/lang/String;

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<UpdateManagementPkt> type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", packet:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->logd(Ljava/lang/String;)V

    .line 286
    sparse-switch p1, :sswitch_data_2c

    goto :goto_2a

    .line 293
    :sswitch_20
    const/4 v0, 0x4

    invoke-static {p2, v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeSetSysInfo(Ljava/lang/String;I)I

    .line 294
    goto :goto_2a

    .line 289
    :sswitch_25
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeSetSysInfo(Ljava/lang/String;I)I

    .line 290
    nop

    .line 299
    :goto_2a
    return-void

    nop

    :sswitch_data_2c
    .sparse-switch
        0x1 -> :sswitch_25
        0x4 -> :sswitch_20
    .end sparse-switch
.end method

.method public amsBoostNotify(ILjava/lang/String;Ljava/lang/String;II)V
    .registers 8
    .param p1, "pid"    # I
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "state"    # I

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "amsBoostNotify pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",activity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mProcessCreatePack"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->mProcessCreatePack:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->log(Ljava/lang/String;)V

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->log(Ljava/lang/String;)V

    .line 462
    invoke-static {p3, p2, p1, p5, p4}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeNotifyAppState(Ljava/lang/String;Ljava/lang/String;III)I

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "amsBoostNotify AMS_BOOST_PROCESS_CREATE_BOOST:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->AMS_BOOST_PROCESS_CREATE_BOOST:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->log(Ljava/lang/String;)V

    .line 466
    sget-object v0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->mProcessCreatePack:Ljava/lang/String;

    if-eqz v0, :cond_71

    if-eqz p3, :cond_71

    .line 467
    sget-boolean v1, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->AMS_BOOST_PROCESS_CREATE_BOOST:Z

    if-eqz v1, :cond_71

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    const/4 v0, 0x1

    if-ne p5, v0, :cond_71

    .line 470
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->AMS_BOOST_PROCESS_CREATE_BOOST:Z

    .line 473
    :cond_71
    return-void
.end method

.method public amsBoostProcessCreate(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "hostingType"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 420
    if-eqz p1, :cond_39

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_39

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "amsBoostProcessCreate package:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->log(Ljava/lang/String;)V

    .line 423
    const-wide/16 v2, 0x40

    const-string v0, "amPerfBoost"

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 424
    sput-boolean v1, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->AMS_BOOST_PROCESS_CREATE:Z

    .line 425
    sput-boolean v1, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->AMS_BOOST_PROCESS_CREATE_BOOST:Z

    .line 426
    sput-object p2, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->mProcessCreatePack:Ljava/lang/String;

    .line 429
    const/16 v0, 0x1e

    invoke-static {v0, v4}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeMtkPowerHint(II)I

    .line 431
    const/16 v0, 0x15

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeMtkPowerHint(II)I

    .line 433
    :cond_39
    return-void
.end method

.method public amsBoostResume(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "lastResumedPackageName"    # Ljava/lang/String;
    .param p2, "nextResumedPackageName"    # Ljava/lang/String;

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<amsBoostResume> last:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", next:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->log(Ljava/lang/String;)V

    .line 398
    const-wide/16 v0, 0x40

    const-string v2, "amPerfBoost"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 400
    const/16 v0, 0x1e

    invoke-static {v0, v3}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeMtkPowerHint(II)I

    .line 402
    const/16 v0, 0x2710

    const/4 v1, 0x1

    if-eqz p1, :cond_3d

    .line 403
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_35

    goto :goto_3d

    .line 411
    :cond_35
    sput-boolean v1, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->AMS_BOOST_ACT_SWITCH:Z

    .line 414
    const/16 v1, 0x17

    invoke-static {v1, v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeMtkPowerHint(II)I

    goto :goto_44

    .line 404
    :cond_3d
    :goto_3d
    sput-boolean v1, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->AMS_BOOST_PACK_SWITCH:Z

    .line 407
    const/16 v1, 0x16

    invoke-static {v1, v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeMtkPowerHint(II)I

    .line 417
    :goto_44
    return-void
.end method

.method public amsBoostStop()V
    .registers 5

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "amsBoostStop AMS_BOOST_PACK_SWITCH:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->AMS_BOOST_PACK_SWITCH:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", AMS_BOOST_ACT_SWITCH:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->AMS_BOOST_ACT_SWITCH:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", AMS_BOOST_PROCESS_CREATE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->AMS_BOOST_PROCESS_CREATE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->log(Ljava/lang/String;)V

    .line 440
    sget-boolean v0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->AMS_BOOST_PACK_SWITCH:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    .line 441
    sput-boolean v1, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->AMS_BOOST_PACK_SWITCH:Z

    .line 442
    const/16 v0, 0x16

    invoke-static {v0, v1}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeMtkPowerHint(II)I

    .line 445
    :cond_36
    sget-boolean v0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->AMS_BOOST_ACT_SWITCH:Z

    if-eqz v0, :cond_41

    .line 446
    sput-boolean v1, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->AMS_BOOST_ACT_SWITCH:Z

    .line 447
    const/16 v0, 0x17

    invoke-static {v0, v1}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeMtkPowerHint(II)I

    .line 450
    :cond_41
    sget-boolean v0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->AMS_BOOST_PROCESS_CREATE:Z

    if-eqz v0, :cond_4c

    .line 451
    sput-boolean v1, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->AMS_BOOST_PROCESS_CREATE:Z

    .line 452
    const/16 v0, 0x15

    invoke-static {v0, v1}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeMtkPowerHint(II)I

    .line 455
    :cond_4c
    const-wide/16 v2, 0x40

    const-string v0, "amPerfBoost"

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 456
    return-void
.end method

.method public galleryBoostEnable(I)V
    .registers 4
    .param p1, "timeoutMs"    # I

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<galleryBoostEnable> do boost with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->log(Ljava/lang/String;)V

    .line 318
    const/16 v0, 0x1a

    invoke-static {v0, p1}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeMtkPowerHint(II)I

    .line 319
    return-void
.end method

.method public getCpuCap()V
    .registers 2

    .line 268
    const-string v0, "getCpuCap"

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->log(Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public getCpuRTInfo()V
    .registers 2

    .line 280
    const-string v0, "mCpuRTInfo"

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->log(Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public getGpuCap()V
    .registers 2

    .line 272
    const-string v0, "mGpuCap"

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->log(Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public getGpuRTInfo()V
    .registers 2

    .line 276
    const-string v0, "getGpuCap"

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->log(Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public getRildCap(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 378
    const/16 v0, 0x28

    invoke-static {v0, p1}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeQuerySysInfo(II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 379
    return v1

    .line 381
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public mtkCusPowerHint(II)V
    .registers 3
    .param p1, "hint"    # I
    .param p2, "data"    # I

    .line 196
    invoke-static {p1, p2}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeMtkCusPowerHint(II)I

    .line 197
    return-void
.end method

.method public mtkNotifySbeRescue(III)V
    .registers 4
    .param p1, "tid"    # I
    .param p2, "start"    # I
    .param p3, "enhance"    # I

    .line 200
    invoke-static {p1, p2, p3}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeNotifySbeRescue(III)I

    .line 201
    return-void
.end method

.method public mtkPowerHint(II)V
    .registers 3
    .param p1, "hint"    # I
    .param p2, "data"    # I

    .line 192
    invoke-static {p1, p2}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeMtkPowerHint(II)I

    .line 193
    return-void
.end method

.method public perfCusLockHint(II)I
    .registers 4
    .param p1, "hint"    # I
    .param p2, "duration"    # I

    .line 232
    invoke-static {p1, p2}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativePerfCusLockHint(II)I

    move-result v0

    return v0
.end method

.method public varargs perfLockAcquire(II[I)I
    .registers 9
    .param p1, "handle"    # I
    .param p2, "duration"    # I
    .param p3, "list"    # [I

    .line 205
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 206
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 207
    .local v1, "uid":I
    invoke-static {p1, p2, p3}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativePerfLockAcq(II[I)I

    move-result v2

    .line 208
    .local v2, "new_hdl":I
    if-lez v2, :cond_2a

    if-eq v2, p1, :cond_2a

    const/16 v3, 0x7530

    if-gt p2, v3, :cond_16

    if-nez p2, :cond_2a

    .line 209
    :cond_16
    iget-object v3, p0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 210
    new-instance v3, Lcom/mediatek/powerhalwrapper/ScnList;

    invoke-direct {v3, v2, v0, v1}, Lcom/mediatek/powerhalwrapper/ScnList;-><init>(III)V

    .line 211
    .local v3, "user":Lcom/mediatek/powerhalwrapper/ScnList;
    iget-object v4, p0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->scnlist:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v4, p0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 214
    .end local v3    # "user":Lcom/mediatek/powerhalwrapper/ScnList;
    :cond_2a
    return v2
.end method

.method public perfLockRelease(I)V
    .registers 5
    .param p1, "handle"    # I

    .line 218
    iget-object v0, p0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 219
    iget-object v0, p0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->scnlist:Ljava/util/List;

    if-eqz v0, :cond_2b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2b

    .line 220
    iget-object v0, p0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->scnlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 221
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/powerhalwrapper/ScnList;>;"
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 222
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/powerhalwrapper/ScnList;

    .line 223
    .local v1, "item":Lcom/mediatek/powerhalwrapper/ScnList;
    invoke-virtual {v1}, Lcom/mediatek/powerhalwrapper/ScnList;->gethandle()I

    move-result v2

    if-ne v2, p1, :cond_2a

    .line 224
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 225
    .end local v1    # "item":Lcom/mediatek/powerhalwrapper/ScnList;
    :cond_2a
    goto :goto_15

    .line 227
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/powerhalwrapper/ScnList;>;"
    :cond_2b
    iget-object v0, p0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 228
    invoke-static {p1}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativePerfLockRel(I)I

    .line 229
    return-void
.end method

.method public querySysInfo(II)I
    .registers 5
    .param p1, "cmd"    # I
    .param p2, "param"    # I

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<querySysInfo> cmd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " param:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->logd(Ljava/lang/String;)V

    .line 313
    invoke-static {p1, p2}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeQuerySysInfo(II)I

    move-result v0

    return v0
.end method

.method public scnConfig(IIIIII)I
    .registers 8
    .param p1, "hdl"    # I
    .param p2, "cmd"    # I
    .param p3, "param_1"    # I
    .param p4, "param_2"    # I
    .param p5, "param_3"    # I
    .param p6, "param_4"    # I

    .line 242
    const-string v0, "scnConfig not support!!!"

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->loge(Ljava/lang/String;)V

    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public scnDisable(I)I
    .registers 3
    .param p1, "hdl"    # I

    .line 257
    const-string v0, "scnDisable not support!!!"

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->loge(Ljava/lang/String;)V

    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public scnEnable(II)I
    .registers 4
    .param p1, "hdl"    # I
    .param p2, "timeout"    # I

    .line 252
    const-string v0, "scnEnable not support!!!"

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->loge(Ljava/lang/String;)V

    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method public scnReg()I
    .registers 2

    .line 236
    const-string v0, "scnReg not support!!!"

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->loge(Ljava/lang/String;)V

    .line 237
    const/4 v0, -0x1

    return v0
.end method

.method public scnUltraCfg(IIIIII)I
    .registers 8
    .param p1, "hdl"    # I
    .param p2, "ultracmd"    # I
    .param p3, "param_1"    # I
    .param p4, "param_2"    # I
    .param p5, "param_3"    # I
    .param p6, "param_4"    # I

    .line 263
    const-string v0, "scnUltraCfg not support!!!"

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->loge(Ljava/lang/String;)V

    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method public scnUnreg(I)I
    .registers 3
    .param p1, "hdl"    # I

    .line 247
    const-string v0, "scnUnreg not support!!!"

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->loge(Ljava/lang/String;)V

    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public setInstallationBoost(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<setInstallationBoost> enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->log(Ljava/lang/String;)V

    .line 386
    const/16 v0, 0x1d

    if-eqz p1, :cond_1e

    .line 387
    const/16 v1, 0x3a98

    invoke-static {v0, v1}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeMtkPowerHint(II)I

    goto :goto_22

    .line 389
    :cond_1e
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeMtkPowerHint(II)I

    .line 390
    :goto_22
    return-void
.end method

.method public setRotationBoost(I)V
    .registers 4
    .param p1, "boostTime"    # I

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<setRotation> do boost with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->log(Ljava/lang/String;)V

    .line 323
    const/16 v0, 0x18

    invoke-static {v0, p1}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeMtkPowerHint(II)I

    .line 324
    return-void
.end method

.method public setSpeedDownload(I)V
    .registers 4
    .param p1, "timeoutMs"    # I

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<setSpeedDownload> do boost with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->log(Ljava/lang/String;)V

    .line 328
    const/16 v0, 0x20

    invoke-static {v0, p1}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeMtkPowerHint(II)I

    .line 329
    return-void
.end method

.method public setSportsApk(Ljava/lang/String;)V
    .registers 4
    .param p1, "pack"    # Ljava/lang/String;

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<setSportsApk> pack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->log(Ljava/lang/String;)V

    .line 342
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeSetSysInfo(Ljava/lang/String;I)I

    .line 343
    return-void
.end method

.method public setSysInfo(ILjava/lang/String;)I
    .registers 4
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;

    .line 303
    invoke-static {p2, p1}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeSetSysInfo(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setSysInfoAsync(ILjava/lang/String;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;

    .line 308
    invoke-static {p2, p1}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeSetSysInfoAsync(Ljava/lang/String;I)I

    .line 309
    return-void
.end method

.method public setWFD(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<setWFD> enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->log(Ljava/lang/String;)V

    .line 333
    const/16 v0, 0x1c

    if-eqz p1, :cond_1f

    .line 334
    const v1, 0xfffffff

    invoke-static {v0, v1}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeMtkPowerHint(II)I

    goto :goto_23

    .line 337
    :cond_1f
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeMtkPowerHint(II)I

    .line 338
    :goto_23
    return-void
.end method

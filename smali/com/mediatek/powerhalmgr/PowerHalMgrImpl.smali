.class public Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;
.super Lcom/mediatek/powerhalmgr/PowerHalMgr;
.source "PowerHalMgrImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PowerHalMgrImpl"

.field private static lock:Ljava/lang/Object;

.field private static sInstance:Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;


# instance fields
.field private inited:I

.field private mContext:Landroid/content/Context;

.field private mPreviousTime:J

.field private sService:Lcom/mediatek/powerhalmgr/IPowerHalMgr;

.field private setTid:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->sInstance:Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 90
    invoke-direct {p0}, Lcom/mediatek/powerhalmgr/PowerHalMgr;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->sService:Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->inited:I

    .line 62
    iput v0, p0, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->setTid:I

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->mPreviousTime:J

    .line 92
    return-void
.end method

.method public static getInstance()Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;
    .registers 2

    .line 82
    sget-object v0, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_3
    sget-object v1, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->sInstance:Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;

    if-nez v1, :cond_e

    .line 84
    new-instance v1, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;

    invoke-direct {v1}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;-><init>()V

    sput-object v1, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->sInstance:Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;

    .line 86
    :cond_e
    sget-object v1, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->sInstance:Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;

    monitor-exit v0

    return-object v1

    .line 87
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private init()V
    .registers 3

    .line 69
    iget v0, p0, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->inited:I

    if-nez v0, :cond_1d

    .line 70
    const-string v0, "power_hal_mgr_service"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 71
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1d

    .line 72
    invoke-static {v0}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->sService:Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    .line 73
    if-eqz v1, :cond_18

    .line 74
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->inited:I

    goto :goto_1d

    .line 76
    :cond_18
    const-string v1, "ERR: getService() sService is still null.."

    invoke-direct {p0, v1}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->loge(Ljava/lang/String;)V

    .line 79
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_1d
    :goto_1d
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 4
    .param p1, "info"    # Ljava/lang/String;

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerHalMgrImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .registers 4
    .param p1, "info"    # Ljava/lang/String;

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerHalMgrImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 4
    .param p1, "info"    # Ljava/lang/String;

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerHalMgrImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    return-void
.end method

.method public static native nativeGetPid()I
.end method

.method public static native nativeGetTid()I
.end method


# virtual methods
.method public UpdateManagementPkt(ILjava/lang/String;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "packet"    # Ljava/lang/String;

    .line 194
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->init()V

    .line 195
    iget-object v0, p0, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->sService:Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    if-eqz v0, :cond_a

    .line 196
    invoke-interface {v0, p1, p2}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->UpdateManagementPkt(ILjava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 199
    :cond_a
    goto :goto_20

    .line 197
    :catch_b
    move-exception v0

    .line 198
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in UpdateManagementPkt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->loge(Ljava/lang/String;)V

    .line 200
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_20
    return-void
.end method

.method public flushPriorityRules(I)Z
    .registers 6
    .param p1, "type"    # I

    .line 329
    const/4 v0, 0x0

    .line 332
    .local v0, "status":Z
    :try_start_1
    invoke-direct {p0}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->init()V

    .line 333
    iget-object v1, p0, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->sService:Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    if-eqz v1, :cond_d

    .line 334
    invoke-interface {v1, p1}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->flushPriorityRules(I)Z

    move-result v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_e

    move v0, v1

    .line 337
    :cond_d
    goto :goto_23

    .line 335
    :catch_e
    move-exception v1

    .line 336
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERR: RemoteException in flushPriorityRules:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->loge(Ljava/lang/String;)V

    .line 338
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_23
    return v0
.end method

.method public getCpuCap()V
    .registers 2

    .line 177
    const-string v0, "getCpuCap"

    invoke-direct {p0, v0}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->log(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public getCpuRTInfo()V
    .registers 2

    .line 189
    const-string v0, "getCpuRTInfo"

    invoke-direct {p0, v0}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->log(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public getGpuCap()V
    .registers 2

    .line 181
    const-string v0, "getGpuCap"

    invoke-direct {p0, v0}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->log(Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public getGpuRTInfo()V
    .registers 2

    .line 185
    const-string v0, "getGpuRTInfo"

    invoke-direct {p0, v0}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->log(Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public isDupPacketPredictionStarted()Z
    .registers 4

    .line 251
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->init()V

    .line 252
    iget-object v0, p0, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->sService:Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    if-eqz v0, :cond_20

    .line 253
    invoke-interface {v0}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->isDupPacketPredictionStarted()Z

    move-result v0

    .line 254
    .local v0, "enable":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDupPacketPredictionStarted() enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->logd(Ljava/lang/String;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_21

    .line 255
    return v0

    .line 259
    .end local v0    # "enable":Z
    :cond_20
    goto :goto_36

    .line 257
    :catch_21
    move-exception v0

    .line 258
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in isDupPacketPredictionStarted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->loge(Ljava/lang/String;)V

    .line 260
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_36
    const/4 v0, 0x0

    return v0
.end method

.method public mtkCusPowerHint(II)V
    .registers 6
    .param p1, "hint"    # I
    .param p2, "data"    # I

    .line 168
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->init()V

    .line 169
    iget-object v0, p0, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->sService:Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    if-eqz v0, :cond_a

    .line 170
    invoke-interface {v0, p1, p2}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->mtkCusPowerHint(II)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 173
    :cond_a
    goto :goto_20

    .line 171
    :catch_b
    move-exception v0

    .line 172
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in mtkCusPowerHint:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->loge(Ljava/lang/String;)V

    .line 174
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_20
    return-void
.end method

.method public mtkPowerHint(II)V
    .registers 6
    .param p1, "hint"    # I
    .param p2, "data"    # I

    .line 401
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->init()V

    .line 402
    iget-object v0, p0, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->sService:Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    if-eqz v0, :cond_a

    .line 403
    invoke-interface {v0, p1, p2}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->mtkPowerHint(II)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 406
    :cond_a
    goto :goto_20

    .line 404
    :catch_b
    move-exception v0

    .line 405
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in mtkPowerHint:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->loge(Ljava/lang/String;)V

    .line 407
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_20
    return-void
.end method

.method public perfCusLockHint(II)I
    .registers 7
    .param p1, "hint"    # I
    .param p2, "duration"    # I

    .line 374
    const/4 v0, -0x1

    .line 376
    .local v0, "handle":I
    :try_start_1
    invoke-direct {p0}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->init()V

    .line 377
    iget-object v1, p0, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->sService:Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    if-eqz v1, :cond_d

    .line 378
    invoke-interface {v1, p1, p2}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->perfCusLockHint(II)I

    move-result v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_e

    move v0, v1

    .line 381
    :cond_d
    goto :goto_23

    .line 379
    :catch_e
    move-exception v1

    .line 380
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERR: RemoteException in perfCusLockHint:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->loge(Ljava/lang/String;)V

    .line 382
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_23
    return v0
.end method

.method public perfLockAcquire(II[I)I
    .registers 7
    .param p1, "handle"    # I
    .param p2, "duration"    # I
    .param p3, "list"    # [I

    .line 354
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->init()V

    .line 355
    iget-object v0, p0, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->sService:Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    if-eqz v0, :cond_c

    .line 356
    invoke-interface {v0, p1, p2, p3}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->perfLockAcquire(II[I)I

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move p1, v0

    .line 359
    :cond_c
    goto :goto_22

    .line 357
    :catch_d
    move-exception v0

    .line 358
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in perfLockAcquire:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->loge(Ljava/lang/String;)V

    .line 360
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_22
    return p1
.end method

.method public perfLockRelease(I)V
    .registers 5
    .param p1, "handle"    # I

    .line 365
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->init()V

    .line 366
    iget-object v0, p0, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->sService:Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    if-eqz v0, :cond_a

    .line 367
    invoke-interface {v0, p1}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->perfLockRelease(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 370
    :cond_a
    goto :goto_20

    .line 368
    :catch_b
    move-exception v0

    .line 369
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in perfLockRelease:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->loge(Ljava/lang/String;)V

    .line 371
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_20
    return-void
.end method

.method public querySysInfo(II)I
    .registers 7
    .param p1, "cmd"    # I
    .param p2, "param"    # I

    .line 386
    const/4 v0, -0x1

    .line 389
    .local v0, "value":I
    :try_start_1
    invoke-direct {p0}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->init()V

    .line 390
    iget-object v1, p0, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->sService:Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    if-eqz v1, :cond_d

    .line 391
    invoke-interface {v1, p1, p2}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->querySysInfo(II)I

    move-result v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_e

    move v0, v1

    .line 394
    :cond_d
    goto :goto_23

    .line 392
    :catch_e
    move-exception v1

    .line 393
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERR: RemoteException in perfLockAcquire:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->loge(Ljava/lang/String;)V

    .line 395
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_23
    return v0
.end method

.method public registerDuplicatePacketPredictionEvent(Landroid/os/IRemoteCallback;)Z
    .registers 6
    .param p1, "listener"    # Landroid/os/IRemoteCallback;

    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, "status":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerDuplicatePacketPredictionEvent() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->logd(Ljava/lang/String;)V

    .line 267
    :try_start_1d
    invoke-direct {p0}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->init()V

    .line 268
    iget-object v1, p0, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->sService:Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    if-eqz v1, :cond_29

    .line 269
    invoke-interface {v1, p1}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->registerDuplicatePacketPredictionEvent(Landroid/os/IRemoteCallback;)Z

    move-result v1
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_28} :catch_2a

    move v0, v1

    .line 272
    :cond_29
    goto :goto_3f

    .line 270
    :catch_2a
    move-exception v1

    .line 271
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERR: RemoteException in registerDuplicatePacketPredictionEvent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->loge(Ljava/lang/String;)V

    .line 273
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_3f
    return v0
.end method

.method public scnConfig(IIIIII)V
    .registers 14
    .param p1, "handle"    # I
    .param p2, "cmd"    # I
    .param p3, "param_1"    # I
    .param p4, "param_2"    # I
    .param p5, "param_3"    # I
    .param p6, "param_4"    # I

    .line 112
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->init()V

    .line 113
    iget-object v0, p0, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->sService:Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    if-eqz v0, :cond_10

    .line 114
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->scnConfig(IIIIII)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    .line 117
    :cond_10
    goto :goto_26

    .line 115
    :catch_11
    move-exception v0

    .line 116
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in scnConfig:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->loge(Ljava/lang/String;)V

    .line 118
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_26
    return-void
.end method

.method public scnDisable(I)V
    .registers 5
    .param p1, "handle"    # I

    .line 145
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->init()V

    .line 146
    iget-object v0, p0, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->sService:Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    if-eqz v0, :cond_a

    .line 147
    invoke-interface {v0, p1}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->scnDisable(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 150
    :cond_a
    goto :goto_20

    .line 148
    :catch_b
    move-exception v0

    .line 149
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in scnDisable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->loge(Ljava/lang/String;)V

    .line 151
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_20
    return-void
.end method

.method public scnEnable(II)V
    .registers 6
    .param p1, "handle"    # I
    .param p2, "timeout"    # I

    .line 134
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->init()V

    .line 135
    iget-object v0, p0, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->sService:Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    if-eqz v0, :cond_a

    .line 136
    invoke-interface {v0, p1, p2}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->scnEnable(II)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 139
    :cond_a
    goto :goto_20

    .line 137
    :catch_b
    move-exception v0

    .line 138
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in scnEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->loge(Ljava/lang/String;)V

    .line 140
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_20
    return-void
.end method

.method public scnReg()I
    .registers 5

    .line 95
    const/4 v0, -0x1

    .line 97
    .local v0, "handle":I
    :try_start_1
    invoke-direct {p0}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->init()V

    .line 100
    iget-object v1, p0, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->sService:Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    if-eqz v1, :cond_d

    .line 101
    invoke-interface {v1}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->scnReg()I

    move-result v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_e

    move v0, v1

    .line 104
    :cond_d
    goto :goto_23

    .line 102
    :catch_e
    move-exception v1

    .line 103
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERR: RemoteException in scnReg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->loge(Ljava/lang/String;)V

    .line 106
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_23
    return v0
.end method

.method public scnUltraCfg(IIIIII)V
    .registers 14
    .param p1, "handle"    # I
    .param p2, "ultracmd"    # I
    .param p3, "param_1"    # I
    .param p4, "param_2"    # I
    .param p5, "param_3"    # I
    .param p6, "param_4"    # I

    .line 157
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->init()V

    .line 158
    iget-object v0, p0, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->sService:Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    if-eqz v0, :cond_10

    .line 159
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->scnUltraCfg(IIIIII)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    .line 162
    :cond_10
    goto :goto_26

    .line 160
    :catch_11
    move-exception v0

    .line 161
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in scnConfig:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->loge(Ljava/lang/String;)V

    .line 163
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_26
    return-void
.end method

.method public scnUnreg(I)V
    .registers 5
    .param p1, "handle"    # I

    .line 123
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->init()V

    .line 124
    iget-object v0, p0, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->sService:Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    if-eqz v0, :cond_a

    .line 125
    invoke-interface {v0, p1}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->scnUnreg(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 128
    :cond_a
    goto :goto_20

    .line 126
    :catch_b
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in scnUnreg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->loge(Ljava/lang/String;)V

    .line 129
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_20
    return-void
.end method

.method public setForegroundSports()V
    .registers 4

    .line 204
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->init()V

    .line 205
    iget-object v0, p0, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->sService:Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    if-eqz v0, :cond_a

    .line 206
    invoke-interface {v0}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->setForegroundSports()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 209
    :cond_a
    goto :goto_20

    .line 207
    :catch_b
    move-exception v0

    .line 208
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in setForegroundSports:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->loge(Ljava/lang/String;)V

    .line 210
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_20
    return-void
.end method

.method public setPredictInfo(Ljava/lang/String;I)V
    .registers 6
    .param p1, "pack_name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 344
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->init()V

    .line 345
    iget-object v0, p0, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->sService:Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    if-eqz v0, :cond_a

    .line 346
    invoke-interface {v0, p1, p2}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->setPredictInfo(Ljava/lang/String;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 349
    :cond_a
    goto :goto_20

    .line 347
    :catch_b
    move-exception v0

    .line 348
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in setPredictInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->loge(Ljava/lang/String;)V

    .line 350
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_20
    return-void
.end method

.method public setPriorityByLinkinfo(ILcom/mediatek/powerhalmgr/DupLinkInfo;)Z
    .registers 7
    .param p1, "action"    # I
    .param p2, "linkinfo"    # Lcom/mediatek/powerhalmgr/DupLinkInfo;

    .line 316
    const/4 v0, 0x0

    .line 319
    .local v0, "status":Z
    :try_start_1
    invoke-direct {p0}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->init()V

    .line 320
    iget-object v1, p0, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->sService:Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    if-eqz v1, :cond_d

    .line 321
    invoke-interface {v1, p1, p2}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->setPriorityByLinkinfo(ILcom/mediatek/powerhalmgr/DupLinkInfo;)Z

    move-result v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_e

    move v0, v1

    .line 324
    :cond_d
    goto :goto_23

    .line 322
    :catch_e
    move-exception v1

    .line 323
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERR: RemoteException in setPriorityByLinkinfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->loge(Ljava/lang/String;)V

    .line 325
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_23
    return v0
.end method

.method public setPriorityByUid(II)Z
    .registers 7
    .param p1, "action"    # I
    .param p2, "uid"    # I

    .line 303
    const/4 v0, 0x0

    .line 306
    .local v0, "status":Z
    :try_start_1
    invoke-direct {p0}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->init()V

    .line 307
    iget-object v1, p0, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->sService:Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    if-eqz v1, :cond_d

    .line 308
    invoke-interface {v1, p1, p2}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->setPriorityByUid(II)Z

    move-result v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_e

    move v0, v1

    .line 311
    :cond_d
    goto :goto_23

    .line 309
    :catch_e
    move-exception v1

    .line 310
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERR: RemoteException in setPriorityByUid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->loge(Ljava/lang/String;)V

    .line 312
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_23
    return v0
.end method

.method public setSysInfo(ILjava/lang/String;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;

    .line 214
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->init()V

    .line 215
    iget-object v0, p0, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->sService:Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    if-eqz v0, :cond_a

    .line 216
    invoke-interface {v0, p1, p2}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->setSysInfo(ILjava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 219
    :cond_a
    goto :goto_20

    .line 217
    :catch_b
    move-exception v0

    .line 218
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in setSysInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->loge(Ljava/lang/String;)V

    .line 220
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_20
    return-void
.end method

.method public setSysInfoSync(ILjava/lang/String;)I
    .registers 7
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;

    .line 410
    const/4 v0, -0x1

    .line 412
    .local v0, "ret":I
    :try_start_1
    invoke-direct {p0}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->init()V

    .line 413
    iget-object v1, p0, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->sService:Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    if-eqz v1, :cond_d

    .line 414
    invoke-interface {v1, p1, p2}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->setSysInfoSync(ILjava/lang/String;)I

    move-result v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_e

    move v0, v1

    .line 417
    :cond_d
    goto :goto_23

    .line 415
    :catch_e
    move-exception v1

    .line 416
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERR: RemoteException in setPredictInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->loge(Ljava/lang/String;)V

    .line 418
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_23
    return v0
.end method

.method public startDuplicatePacketPrediction()Z
    .registers 5

    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, "status":Z
    const-string v1, "startDuplicatePacketPrediction()"

    invoke-direct {p0, v1}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->logd(Ljava/lang/String;)V

    .line 227
    :try_start_6
    invoke-direct {p0}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->init()V

    .line 228
    iget-object v1, p0, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->sService:Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    if-eqz v1, :cond_12

    .line 229
    invoke-interface {v1}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->startDuplicatePacketPrediction()Z

    move-result v1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_11} :catch_13

    move v0, v1

    .line 232
    :cond_12
    goto :goto_28

    .line 230
    :catch_13
    move-exception v1

    .line 231
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERR: RemoteException in startDuplicatePacketPrediction:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->loge(Ljava/lang/String;)V

    .line 233
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_28
    return v0
.end method

.method public stopDuplicatePacketPrediction()Z
    .registers 5

    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, "status":Z
    const-string v1, "stopDuplicatePacketPrediction()"

    invoke-direct {p0, v1}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->logd(Ljava/lang/String;)V

    .line 240
    :try_start_6
    invoke-direct {p0}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->init()V

    .line 241
    iget-object v1, p0, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->sService:Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    if-eqz v1, :cond_12

    .line 242
    invoke-interface {v1}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->stopDuplicatePacketPrediction()Z

    move-result v1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_11} :catch_13

    move v0, v1

    .line 245
    :cond_12
    goto :goto_28

    .line 243
    :catch_13
    move-exception v1

    .line 244
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERR: RemoteException in stopDuplicatePacketPrediction:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->loge(Ljava/lang/String;)V

    .line 246
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_28
    return v0
.end method

.method public unregisterDuplicatePacketPredictionEvent(Landroid/os/IRemoteCallback;)Z
    .registers 6
    .param p1, "listener"    # Landroid/os/IRemoteCallback;

    .line 277
    const/4 v0, 0x0

    .line 278
    .local v0, "status":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterDuplicatePacketPredictionEvent() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->logd(Ljava/lang/String;)V

    .line 280
    :try_start_1d
    invoke-direct {p0}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->init()V

    .line 281
    iget-object v1, p0, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->sService:Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    if-eqz v1, :cond_29

    .line 282
    invoke-interface {v1, p1}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->unregisterDuplicatePacketPredictionEvent(Landroid/os/IRemoteCallback;)Z

    move-result v1
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_28} :catch_2a

    move v0, v1

    .line 285
    :cond_29
    goto :goto_3f

    .line 283
    :catch_2a
    move-exception v1

    .line 284
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERR: RemoteException in unregisterDuplicatePacketPredictionEvent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->loge(Ljava/lang/String;)V

    .line 286
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_3f
    return v0
.end method

.method public updateMultiDuplicatePacketLink([Lcom/mediatek/powerhalmgr/DupLinkInfo;)Z
    .registers 6
    .param p1, "linkList"    # [Lcom/mediatek/powerhalmgr/DupLinkInfo;

    .line 290
    const/4 v0, 0x0

    .line 293
    .local v0, "status":Z
    :try_start_1
    invoke-direct {p0}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->init()V

    .line 294
    iget-object v1, p0, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->sService:Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    if-eqz v1, :cond_d

    .line 295
    invoke-interface {v1, p1}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->updateMultiDuplicatePacketLink([Lcom/mediatek/powerhalmgr/DupLinkInfo;)Z

    move-result v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_e

    move v0, v1

    .line 298
    :cond_d
    goto :goto_23

    .line 296
    :catch_e
    move-exception v1

    .line 297
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERR: RemoteException in updateMultiDuplicatePacketLink:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->loge(Ljava/lang/String;)V

    .line 299
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_23
    return v0
.end method

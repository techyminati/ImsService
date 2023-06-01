.class public Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;
.super Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;
.source "PowerHalMgrServiceImpl.java"


# static fields
.field private static mPerformance:Lcom/mediatek/boostframework/Performance;

.field private static mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

.field private static mhandle:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mPowerHalWifiMonitor:Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    .line 72
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->mhandle:I

    .line 73
    new-instance v0, Lcom/mediatek/boostframework/Performance;

    invoke-direct {v0}, Lcom/mediatek/boostframework/Performance;-><init>()V

    sput-object v0, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->mPerformance:Lcom/mediatek/boostframework/Performance;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 84
    invoke-direct {p0}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;-><init>()V

    .line 70
    const-string v0, "PowerHalMgrServiceImpl"

    iput-object v0, p0, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->TAG:Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->mPowerHalWifiMonitor:Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;

    .line 85
    invoke-static {}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->getInstance()Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    move-result-object v0

    sput-object v0, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    .line 87
    new-instance v0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;

    invoke-direct {v0, p1}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->mPowerHalWifiMonitor:Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;

    .line 89
    return-void
.end method

.method private checkDppPermission()Z
    .registers 3

    .line 156
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 157
    .local v0, "uid":I
    sget-object v1, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    invoke-virtual {v1, v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->getRildCap(I)Z

    move-result v1

    if-nez v1, :cond_13

    .line 158
    const-string v1, "checkDppPermission(), no permission"

    invoke-direct {p0, v1}, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->logd(Ljava/lang/String;)V

    .line 159
    const/4 v1, 0x0

    return v1

    .line 161
    :cond_13
    const/4 v1, 0x1

    return v1
.end method

.method private log(Ljava/lang/String;)V
    .registers 4
    .param p1, "info"    # Ljava/lang/String;

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerHalMgrServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .registers 4
    .param p1, "info"    # Ljava/lang/String;

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerHalMgrServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 4
    .param p1, "info"    # Ljava/lang/String;

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerHalMgrServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return-void
.end method


# virtual methods
.method public UpdateManagementPkt(ILjava/lang/String;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "packet"    # Ljava/lang/String;

    .line 143
    sget-object v0, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->UpdateManagementPkt(ILjava/lang/String;)V

    .line 144
    return-void
.end method

.method public flushPriorityRules(I)Z
    .registers 6
    .param p1, "type"    # I

    .line 271
    const/4 v0, 0x1

    .line 273
    .local v0, "ret":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flushPriorityRules:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->log(Ljava/lang/String;)V

    .line 275
    const/16 v1, 0x11

    const/4 v2, 0x1

    if-ne p1, v2, :cond_22

    .line 276
    const-string v2, "UID"

    .line 277
    .local v2, "data":Ljava/lang/String;
    sget-object v3, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    invoke-virtual {v3, v1, v2}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->setSysInfoAsync(ILjava/lang/String;)V

    goto :goto_4d

    .line 279
    .end local v2    # "data":Ljava/lang/String;
    :cond_22
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2d

    .line 280
    const-string v2, "LINKINFO"

    .line 281
    .restart local v2    # "data":Ljava/lang/String;
    sget-object v3, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    invoke-virtual {v3, v1, v2}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->setSysInfoAsync(ILjava/lang/String;)V

    goto :goto_4d

    .line 282
    .end local v2    # "data":Ljava/lang/String;
    :cond_2d
    const/4 v2, 0x3

    if-ne p1, v2, :cond_38

    .line 283
    const-string v2, "ALL"

    .line 284
    .restart local v2    # "data":Ljava/lang/String;
    sget-object v3, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    invoke-virtual {v3, v1, v2}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->setSysInfoAsync(ILjava/lang/String;)V

    goto :goto_4d

    .line 286
    .end local v2    # "data":Ljava/lang/String;
    :cond_38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[flushPriorityRules] unknown type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->loge(Ljava/lang/String;)V

    .line 287
    const/4 v0, 0x0

    .line 289
    :goto_4d
    return v0
.end method

.method public getCpuCap()V
    .registers 2

    .line 127
    const-string v0, "getCpuCap not supported"

    invoke-direct {p0, v0}, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->loge(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public getCpuRTInfo()V
    .registers 2

    .line 139
    const-string v0, "getCpuRTInfo not supported"

    invoke-direct {p0, v0}, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->loge(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public getGpuCap()V
    .registers 2

    .line 131
    const-string v0, "getGpuCap not supported"

    invoke-direct {p0, v0}, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->loge(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public getGpuRTInfo()V
    .registers 2

    .line 135
    const-string v0, "getGpuRTInfo not supported"

    invoke-direct {p0, v0}, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->loge(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public isDupPacketPredictionStarted()Z
    .registers 2

    .line 176
    const-string v0, "isDupPacketPredictionStarted not supported"

    invoke-direct {p0, v0}, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->loge(Ljava/lang/String;)V

    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public mtkCusPowerHint(II)V
    .registers 4
    .param p1, "hint"    # I
    .param p2, "data"    # I

    .line 123
    sget-object v0, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->mtkCusPowerHint(II)V

    .line 124
    return-void
.end method

.method public mtkPowerHint(II)V
    .registers 4
    .param p1, "hint"    # I
    .param p2, "data"    # I

    .line 119
    sget-object v0, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->mtkPowerHint(II)V

    .line 120
    return-void
.end method

.method public perfCusLockHint(II)I
    .registers 4
    .param p1, "hint"    # I
    .param p2, "duration"    # I

    .line 321
    sget-object v0, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->perfCusLockHint(II)I

    move-result v0

    return v0
.end method

.method public perfLockAcquire(II[I)I
    .registers 7
    .param p1, "handle"    # I
    .param p2, "duration"    # I
    .param p3, "list"    # [I

    .line 295
    array-length v0, p3

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    .line 296
    const/4 v0, -0x1

    return v0

    .line 304
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "perfLockAcquire hdl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dur:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " len:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->logd(Ljava/lang/String;)V

    .line 305
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2d
    array-length v1, p3

    if-ge v0, v1, :cond_61

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "perfLockAcquire "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, p3, v0

    .line 307
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0x1

    aget v2, p3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 306
    invoke-direct {p0, v1}, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->logd(Ljava/lang/String;)V

    .line 305
    add-int/lit8 v0, v0, 0x2

    goto :goto_2d

    .line 309
    :cond_61
    sget-object v1, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->perfLockAcquire(II[I)I

    move-result v1

    return v1
.end method

.method public perfLockRelease(I)V
    .registers 3
    .param p1, "handle"    # I

    .line 313
    sget-object v0, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    invoke-virtual {v0, p1}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->perfLockRelease(I)V

    .line 314
    return-void
.end method

.method public querySysInfo(II)I
    .registers 4
    .param p1, "cmd"    # I
    .param p2, "param"    # I

    .line 317
    sget-object v0, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->querySysInfo(II)I

    move-result v0

    return v0
.end method

.method public registerDuplicatePacketPredictionEvent(Landroid/os/IRemoteCallback;)Z
    .registers 3
    .param p1, "listener"    # Landroid/os/IRemoteCallback;

    .line 181
    const-string v0, "registerDuplicatePacketPredictionEvent not supported"

    invoke-direct {p0, v0}, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->loge(Ljava/lang/String;)V

    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public scnConfig(IIIIII)V
    .registers 8
    .param p1, "handle"    # I
    .param p2, "cmd"    # I
    .param p3, "param_1"    # I
    .param p4, "param_2"    # I
    .param p5, "param_3"    # I
    .param p6, "param_4"    # I

    .line 98
    const-string v0, "scnConfig not supported"

    invoke-direct {p0, v0}, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->loge(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public scnDisable(I)V
    .registers 3
    .param p1, "handle"    # I

    .line 110
    const-string v0, "scnDisable not supported"

    invoke-direct {p0, v0}, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->loge(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public scnEnable(II)V
    .registers 4
    .param p1, "handle"    # I
    .param p2, "timeout"    # I

    .line 106
    const-string v0, "scnEnable not supported"

    invoke-direct {p0, v0}, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->loge(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public scnReg()I
    .registers 2

    .line 92
    const-string v0, "scnReg not supported"

    invoke-direct {p0, v0}, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->loge(Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public scnUltraCfg(IIIIII)V
    .registers 8
    .param p1, "handle"    # I
    .param p2, "ultracmd"    # I
    .param p3, "param_1"    # I
    .param p4, "param_2"    # I
    .param p5, "param_3"    # I
    .param p6, "param_4"    # I

    .line 115
    const-string v0, "scnUltraCfg not supported"

    invoke-direct {p0, v0}, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->loge(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public scnUnreg(I)V
    .registers 3
    .param p1, "handle"    # I

    .line 102
    const-string v0, "scnUnreg not supported"

    invoke-direct {p0, v0}, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->loge(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public setForegroundSports()V
    .registers 2

    .line 147
    const-string v0, "setForegroundSports not supported"

    invoke-direct {p0, v0}, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->loge(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public setPredictInfo(Ljava/lang/String;I)V
    .registers 6
    .param p1, "pack_name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "data":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPredictInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->logd(Ljava/lang/String;)V

    .line 198
    sget-object v1, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->setSysInfoAsync(ILjava/lang/String;)V

    .line 199
    return-void
.end method

.method public setPriorityByLinkinfo(ILcom/mediatek/powerhalmgr/DupLinkInfo;)Z
    .registers 14
    .param p1, "action"    # I
    .param p2, "linkinfo"    # Lcom/mediatek/powerhalmgr/DupLinkInfo;

    .line 223
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 224
    return v0

    .line 227
    :cond_4
    invoke-virtual {p2}, Lcom/mediatek/powerhalmgr/DupLinkInfo;->getSrcIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mediatek/powerhalmgr/DupLinkInfo;->getDstIp()Ljava/lang/String;

    move-result-object v2

    .line 228
    invoke-virtual {p2}, Lcom/mediatek/powerhalmgr/DupLinkInfo;->getSrcPort()I

    move-result v3

    invoke-virtual {p2}, Lcom/mediatek/powerhalmgr/DupLinkInfo;->getDstPort()I

    move-result v4

    .line 227
    invoke-static {v1, v2, v3, v4}, Lcom/mediatek/powerhalservice/PowerHalAddressUtils;->isIpPairValid(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_20

    .line 229
    const-string v1, "[setPriorityByLinkinfo] invalide input paremeters"

    invoke-direct {p0, v1}, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->loge(Ljava/lang/String;)V

    .line 230
    return v0

    .line 234
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2f

    .line 236
    const-string v4, "SET "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_36

    .line 237
    :cond_2f
    if-ne p1, v2, :cond_107

    .line 238
    const-string v4, "CLEAR "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    :goto_36
    invoke-virtual {p2}, Lcom/mediatek/powerhalmgr/DupLinkInfo;->getSrcPort()I

    move-result v4

    const-string v5, "none"

    const/4 v6, -0x1

    if-ne v4, v6, :cond_41

    move-object v4, v5

    goto :goto_49

    .line 245
    :cond_41
    invoke-virtual {p2}, Lcom/mediatek/powerhalmgr/DupLinkInfo;->getSrcPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    :goto_49
    nop

    .line 246
    .local v4, "strSrcPort":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/mediatek/powerhalmgr/DupLinkInfo;->getDstPort()I

    move-result v7

    if-ne v7, v6, :cond_52

    move-object v7, v5

    goto :goto_5a

    .line 247
    :cond_52
    invoke-virtual {p2}, Lcom/mediatek/powerhalmgr/DupLinkInfo;->getDstPort()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    :goto_5a
    nop

    .line 248
    .local v7, "dstSrcPort":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mediatek/powerhalmgr/DupLinkInfo;->getSrcIp()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {p2}, Lcom/mediatek/powerhalmgr/DupLinkInfo;->getDstIp()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 250
    .local v8, "data":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/mediatek/powerhalmgr/DupLinkInfo;->getProto()I

    move-result v9

    if-ne v9, v3, :cond_9e

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "TCP"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v8    # "data":Ljava/lang/String;
    .local v0, "data":Ljava/lang/String;
    goto :goto_cb

    .line 252
    .end local v0    # "data":Ljava/lang/String;
    .restart local v8    # "data":Ljava/lang/String;
    :cond_9e
    invoke-virtual {p2}, Lcom/mediatek/powerhalmgr/DupLinkInfo;->getProto()I

    move-result v9

    if-ne v9, v2, :cond_b6

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "UDP"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v8    # "data":Ljava/lang/String;
    .restart local v0    # "data":Ljava/lang/String;
    goto :goto_cb

    .line 254
    .end local v0    # "data":Ljava/lang/String;
    .restart local v8    # "data":Ljava/lang/String;
    :cond_b6
    invoke-virtual {p2}, Lcom/mediatek/powerhalmgr/DupLinkInfo;->getProto()I

    move-result v2

    if-ne v2, v6, :cond_ee

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    .end local v8    # "data":Ljava/lang/String;
    .restart local v0    # "data":Ljava/lang/String;
    :goto_cb
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "Linkcmd":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPriorityByLinkinfo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->log(Ljava/lang/String;)V

    .line 263
    sget-object v5, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    const/16 v6, 0x10

    invoke-virtual {v5, v6, v2}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->setSysInfoAsync(ILjava/lang/String;)V

    .line 264
    return v3

    .line 257
    .end local v0    # "data":Ljava/lang/String;
    .end local v2    # "Linkcmd":Ljava/lang/String;
    .restart local v8    # "data":Ljava/lang/String;
    :cond_ee
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setPriorityByLinkinfo] unknown protocol:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mediatek/powerhalmgr/DupLinkInfo;->getProto()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->loge(Ljava/lang/String;)V

    .line 258
    return v0

    .line 240
    .end local v4    # "strSrcPort":Ljava/lang/String;
    .end local v7    # "dstSrcPort":Ljava/lang/String;
    .end local v8    # "data":Ljava/lang/String;
    :cond_107
    const-string v2, "[setPriorityByLinkinfo] invalide action"

    invoke-direct {p0, v2}, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->loge(Ljava/lang/String;)V

    .line 241
    return v0
.end method

.method public setPriorityByUid(II)Z
    .registers 7
    .param p1, "action"    # I
    .param p2, "uid"    # I

    .line 204
    const/4 v0, 0x1

    .line 206
    .local v0, "ret":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPriorityByUid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->log(Ljava/lang/String;)V

    .line 207
    const/16 v1, 0xf

    const/4 v2, 0x1

    if-ne p1, v2, :cond_34

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SET "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, "data":Ljava/lang/String;
    sget-object v3, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    invoke-virtual {v3, v1, v2}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->setSysInfoAsync(ILjava/lang/String;)V

    goto :goto_63

    .line 211
    .end local v2    # "data":Ljava/lang/String;
    :cond_34
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4e

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CLEAR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 213
    .restart local v2    # "data":Ljava/lang/String;
    sget-object v3, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    invoke-virtual {v3, v1, v2}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->setSysInfoAsync(ILjava/lang/String;)V

    goto :goto_63

    .line 215
    .end local v2    # "data":Ljava/lang/String;
    :cond_4e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setPriorityByLinkinfo] invalide action"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->loge(Ljava/lang/String;)V

    .line 216
    const/4 v0, 0x0

    .line 218
    :goto_63
    return v0
.end method

.method public setSysInfo(ILjava/lang/String;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;

    .line 151
    const-string v0, "setSysInfo not supported"

    invoke-direct {p0, v0}, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->loge(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public setSysInfoSync(ILjava/lang/String;)I
    .registers 4
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;

    .line 325
    const-string v0, "setSysInfoSync not supported"

    invoke-direct {p0, v0}, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->loge(Ljava/lang/String;)V

    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method public startDuplicatePacketPrediction()Z
    .registers 2

    .line 166
    const-string v0, "startDuplicatePacketPrediction not supported"

    invoke-direct {p0, v0}, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->loge(Ljava/lang/String;)V

    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public stopDuplicatePacketPrediction()Z
    .registers 2

    .line 171
    const-string v0, "stopDuplicatePacketPrediction not supported"

    invoke-direct {p0, v0}, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->loge(Ljava/lang/String;)V

    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterDuplicatePacketPredictionEvent(Landroid/os/IRemoteCallback;)Z
    .registers 3
    .param p1, "listener"    # Landroid/os/IRemoteCallback;

    .line 186
    const-string v0, "unregisterDuplicatePacketPredictionEvent not supported"

    invoke-direct {p0, v0}, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->loge(Ljava/lang/String;)V

    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public updateMultiDuplicatePacketLink([Lcom/mediatek/powerhalmgr/DupLinkInfo;)Z
    .registers 3
    .param p1, "linkList"    # [Lcom/mediatek/powerhalmgr/DupLinkInfo;

    .line 191
    const-string v0, "updateMultiDuplicatePacketLink not supported"

    invoke-direct {p0, v0}, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;->loge(Ljava/lang/String;)V

    .line 192
    const/4 v0, 0x0

    return v0
.end method

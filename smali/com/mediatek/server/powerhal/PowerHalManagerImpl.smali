.class public Lcom/mediatek/server/powerhal/PowerHalManagerImpl;
.super Lcom/mediatek/server/powerhal/PowerHalManager;
.source "PowerHalManagerImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PowerHalManagerImpl"

.field private static mPerformance:Lcom/mediatek/boostframework/Performance;

.field private static mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;


# instance fields
.field public mIsRotationBoostEnable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/server/powerhal/PowerHalManagerImpl;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    .line 68
    new-instance v0, Lcom/mediatek/boostframework/Performance;

    invoke-direct {v0}, Lcom/mediatek/boostframework/Performance;-><init>()V

    sput-object v0, Lcom/mediatek/server/powerhal/PowerHalManagerImpl;->mPerformance:Lcom/mediatek/boostframework/Performance;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 70
    invoke-direct {p0}, Lcom/mediatek/server/powerhal/PowerHalManager;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/server/powerhal/PowerHalManagerImpl;->mIsRotationBoostEnable:Z

    .line 71
    invoke-static {}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->getInstance()Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    move-result-object v0

    sput-object v0, Lcom/mediatek/server/powerhal/PowerHalManagerImpl;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    .line 72
    return-void
.end method


# virtual methods
.method public NotifyAppCrash(IILjava/lang/String;)V
    .registers 5
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 116
    sget-object v0, Lcom/mediatek/server/powerhal/PowerHalManagerImpl;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->NotifyAppCrash(IILjava/lang/String;)V

    .line 117
    return-void
.end method

.method public amsBoostNotify(ILjava/lang/String;Ljava/lang/String;II)V
    .registers 12
    .param p1, "pid"    # I
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "state"    # I

    .line 141
    sget-object v0, Lcom/mediatek/server/powerhal/PowerHalManagerImpl;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->amsBoostNotify(ILjava/lang/String;Ljava/lang/String;II)V

    .line 142
    return-void
.end method

.method public amsBoostProcessCreate(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "hostingType"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 147
    sget-object v0, Lcom/mediatek/server/powerhal/PowerHalManagerImpl;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->amsBoostProcessCreate(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public amsBoostResume(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "lastResumedPackageName"    # Ljava/lang/String;
    .param p2, "nextResumedPackageName"    # Ljava/lang/String;

    .line 134
    sget-object v0, Lcom/mediatek/server/powerhal/PowerHalManagerImpl;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->amsBoostResume(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public amsBoostStop()V
    .registers 2

    .line 152
    sget-object v0, Lcom/mediatek/server/powerhal/PowerHalManagerImpl;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    invoke-virtual {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->amsBoostStop()V

    .line 153
    return-void
.end method

.method public varargs perfLockAcquire(I[I)V
    .registers 4
    .param p1, "duration"    # I
    .param p2, "list"    # [I

    .line 100
    sget-object v0, Lcom/mediatek/server/powerhal/PowerHalManagerImpl;->mPerformance:Lcom/mediatek/boostframework/Performance;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/boostframework/Performance;->perfLockAcquire(I[I)I

    .line 101
    return-void
.end method

.method public perfLockRelease()V
    .registers 2

    .line 105
    sget-object v0, Lcom/mediatek/server/powerhal/PowerHalManagerImpl;->mPerformance:Lcom/mediatek/boostframework/Performance;

    invoke-virtual {v0}, Lcom/mediatek/boostframework/Performance;->perfLockRelease()I

    .line 106
    return-void
.end method

.method public perfLockRelease(I)V
    .registers 3
    .param p1, "handle"    # I

    .line 110
    sget-object v0, Lcom/mediatek/server/powerhal/PowerHalManagerImpl;->mPerformance:Lcom/mediatek/boostframework/Performance;

    invoke-virtual {v0, p1}, Lcom/mediatek/boostframework/Performance;->perfLockRelease(I)I

    .line 111
    return-void
.end method

.method public setInstallationBoost(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 122
    sget-object v0, Lcom/mediatek/server/powerhal/PowerHalManagerImpl;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    invoke-virtual {v0, p1}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->setInstallationBoost(Z)V

    .line 123
    return-void
.end method

.method public setRotationBoost(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 76
    const/4 v0, 0x0

    .line 78
    .local v0, "boostTime":I
    if-eqz p1, :cond_a

    iget-boolean v1, p0, Lcom/mediatek/server/powerhal/PowerHalManagerImpl;->mIsRotationBoostEnable:Z

    if-nez v1, :cond_a

    .line 79
    const/16 v0, 0x7d0

    goto :goto_11

    .line 80
    :cond_a
    if-nez p1, :cond_11

    iget-boolean v1, p0, Lcom/mediatek/server/powerhal/PowerHalManagerImpl;->mIsRotationBoostEnable:Z

    if-eqz v1, :cond_11

    .line 81
    const/4 v0, 0x0

    .line 85
    :cond_11
    :goto_11
    sget-object v1, Lcom/mediatek/server/powerhal/PowerHalManagerImpl;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    invoke-virtual {v1, v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->setRotationBoost(I)V

    .line 86
    iput-boolean p1, p0, Lcom/mediatek/server/powerhal/PowerHalManagerImpl;->mIsRotationBoostEnable:Z

    .line 87
    return-void
.end method

.method public setSpeedDownload(I)V
    .registers 3
    .param p1, "timeoutMs"    # I

    .line 128
    sget-object v0, Lcom/mediatek/server/powerhal/PowerHalManagerImpl;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    invoke-virtual {v0, p1}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->setSpeedDownload(I)V

    .line 129
    return-void
.end method

.method public setWFD(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 92
    sget-object v0, Lcom/mediatek/server/powerhal/PowerHalManagerImpl;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    invoke-virtual {v0, p1}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->setWFD(Z)V

    .line 93
    return-void
.end method

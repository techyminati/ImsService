.class public Lcom/mediatek/view/impl/SurfaceExtimpl;
.super Lcom/mediatek/view/SurfaceExt;
.source "SurfaceExtimpl.java"


# static fields
.field private static final ENABLE_RESOLUTION_TUNING:I

.field private static final ENABLE_WHITE_LIST:Z

.field private static final TAG:Ljava/lang/String; = "SurfaceExt"

.field private static final WHITE_LIST:[Ljava/lang/String;

.field private static mApplist:Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;


# instance fields
.field private mIsContainPackageName:Z

.field private mPackageName:Ljava/lang/String;

.field private mXScaleValue:F

.field private mYScaleValue:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 18
    const-string v0, "debug.enable.whitelist"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/view/impl/SurfaceExtimpl;->ENABLE_WHITE_LIST:Z

    .line 20
    const-string v0, "ro.vendor.app_resolution_tuner"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/mediatek/view/impl/SurfaceExtimpl;->ENABLE_RESOLUTION_TUNING:I

    .line 22
    const-string v0, "com.tencent.qqlive"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/view/impl/SurfaceExtimpl;->WHITE_LIST:[Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/view/impl/SurfaceExtimpl;->mApplist:Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Lcom/mediatek/view/SurfaceExt;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/view/impl/SurfaceExtimpl;->mIsContainPackageName:Z

    .line 25
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/mediatek/view/impl/SurfaceExtimpl;->mXScaleValue:F

    .line 26
    iput v0, p0, Lcom/mediatek/view/impl/SurfaceExtimpl;->mYScaleValue:F

    .line 30
    return-void
.end method

.method private getCallerProcessName()Ljava/lang/String;
    .registers 6

    .line 92
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 93
    .local v0, "binderuid":I
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 94
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v1, :cond_2c

    .line 96
    :try_start_10
    invoke-interface {v1, v0}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_14} :catch_15

    .line 98
    .local v2, "callingApp":Ljava/lang/String;
    return-object v2

    .line 99
    .end local v2    # "callingApp":Ljava/lang/String;
    :catch_15
    move-exception v2

    .line 100
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCallerProcessName exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SurfaceExt"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2c
    const/4 v2, 0x0

    return-object v2
.end method

.method private getTunerList()Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;
    .registers 2

    .line 86
    invoke-static {}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;->getInstance()Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;

    move-result-object v0

    .line 87
    .local v0, "applist":Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;
    invoke-virtual {v0}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;->loadTunerAppList()V

    .line 88
    return-object v0
.end method


# virtual methods
.method public getXScale()F
    .registers 2

    .line 77
    iget v0, p0, Lcom/mediatek/view/impl/SurfaceExtimpl;->mXScaleValue:F

    return v0
.end method

.method public getYScale()F
    .registers 2

    .line 82
    iget v0, p0, Lcom/mediatek/view/impl/SurfaceExtimpl;->mYScaleValue:F

    return v0
.end method

.method public initResolutionTunner()V
    .registers 4

    .line 52
    sget v0, Lcom/mediatek/view/impl/SurfaceExtimpl;->ENABLE_RESOLUTION_TUNING:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8e

    sget-object v0, Lcom/mediatek/view/impl/SurfaceExtimpl;->mApplist:Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;

    if-nez v0, :cond_8e

    .line 53
    invoke-direct {p0}, Lcom/mediatek/view/impl/SurfaceExtimpl;->getCallerProcessName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/view/impl/SurfaceExtimpl;->mPackageName:Ljava/lang/String;

    .line 54
    invoke-direct {p0}, Lcom/mediatek/view/impl/SurfaceExtimpl;->getTunerList()Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;

    move-result-object v0

    sput-object v0, Lcom/mediatek/view/impl/SurfaceExtimpl;->mApplist:Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;

    .line 55
    iget-object v1, p0, Lcom/mediatek/view/impl/SurfaceExtimpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;->isScaledBySurfaceView(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/view/impl/SurfaceExtimpl;->mIsContainPackageName:Z

    .line 56
    sget-object v0, Lcom/mediatek/view/impl/SurfaceExtimpl;->mApplist:Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;

    iget-object v1, p0, Lcom/mediatek/view/impl/SurfaceExtimpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;->getScaleWidth(Ljava/lang/String;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4c

    sget-object v0, Lcom/mediatek/view/impl/SurfaceExtimpl;->mApplist:Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;

    iget-object v2, p0, Lcom/mediatek/view/impl/SurfaceExtimpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;->getScaleHeight(Ljava/lang/String;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_37

    goto :goto_4c

    .line 60
    :cond_37
    sget-object v0, Lcom/mediatek/view/impl/SurfaceExtimpl;->mApplist:Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;

    iget-object v1, p0, Lcom/mediatek/view/impl/SurfaceExtimpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;->getScaleWidth(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/mediatek/view/impl/SurfaceExtimpl;->mXScaleValue:F

    .line 61
    sget-object v0, Lcom/mediatek/view/impl/SurfaceExtimpl;->mApplist:Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;

    iget-object v1, p0, Lcom/mediatek/view/impl/SurfaceExtimpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;->getScaleHeight(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/mediatek/view/impl/SurfaceExtimpl;->mYScaleValue:F

    goto :goto_58

    .line 57
    :cond_4c
    :goto_4c
    sget-object v0, Lcom/mediatek/view/impl/SurfaceExtimpl;->mApplist:Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;

    iget-object v1, p0, Lcom/mediatek/view/impl/SurfaceExtimpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;->getScaleValue(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/mediatek/view/impl/SurfaceExtimpl;->mXScaleValue:F

    .line 58
    iput v0, p0, Lcom/mediatek/view/impl/SurfaceExtimpl;->mYScaleValue:F

    .line 63
    :goto_58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initResolutionTunner, mPackageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/view/impl/SurfaceExtimpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mContainPackageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/view/impl/SurfaceExtimpl;->mIsContainPackageName:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "mXScaleValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/view/impl/SurfaceExtimpl;->mXScaleValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",mYScaleValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/view/impl/SurfaceExtimpl;->mYScaleValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceExt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_8e
    return-void
.end method

.method public isInWhiteList()Z
    .registers 8

    .line 34
    sget-boolean v0, Lcom/mediatek/view/impl/SurfaceExtimpl;->ENABLE_WHITE_LIST:Z

    if-eqz v0, :cond_6

    .line 35
    const/4 v0, 0x1

    return v0

    .line 37
    :cond_6
    const/4 v0, 0x0

    .line 38
    .local v0, "isContained":Z
    invoke-direct {p0}, Lcom/mediatek/view/impl/SurfaceExtimpl;->getCallerProcessName()Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "packageName":Ljava/lang/String;
    sget-object v2, Lcom/mediatek/view/impl/SurfaceExtimpl;->WHITE_LIST:[Ljava/lang/String;

    if-eqz v2, :cond_22

    if-eqz v1, :cond_22

    .line 40
    array-length v3, v2

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v3, :cond_22

    aget-object v5, v2, v4

    .line 41
    .local v5, "item":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 42
    const/4 v0, 0x1

    .line 43
    goto :goto_22

    .line 40
    .end local v5    # "item":Ljava/lang/String;
    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 47
    :cond_22
    :goto_22
    return v0
.end method

.method public isResolutionTuningPackage()Z
    .registers 2

    .line 72
    iget-boolean v0, p0, Lcom/mediatek/view/impl/SurfaceExtimpl;->mIsContainPackageName:Z

    return v0
.end method

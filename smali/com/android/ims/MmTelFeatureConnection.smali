.class public Lcom/android/ims/MmTelFeatureConnection;
.super Ljava/lang/Object;
.source "MmTelFeatureConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;,
        Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;,
        Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;,
        Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;,
        Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "MmTelFeatureConnection"

.field private static sImsSupportedOnDevice:Z


# instance fields
.field protected mBinder:Landroid/os/IBinder;

.field private final mCapabilityCallbackManager:Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;

.field private mConfigBinder:Landroid/telephony/ims/aidl/IImsConfig;

.field private mContext:Landroid/content/Context;

.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mFeatureStateCached:Ljava/lang/Integer;

.field private volatile mIsAvailable:Z

.field private final mListenerBinder:Lcom/android/ims/internal/IImsServiceFeatureCallback;

.field private final mLock:Ljava/lang/Object;

.field private final mProvisioningCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;

.field private mRegistrationBinder:Landroid/telephony/ims/aidl/IImsRegistration;

.field private final mRegistrationCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;

.field protected final mSlotId:I

.field private mStatusCallback:Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;

.field private mSupportsEmergencyCalling:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 433
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/ims/MmTelFeatureConnection;->sImsSupportedOnDevice:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotId"    # I

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mIsAvailable:Z

    .line 428
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mFeatureStateCached:Ljava/lang/Integer;

    .line 430
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    .line 432
    iput-boolean v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mSupportsEmergencyCalling:Z

    .line 440
    new-instance v0, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$ij8S4RNRiQPHfppwkejp36BG78I;

    invoke-direct {v0, p0}, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$ij8S4RNRiQPHfppwkejp36BG78I;-><init>(Lcom/android/ims/MmTelFeatureConnection;)V

    iput-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 502
    new-instance v0, Lcom/android/ims/MmTelFeatureConnection$1;

    invoke-direct {v0, p0}, Lcom/android/ims/MmTelFeatureConnection$1;-><init>(Lcom/android/ims/MmTelFeatureConnection;)V

    iput-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mListenerBinder:Lcom/android/ims/internal/IImsServiceFeatureCallback;

    .line 573
    iput p2, p0, Lcom/android/ims/MmTelFeatureConnection;->mSlotId:I

    .line 574
    iput-object p1, p0, Lcom/android/ims/MmTelFeatureConnection;->mContext:Landroid/content/Context;

    .line 576
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 577
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mExecutor:Ljava/util/concurrent/Executor;

    goto :goto_0

    .line 580
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1

    .line 581
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 583
    :cond_1
    new-instance v0, Landroid/os/HandlerExecutor;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mExecutor:Ljava/util/concurrent/Executor;

    .line 585
    :goto_0
    new-instance v0, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;

    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;-><init>(Lcom/android/ims/MmTelFeatureConnection;Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;

    .line 586
    new-instance v0, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;

    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;-><init>(Lcom/android/ims/MmTelFeatureConnection;Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mCapabilityCallbackManager:Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;

    .line 587
    new-instance v0, Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;

    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;-><init>(Lcom/android/ims/MmTelFeatureConnection;Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mProvisioningCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;

    .line 588
    return-void
.end method

.method static synthetic access$1000(Lcom/android/ims/MmTelFeatureConnection;)Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/MmTelFeatureConnection;

    .line 71
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mStatusCallback:Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/ims/MmTelFeatureConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/MmTelFeatureConnection;

    .line 71
    invoke-direct {p0}, Lcom/android/ims/MmTelFeatureConnection;->onRemovedOrDied()V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/ims/MmTelFeatureConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/MmTelFeatureConnection;
    .param p1, "x1"    # Z

    .line 71
    iput-boolean p1, p0, Lcom/android/ims/MmTelFeatureConnection;->mSupportsEmergencyCalling:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/ims/MmTelFeatureConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/MmTelFeatureConnection;

    .line 71
    iget-boolean v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mIsAvailable:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/ims/MmTelFeatureConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/MmTelFeatureConnection;
    .param p1, "x1"    # Z

    .line 71
    iput-boolean p1, p0, Lcom/android/ims/MmTelFeatureConnection;->mIsAvailable:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/ims/MmTelFeatureConnection;)Landroid/telephony/ims/aidl/IImsRegistration;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/MmTelFeatureConnection;

    .line 71
    invoke-direct {p0}, Lcom/android/ims/MmTelFeatureConnection;->getRegistration()Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/ims/MmTelFeatureConnection;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/MmTelFeatureConnection;

    .line 71
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/ims/MmTelFeatureConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/MmTelFeatureConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/ims/MmTelFeatureConnection;Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/MmTelFeatureConnection;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 71
    invoke-direct {p0, p1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/ims/MmTelFeatureConnection;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/MmTelFeatureConnection;

    .line 71
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/ims/MmTelFeatureConnection;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/MmTelFeatureConnection;
    .param p1, "x1"    # Ljava/lang/Integer;

    .line 71
    iput-object p1, p0, Lcom/android/ims/MmTelFeatureConnection;->mFeatureStateCached:Ljava/lang/Integer;

    return-object p1
.end method

.method private checkServiceIsReady()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 957
    sget-boolean v0, Lcom/android/ims/MmTelFeatureConnection;->sImsSupportedOnDevice:Z

    if-eqz v0, :cond_1

    .line 960
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->isBinderReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 963
    return-void

    .line 961
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "ImsServiceProxy is not ready to accept commands."

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 958
    :cond_1
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "IMS is not supported on this device."

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Landroid/content/Context;I)Lcom/android/ims/MmTelFeatureConnection;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .line 457
    new-instance v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-direct {v0, p0, p1}, Lcom/android/ims/MmTelFeatureConnection;-><init>(Landroid/content/Context;I)V

    .line 458
    .local v0, "serviceProxy":Lcom/android/ims/MmTelFeatureConnection;
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isImsSupportedOnDevice(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 460
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/ims/MmTelFeatureConnection;->sImsSupportedOnDevice:Z

    .line 461
    return-object v0

    .line 464
    :cond_0
    invoke-static {p0}, Lcom/android/ims/MmTelFeatureConnection;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 465
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    const-string v2, "MmTelFeatureConnection"

    if-nez v1, :cond_1

    .line 466
    const-string v3, "create: TelephonyManager is null!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    return-object v0

    .line 472
    :cond_1
    nop

    .line 473
    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->getListener()Lcom/android/ims/internal/IImsServiceFeatureCallback;

    move-result-object v3

    .line 472
    invoke-virtual {v1, p1, v3}, Landroid/telephony/TelephonyManager;->getImsMmTelFeatureAndListen(ILcom/android/ims/internal/IImsServiceFeatureCallback;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v3

    .line 474
    .local v3, "binder":Landroid/telephony/ims/aidl/IImsMmTelFeature;
    if-eqz v3, :cond_2

    .line 475
    invoke-interface {v3}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/ims/MmTelFeatureConnection;->setBinder(Landroid/os/IBinder;)V

    .line 477
    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->getFeatureState()I

    goto :goto_0

    .line 479
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create: binder is null! Slot Id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :goto_0
    return-object v0
.end method

.method private getConfig()Landroid/telephony/ims/aidl/IImsConfig;
    .locals 4

    .line 635
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 637
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mConfigBinder:Landroid/telephony/ims/aidl/IImsConfig;

    if-eqz v1, :cond_0

    .line 638
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mConfigBinder:Landroid/telephony/ims/aidl/IImsConfig;

    monitor-exit v0

    return-object v1

    .line 640
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 641
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/ims/MmTelFeatureConnection;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 642
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_1

    .line 643
    iget v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mSlotId:I

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->getImsConfig(II)Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v2, v0

    .line 644
    .local v2, "configBinder":Landroid/telephony/ims/aidl/IImsConfig;
    iget-object v3, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 646
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mConfigBinder:Landroid/telephony/ims/aidl/IImsConfig;

    if-nez v0, :cond_2

    .line 647
    iput-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mConfigBinder:Landroid/telephony/ims/aidl/IImsConfig;

    .line 649
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 650
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mConfigBinder:Landroid/telephony/ims/aidl/IImsConfig;

    return-object v0

    .line 649
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 640
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    .end local v2    # "configBinder":Landroid/telephony/ims/aidl/IImsConfig;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private getRegistration()Landroid/telephony/ims/aidl/IImsRegistration;
    .locals 4

    .line 614
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 616
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mRegistrationBinder:Landroid/telephony/ims/aidl/IImsRegistration;

    if-eqz v1, :cond_0

    .line 617
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mRegistrationBinder:Landroid/telephony/ims/aidl/IImsRegistration;

    monitor-exit v0

    return-object v1

    .line 619
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 620
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/ims/MmTelFeatureConnection;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 622
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_1

    .line 623
    iget v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mSlotId:I

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->getImsRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v2, v0

    .line 624
    .local v2, "regBinder":Landroid/telephony/ims/aidl/IImsRegistration;
    iget-object v3, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 627
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mRegistrationBinder:Landroid/telephony/ims/aidl/IImsRegistration;

    if-nez v0, :cond_2

    .line 628
    iput-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mRegistrationBinder:Landroid/telephony/ims/aidl/IImsRegistration;

    .line 630
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 631
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mRegistrationBinder:Landroid/telephony/ims/aidl/IImsRegistration;

    return-object v0

    .line 630
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 619
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    .end local v2    # "regBinder":Landroid/telephony/ims/aidl/IImsRegistration;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .locals 1
    .param p1, "b"    # Landroid/os/IBinder;

    .line 966
    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v0

    return-object v0
.end method

.method public static getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 485
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static synthetic lambda$NxZFB3RppXJngUWEmxSWd3-I_s4(Lcom/android/ims/MmTelFeatureConnection;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/ims/MmTelFeatureConnection;->onRemovedOrDied()V

    return-void
.end method

.method private onRemovedOrDied()V
    .locals 4

    .line 594
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 595
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;

    invoke-virtual {v1}, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;->close()V

    .line 596
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mCapabilityCallbackManager:Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;

    invoke-virtual {v1}, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->close()V

    .line 597
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mProvisioningCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;

    invoke-virtual {v1}, Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;->close()V

    .line 598
    iget-boolean v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mIsAvailable:Z

    if-eqz v1, :cond_1

    .line 599
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mIsAvailable:Z

    .line 601
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mRegistrationBinder:Landroid/telephony/ims/aidl/IImsRegistration;

    .line 602
    iput-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mConfigBinder:Landroid/telephony/ims/aidl/IImsConfig;

    .line 603
    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    if-eqz v2, :cond_0

    .line 604
    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/ims/MmTelFeatureConnection;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v2, v3, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 606
    :cond_0
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mStatusCallback:Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;

    if-eqz v1, :cond_1

    .line 607
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mStatusCallback:Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;

    invoke-interface {v1}, Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;->notifyUnavailable()V

    .line 610
    :cond_1
    monitor-exit v0

    .line 611
    return-void

    .line 610
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private retrieveFeatureState()Ljava/lang/Integer;
    .locals 1

    .line 919
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 921
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v0

    invoke-interface {v0}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->getFeatureState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 922
    :catch_0
    move-exception v0

    .line 926
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public acknowledgeSms(III)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 844
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 845
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 846
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->acknowledgeSms(III)V

    .line 847
    monitor-exit v0

    .line 848
    return-void

    .line 847
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public acknowledgeSmsReport(III)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 852
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 853
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 854
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->acknowledgeSmsReport(III)V

    .line 855
    monitor-exit v0

    .line 856
    return-void

    .line 855
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 722
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mCapabilityCallbackManager:Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->addCallback(Landroid/os/IInterface;)V

    .line 723
    return-void
.end method

.method public addCapabilityCallbackForSubscription(Landroid/telephony/ims/aidl/IImsCapabilityCallback;I)V
    .locals 1
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .param p2, "subId"    # I

    .line 727
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mCapabilityCallbackManager:Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->addCallbackForSubscription(Landroid/os/IInterface;I)V

    .line 728
    return-void
.end method

.method public addProvisioningCallbackForSubscription(Landroid/telephony/ims/aidl/IImsConfigCallback;I)V
    .locals 1
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsConfigCallback;
    .param p2, "subId"    # I

    .line 741
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mProvisioningCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;->addCallbackForSubscription(Landroid/os/IInterface;I)V

    .line 742
    return-void
.end method

.method public addRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 704
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;->addCallback(Landroid/os/IInterface;)V

    .line 705
    return-void
.end method

.method public addRegistrationCallbackForSubscription(Landroid/telephony/ims/aidl/IImsRegistrationCallback;I)V
    .locals 1
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .param p2, "subId"    # I

    .line 709
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;->addCallbackForSubscription(Landroid/os/IInterface;I)V

    .line 710
    return-void
.end method

.method public changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 2
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .param p2, "callback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 751
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 752
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 753
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->changeCapabilitiesConfiguration(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 754
    monitor-exit v0

    .line 755
    return-void

    .line 754
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public closeConnection()V
    .locals 3

    .line 689
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;->close()V

    .line 690
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mCapabilityCallbackManager:Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->close()V

    .line 691
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mProvisioningCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;->close()V

    .line 693
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    :try_start_1
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 695
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->setListener(Landroid/telephony/ims/aidl/IImsMmTelListener;)V

    .line 697
    :cond_0
    monitor-exit v0

    .line 700
    goto :goto_0

    .line 697
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/ims/MmTelFeatureConnection;
    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 698
    .restart local p0    # "this":Lcom/android/ims/MmTelFeatureConnection;
    :catch_0
    move-exception v0

    .line 699
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MmTelFeatureConnection"

    const-string v2, "closeConnection: couldn\'t remove listener!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;
    .locals 2
    .param p1, "callServiceType"    # I
    .param p2, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 776
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 777
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 778
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 779
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public createCallSession(Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 784
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 785
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 786
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->createCallSession(Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 787
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getConfigInterface()Landroid/telephony/ims/aidl/IImsConfig;
    .locals 1

    .line 798
    invoke-direct {p0}, Lcom/android/ims/MmTelFeatureConnection;->getConfig()Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v0

    return-object v0
.end method

.method public getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 812
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 813
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 814
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 815
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFeatureState()I
    .locals 3

    .line 897
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 898
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mFeatureStateCached:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 899
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mFeatureStateCached:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v0

    return v1

    .line 901
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 903
    invoke-direct {p0}, Lcom/android/ims/MmTelFeatureConnection;->retrieveFeatureState()Ljava/lang/Integer;

    move-result-object v1

    .line 904
    .local v1, "status":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 905
    if-nez v1, :cond_1

    .line 906
    const/4 v0, 0x0

    :try_start_1
    monitor-exit v2

    return v0

    .line 909
    :cond_1
    iput-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mFeatureStateCached:Ljava/lang/Integer;

    .line 910
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFeatureState - returning "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MmTelFeatureConnection"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 910
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 901
    .end local v1    # "status":Ljava/lang/Integer;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public getListener()Lcom/android/ims/internal/IImsServiceFeatureCallback;
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mListenerBinder:Lcom/android/ims/internal/IImsServiceFeatureCallback;

    return-object v0
.end method

.method public getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 827
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 828
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 829
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 830
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRegistrationTech()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 803
    invoke-direct {p0}, Lcom/android/ims/MmTelFeatureConnection;->getRegistration()Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v0

    .line 804
    .local v0, "registration":Landroid/telephony/ims/aidl/IImsRegistration;
    if-eqz v0, :cond_0

    .line 805
    invoke-interface {v0}, Landroid/telephony/ims/aidl/IImsRegistration;->getRegistrationTechnology()I

    move-result v1

    return v1

    .line 807
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public getSmsFormat()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 859
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 860
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 861
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->getSmsFormat()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 862
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUtInterface()Lcom/android/ims/internal/IImsUt;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 791
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 792
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 793
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->getUtInterface()Lcom/android/ims/internal/IImsUt;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 794
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isBinderAlive()Z
    .locals 1

    .line 953
    iget-boolean v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mIsAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBinderReady()Z
    .locals 2

    .line 946
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->getFeatureState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmergencyMmTelAvailable()Z
    .locals 1

    .line 654
    iget-boolean v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mSupportsEmergencyCalling:Z

    return v0
.end method

.method public synthetic lambda$new$0$MmTelFeatureConnection()V
    .locals 2

    .line 441
    const-string v0, "MmTelFeatureConnection"

    const-string v1, "DeathRecipient triggered, binder died."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$NxZFB3RppXJngUWEmxSWd3-I_s4;

    invoke-direct {v1, p0}, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$NxZFB3RppXJngUWEmxSWd3-I_s4;-><init>(Lcom/android/ims/MmTelFeatureConnection;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 446
    return-void

    .line 449
    :cond_0
    invoke-direct {p0}, Lcom/android/ims/MmTelFeatureConnection;->onRemovedOrDied()V

    .line 450
    return-void
.end method

.method public onSmsReady()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 866
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 867
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 868
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->onSmsReady()V

    .line 869
    monitor-exit v0

    .line 870
    return-void

    .line 869
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public openConnection(Landroid/telephony/ims/feature/MmTelFeature$Listener;)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/ims/feature/MmTelFeature$Listener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 682
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 683
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 684
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->setListener(Landroid/telephony/ims/aidl/IImsMmTelListener;)V

    .line 685
    monitor-exit v0

    .line 686
    return-void

    .line 685
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public queryCapabilityStatus()Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 767
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 768
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 769
    new-instance v1, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    .line 770
    invoke-direct {p0, v2}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v2

    invoke-interface {v2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->queryCapabilityStatus()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>(I)V

    monitor-exit v0

    .line 769
    return-object v1

    .line 771
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public queryEnabledCapabilities(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 2
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .param p3, "callback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 759
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 760
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 761
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->queryCapabilityConfiguration(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 763
    monitor-exit v0

    .line 764
    return-void

    .line 763
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 731
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mCapabilityCallbackManager:Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->removeCallback(Landroid/os/IInterface;)V

    .line 732
    return-void
.end method

.method public removeCapabilityCallbackForSubscription(Landroid/telephony/ims/aidl/IImsCapabilityCallback;I)V
    .locals 1
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .param p2, "subId"    # I

    .line 736
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mCapabilityCallbackManager:Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->removeCallbackForSubscription(Landroid/os/IInterface;I)V

    .line 737
    return-void
.end method

.method public removeProvisioningCallbackForSubscription(Landroid/telephony/ims/aidl/IImsConfigCallback;I)V
    .locals 1
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsConfigCallback;
    .param p2, "subId"    # I

    .line 746
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mProvisioningCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;->removeCallbackForSubscription(Landroid/os/IInterface;I)V

    .line 747
    return-void
.end method

.method public removeRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 713
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;->removeCallback(Landroid/os/IInterface;)V

    .line 714
    return-void
.end method

.method public removeRegistrationCallbackForSubscription(Landroid/telephony/ims/aidl/IImsRegistrationCallback;I)V
    .locals 1
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .param p2, "subId"    # I

    .line 718
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;->removeCallbackForSubscription(Landroid/os/IInterface;I)V

    .line 719
    return-void
.end method

.method public sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 9
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "smsc"    # Ljava/lang/String;
    .param p5, "isRetry"    # Z
    .param p6, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 835
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 836
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 837
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v2

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    invoke-interface/range {v2 .. v8}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V

    .line 839
    monitor-exit v0

    .line 840
    return-void

    .line 839
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBinder(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 662
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 663
    :try_start_0
    iput-object p1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 666
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 670
    :cond_0
    goto :goto_0

    .line 668
    :catch_0
    move-exception v1

    .line 671
    :goto_0
    :try_start_2
    monitor-exit v0

    .line 672
    return-void

    .line 671
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/ims/aidl/IImsSmsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 873
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 874
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 875
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->setSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V

    .line 876
    monitor-exit v0

    .line 877
    return-void

    .line 876
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setStatusCallback(Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;)V
    .locals 0
    .param p1, "c"    # Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;

    .line 933
    iput-object p1, p0, Lcom/android/ims/MmTelFeatureConnection;->mStatusCallback:Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;

    .line 934
    return-void
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 2
    .param p1, "uiTtyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 820
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 821
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 822
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->setUiTtyMode(ILandroid/os/Message;)V

    .line 823
    monitor-exit v0

    .line 824
    return-void

    .line 823
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shouldProcessCall(Z[Ljava/lang/String;)I
    .locals 2
    .param p1, "isEmergency"    # Z
    .param p2, "numbers"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 881
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->isEmergencyMmTelAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 883
    const-string v0, "MmTelFeatureConnection"

    const-string v1, "MmTel does not support emergency over IMS, fallback to CS."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    const/4 v0, 0x1

    return v0

    .line 886
    :cond_0
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 887
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 888
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->shouldProcessCall([Ljava/lang/String;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 889
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

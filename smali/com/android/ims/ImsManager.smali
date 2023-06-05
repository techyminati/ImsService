.class public Lcom/android/ims/ImsManager;
.super Ljava/lang/Object;
.source "ImsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsManager$ExecutorFactory;,
        Lcom/android/ims/ImsManager$Connector;
    }
.end annotation


# static fields
.field public static final ACTION_IMS_INCOMING_CALL:Ljava/lang/String; = "com.android.ims.IMS_INCOMING_CALL"

.field public static final ACTION_IMS_REGISTRATION_ERROR:Ljava/lang/String; = "com.android.ims.REGISTRATION_ERROR"

.field public static final ACTION_IMS_SERVICE_DOWN:Ljava/lang/String; = "com.android.ims.IMS_SERVICE_DOWN"

.field public static final ACTION_IMS_SERVICE_UP:Ljava/lang/String; = "com.android.ims.IMS_SERVICE_UP"

.field private static final DBG:Z = true

.field public static final EXTRA_CALL_ID:Ljava/lang/String; = "android:imsCallID"

.field public static final EXTRA_IS_UNKNOWN_CALL:Ljava/lang/String; = "android:isUnknown"

.field public static final EXTRA_PHONE_ID:Ljava/lang/String; = "android:phone_id"

.field public static final EXTRA_SERVICE_ID:Ljava/lang/String; = "android:imsServiceId"

.field public static final EXTRA_USSD:Ljava/lang/String; = "android:ussd"

.field public static final FALSE:Ljava/lang/String; = "false"

.field public static final INCOMING_CALL_RESULT_CODE:I = 0x65

.field private static final MAX_RECENT_DISCONNECT_REASONS:I = 0x10

.field public static final PROPERTY_DBG_ALLOW_IMS_OFF_OVERRIDE:Ljava/lang/String; = "persist.dbg.allow_ims_off"

.field public static final PROPERTY_DBG_ALLOW_IMS_OFF_OVERRIDE_DEFAULT:I = 0x0

.field public static final PROPERTY_DBG_VOLTE_AVAIL_OVERRIDE:Ljava/lang/String; = "persist.dbg.volte_avail_ovr"

.field public static final PROPERTY_DBG_VOLTE_AVAIL_OVERRIDE_DEFAULT:I = 0x0

.field public static final PROPERTY_DBG_VT_AVAIL_OVERRIDE:Ljava/lang/String; = "persist.dbg.vt_avail_ovr"

.field public static final PROPERTY_DBG_VT_AVAIL_OVERRIDE_DEFAULT:I = 0x0

.field public static final PROPERTY_DBG_WFC_AVAIL_OVERRIDE:Ljava/lang/String; = "persist.dbg.wfc_avail_ovr"

.field public static final PROPERTY_DBG_WFC_AVAIL_OVERRIDE_DEFAULT:I = 0x0

.field private static final RESPONSE_WAIT_TIME_MS:I = 0xbb8

.field protected static final SUB_PROPERTY_NOT_INITIALIZED:I = -0x1

.field protected static final SYSTEM_PROPERTY_NOT_SET:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ImsManager"

.field public static final TRUE:Ljava/lang/String; = "true"

.field private static sImsManagerInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/ims/ImsManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mConfigDynamicBind:Z

.field private mConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mConfigUpdated:Z

.field protected mContext:Landroid/content/Context;

.field private mEcbm:Lcom/android/ims/ImsEcbm;

.field public mExecutorFactory:Lcom/android/ims/ImsManager$ExecutorFactory;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected mImsConfigListener:Lcom/android/ims/ImsConfigListener;

.field protected mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

.field private mMultiEndpoint:Lcom/android/ims/ImsMultiEndpoint;

.field protected mPhoneId:I

.field private mRecentDisconnectReasons:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Landroid/telephony/ims/ImsReasonInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;",
            ">;"
        }
    .end annotation
.end field

.field private mUt:Lcom/android/ims/ImsUt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 409
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/ims/ImsManager;->sImsManagerInstances:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    sget-object v0, Lcom/android/ims/-$$Lambda$ImsManager$Flxe43OUFnnU0pgnksvwPE6o3Mk;->INSTANCE:Lcom/android/ims/-$$Lambda$ImsManager$Flxe43OUFnnU0pgnksvwPE6o3Mk;

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mExecutorFactory:Lcom/android/ims/ImsManager$ExecutorFactory;

    .line 417
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    .line 419
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/ims/ImsManager;->mConfigUpdated:Z

    .line 428
    iput-object v0, p0, Lcom/android/ims/ImsManager;->mUt:Lcom/android/ims/ImsUt;

    .line 430
    iput-object v0, p0, Lcom/android/ims/ImsManager;->mEcbm:Lcom/android/ims/ImsEcbm;

    .line 431
    iput-object v0, p0, Lcom/android/ims/ImsManager;->mMultiEndpoint:Lcom/android/ims/ImsMultiEndpoint;

    .line 433
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mStatusCallbacks:Ljava/util/Set;

    .line 441
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mRecentDisconnectReasons:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 1647
    iput-object p1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    .line 1648
    iput p2, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    .line 1649
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/ims/ImsManager;->mConfigDynamicBind:Z

    .line 1651
    const-string v0, "carrier_config"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 1653
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->createImsService()V

    .line 1654
    return-void
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 84
    invoke-static {p0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 84
    invoke-static {p0}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/ims/ImsManager;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/ImsManager;

    .line 84
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mStatusCallbacks:Ljava/util/Set;

    return-object v0
.end method

.method private addToRecentDisconnectReasons(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reason"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2576
    if-nez p1, :cond_0

    return-void

    .line 2577
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mRecentDisconnectReasons:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 2578
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mRecentDisconnectReasons:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 2580
    :cond_1
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mRecentDisconnectReasons:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->addLast(Ljava/lang/Object;)V

    .line 2581
    return-void
.end method

.method protected static booleanToPropertyString(Z)Ljava/lang/String;
    .locals 1
    .param p0, "bool"    # Z

    .line 2820
    if-eqz p0, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    return-object v0
.end method

.method private checkAndThrowExceptionIfServiceUnavailable()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2418
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isImsSupportedOnDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2422
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2423
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->createImsService()V

    .line 2425
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    if-eqz v0, :cond_2

    .line 2430
    :cond_1
    return-void

    .line 2426
    :cond_2
    new-instance v0, Lcom/android/ims/ImsException;

    const/16 v1, 0x6a

    const-string v2, "Service is unavailable"

    invoke-direct {v0, v2, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 2419
    :cond_3
    new-instance v0, Lcom/android/ims/ImsException;

    const/16 v1, 0x96

    const-string v2, "IMS not supported on device."

    invoke-direct {v0, v2, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public static factoryReset(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 2722
    nop

    .line 2723
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 2722
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 2724
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 2725
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->factoryReset()V

    .line 2727
    :cond_0
    const-string v1, "factoryReset: ImsManager null."

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 2728
    return-void
.end method

.method protected static getCallId(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p0, "incomingCallExtras"    # Landroid/os/Bundle;

    .line 2405
    if-nez p0, :cond_0

    .line 2406
    const/4 v0, 0x0

    return-object v0

    .line 2409
    :cond_0
    const-string v0, "android:imsCallID"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 452
    sget-object v0, Lcom/android/ims/ImsManager;->sImsManagerInstances:Ljava/util/HashMap;

    monitor-enter v0

    .line 453
    :try_start_0
    sget-object v1, Lcom/android/ims/ImsManager;->sImsManagerInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 454
    sget-object v1, Lcom/android/ims/ImsManager;->sImsManagerInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsManager;

    .line 456
    .local v1, "m":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_0

    .line 457
    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->connectIfServiceIsAvailable()V

    .line 459
    :cond_0
    monitor-exit v0

    return-object v1

    .line 463
    .end local v1    # "m":Lcom/android/ims/ImsManager;
    :cond_1
    const/4 v1, 0x0

    .line 464
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    const-string v2, "ro.vendor.mtk_telephony_add_on_policy"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 467
    const/4 v2, 0x2

    :try_start_1
    new-array v3, v2, [Ljava/lang/Class;

    .line 468
    .local v3, "cParam":[Ljava/lang/Class;
    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 469
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 471
    invoke-static {}, Lcom/android/ims/ImsManager;->getMtkImsManager()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 473
    .local v4, "clazzConstructfunc":Ljava/lang/reflect/Constructor;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "constructor function = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 475
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v6

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/ImsManager;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    .end local v3    # "cParam":[Ljava/lang/Class;
    .end local v4    # "clazzConstructfunc":Ljava/lang/reflect/Constructor;
    goto :goto_0

    .line 479
    :catch_0
    move-exception v2

    .line 480
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "Exception at init MtkImsManager! Use AOSP for instead!"

    invoke-static {v3}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 481
    new-instance v3, Lcom/android/ims/ImsManager;

    invoke-direct {v3, p0, p1}, Lcom/android/ims/ImsManager;-><init>(Landroid/content/Context;I)V

    move-object v1, v3

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 476
    :catch_1
    move-exception v2

    .line 477
    .local v2, "nsme":Ljava/lang/NoSuchMethodException;
    const-string v3, "MtkImsManager Constructor not found! Use AOSP instead!"

    invoke-static {v3}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 478
    new-instance v3, Lcom/android/ims/ImsManager;

    invoke-direct {v3, p0, p1}, Lcom/android/ims/ImsManager;-><init>(Landroid/content/Context;I)V

    move-object v1, v3

    .line 482
    .end local v2    # "nsme":Ljava/lang/NoSuchMethodException;
    :goto_0
    goto :goto_1

    .line 484
    :cond_2
    const-string v2, "New an AOSP\'s ImsManager instance"

    invoke-static {v2}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 485
    new-instance v2, Lcom/android/ims/ImsManager;

    invoke-direct {v2, p0, p1}, Lcom/android/ims/ImsManager;-><init>(Landroid/content/Context;I)V

    move-object v1, v2

    .line 488
    :goto_1
    sget-object v2, Lcom/android/ims/ImsManager;->sImsManagerInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    monitor-exit v0

    return-object v1

    .line 491
    .end local v1    # "mgr":Lcom/android/ims/ImsManager;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static getMtkImsManager()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 2869
    :try_start_0
    const-string v0, "com.mediatek.ims.internal.MtkImsManager"

    .line 2870
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2871
    .local v1, "mtkImsManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-object v1

    .line 2872
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "mtkImsManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 2873
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MtkImsManager not found!"

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 2875
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private getProvisionedBool(Lcom/android/ims/ImsConfig;I)Z
    .locals 4
    .param p1, "config"    # Lcom/android/ims/ImsConfig;
    .param p2, "item"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1385
    invoke-virtual {p1, p2}, Lcom/android/ims/ImsConfig;->getProvisionedValue(I)I

    move-result v0

    .line 1386
    .local v0, "value":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1390
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1387
    :cond_1
    new-instance v1, Lcom/android/ims/ImsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProvisionedBool failed with error for item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x67

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method private getProvisionedBoolNoException(I)Z
    .locals 3
    .param p1, "item"    # I

    .line 1411
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v0

    .line 1412
    .local v0, "config":Lcom/android/ims/ImsConfig;
    invoke-direct {p0, v0, p1}, Lcom/android/ims/ImsManager;->getProvisionedBool(Lcom/android/ims/ImsConfig;I)Z

    move-result v1
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1413
    .end local v0    # "config":Lcom/android/ims/ImsConfig;
    :catch_0
    move-exception v0

    .line 1414
    .local v0, "ex":Lcom/android/ims/ImsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProvisionedBoolNoException: operation failed for item="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1415
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Returning false."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1414
    const-string v2, "ImsManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    const/4 v1, 0x0

    return v1
.end method

.method private getSettingFromSubscriptionManager(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "subSetting"    # Ljava/lang/String;
    .param p2, "defaultConfigKey"    # Ljava/lang/String;

    .line 1151
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-static {v0, p1, v2, v1}, Landroid/telephony/SubscriptionManager;->getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I

    move-result v0

    .line 1155
    .local v0, "result":I
    if-ne v0, v2, :cond_0

    .line 1156
    invoke-virtual {p0, p2}, Lcom/android/ims/ImsManager;->getIntCarrierConfig(Ljava/lang/String;)I

    move-result v0

    .line 1158
    :cond_0
    return v0
.end method

.method private getThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 3

    .line 2350
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2351
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2353
    :cond_0
    new-instance v0, Landroid/os/HandlerExecutor;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public static getWfcMode(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1051
    nop

    .line 1052
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 1051
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 1053
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 1054
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->getWfcMode()I

    move-result v1

    return v1

    .line 1056
    :cond_0
    const-string v1, "getWfcMode: ImsManager null, returning default value."

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1057
    const/4 v1, 0x0

    return v1
.end method

.method public static getWfcMode(Landroid/content/Context;Z)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "roaming"    # Z

    .line 1098
    nop

    .line 1099
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 1098
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 1100
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 1101
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v1

    return v1

    .line 1103
    :cond_0
    const-string v1, "getWfcMode: ImsManager null, returning default value."

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1104
    const/4 v1, 0x0

    return v1
.end method

.method public static isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 505
    nop

    .line 506
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 505
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 507
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v1

    return v1

    .line 510
    :cond_0
    const-string v1, "isEnhanced4gLteModeSettingEnabledByUser: ImsManager null, returning default value."

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 511
    const/4 v1, 0x0

    return v1
.end method

.method private isImsNeeded(Landroid/telephony/ims/feature/CapabilityChangeRequest;)Z
    .locals 2
    .param p1, "r"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;

    .line 1509
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToEnable()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/ims/-$$Lambda$ImsManager$YhRaDrc3t9_7beNiU5gQcqZilOw;->INSTANCE:Lcom/android/ims/-$$Lambda$ImsManager$YhRaDrc3t9_7beNiU5gQcqZilOw;

    .line 1510
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 1509
    return v0
.end method

.method public static isImsSupportedOnDevice(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 495
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony.ims"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isImsTurnOffAllowed()Z
    .locals 1

    .line 2499
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isTurnOffImsAllowedByPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2500
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2501
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2499
    :goto_0
    return v0
.end method

.method public static isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 613
    nop

    .line 614
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 613
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 615
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 616
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result v1

    return v1

    .line 618
    :cond_0
    const-string v1, "isNonTtyOrTtyOnVolteEnabled: ImsManager null, returning default value."

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 619
    const/4 v1, 0x0

    return v1
.end method

.method protected static isTurnOffImsAllowedByPlatform(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 908
    nop

    .line 909
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 908
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 910
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 911
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isTurnOffImsAllowedByPlatform()Z

    move-result v1

    return v1

    .line 913
    :cond_0
    const-string v1, "isTurnOffImsAllowedByPlatform: ImsManager null, returning default value."

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 914
    const/4 v1, 0x1

    return v1
.end method

.method public static isVolteEnabledByPlatform(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 649
    nop

    .line 650
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 649
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 651
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 652
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform()Z

    move-result v1

    return v1

    .line 654
    :cond_0
    const-string v1, "isVolteEnabledByPlatform: ImsManager null, returning default value."

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 655
    const/4 v1, 0x0

    return v1
.end method

.method private isVolteProvisioned()Z
    .locals 1

    .line 2800
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->getProvisionedBoolNoException(I)Z

    move-result v0

    return v0
.end method

.method public static isVolteProvisionedOnDevice(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 686
    nop

    .line 687
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 686
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 688
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 689
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isVolteProvisionedOnDevice()Z

    move-result v1

    return v1

    .line 691
    :cond_0
    const-string v1, "isVolteProvisionedOnDevice: ImsManager null, returning default value."

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 692
    const/4 v1, 0x1

    return v1
.end method

.method public static isVtEnabledByPlatform(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 786
    nop

    .line 787
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 786
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 788
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 789
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isVtEnabledByPlatform()Z

    move-result v1

    return v1

    .line 791
    :cond_0
    const-string v1, "isVtEnabledByPlatform: ImsManager null, returning default value."

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 792
    const/4 v1, 0x0

    return v1
.end method

.method public static isVtEnabledByUser(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 823
    nop

    .line 824
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 823
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 825
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 826
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isVtEnabledByUser()Z

    move-result v1

    return v1

    .line 828
    :cond_0
    const-string v1, "isVtEnabledByUser: ImsManager null, returning default value."

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 829
    const/4 v1, 0x0

    return v1
.end method

.method private isVtProvisioned()Z
    .locals 1

    .line 2810
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->getProvisionedBoolNoException(I)Z

    move-result v0

    return v0
.end method

.method public static isVtProvisionedOnDevice(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 755
    nop

    .line 756
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 755
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 757
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 758
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isVtProvisionedOnDevice()Z

    move-result v1

    return v1

    .line 760
    :cond_0
    const-string v1, "isVtProvisionedOnDevice: ImsManager null, returning default value."

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 761
    const/4 v1, 0x1

    return v1
.end method

.method public static isWfcEnabledByPlatform(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1313
    nop

    .line 1314
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 1313
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 1315
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 1316
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v1

    return v1

    .line 1318
    :cond_0
    const-string v1, "isWfcEnabledByPlatform: ImsManager null, returning default value."

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1319
    const/4 v1, 0x0

    return v1
.end method

.method public static isWfcEnabledByUser(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 943
    nop

    .line 944
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 943
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 945
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 946
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v1

    return v1

    .line 948
    :cond_0
    const-string v1, "isWfcEnabledByUser: ImsManager null, returning default value."

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 949
    const/4 v1, 0x1

    return v1
.end method

.method private isWfcProvisioned()Z
    .locals 1

    .line 2805
    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->getProvisionedBoolNoException(I)Z

    move-result v0

    return v0
.end method

.method public static isWfcProvisionedOnDevice(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 717
    nop

    .line 718
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 717
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 719
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 720
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isWfcProvisionedOnDevice()Z

    move-result v1

    return v1

    .line 722
    :cond_0
    const-string v1, "isWfcProvisionedOnDevice: ImsManager null, returning default value."

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 723
    const/4 v1, 0x1

    return v1
.end method

.method public static isWfcRoamingEnabledByUser(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1242
    nop

    .line 1243
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 1242
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 1244
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 1245
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isWfcRoamingEnabledByUser()Z

    move-result v1

    return v1

    .line 1247
    :cond_0
    const-string v1, "isWfcRoamingEnabledByUser: ImsManager null, returning default value."

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1248
    const/4 v1, 0x0

    return v1
.end method

.method static synthetic lambda$isImsNeeded$3(Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;)Z
    .locals 2
    .param p0, "c"    # Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 1511
    invoke-virtual {p0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$new$0(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 407
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 2477
    const-string v0, "ImsManager"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2478
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 2481
    const-string v0, "ImsManager"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    return-void
.end method

.method private static loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 2485
    const-string v0, "ImsManager"

    invoke-static {v0, p0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2486
    return-void
.end method

.method private makeACopy(Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;
    .locals 2
    .param p1, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2321
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2322
    .local v0, "p":Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/telephony/ims/ImsReasonInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2323
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2324
    sget-object v1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsReasonInfo;

    .line 2325
    .local v1, "clonedReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2326
    return-object v1
.end method

.method public static setEnhanced4gLteModeSetting(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .line 549
    nop

    .line 550
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 549
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 551
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 552
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsManager;->setEnhanced4gLteModeSetting(Z)V

    .line 554
    :cond_0
    const-string v1, "setEnhanced4gLteModeSetting: ImsManager null, value not set."

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 555
    return-void
.end method

.method private setProvisionedBool(Lcom/android/ims/ImsConfig;II)V
    .locals 4
    .param p1, "config"    # Lcom/android/ims/ImsConfig;
    .param p2, "item"    # I
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1398
    invoke-virtual {p1, p2, p3}, Lcom/android/ims/ImsConfig;->setConfig(II)I

    move-result v0

    .line 1399
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 1403
    return-void

    .line 1400
    :cond_0
    new-instance v1, Lcom/android/ims/ImsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setProvisionedBool failed with error for item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x67

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method private setProvisionedBoolNoException(II)Z
    .locals 3
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 1426
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v0

    .line 1427
    .local v0, "config":Lcom/android/ims/ImsConfig;
    invoke-direct {p0, v0, p1, p2}, Lcom/android/ims/ImsManager;->setProvisionedBool(Lcom/android/ims/ImsConfig;II)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1432
    .end local v0    # "config":Lcom/android/ims/ImsConfig;
    nop

    .line 1433
    const/4 v0, 0x1

    return v0

    .line 1428
    :catch_0
    move-exception v0

    .line 1429
    .local v0, "ex":Lcom/android/ims/ImsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProvisionedBoolNoException: operation failed for item="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1430
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1429
    const-string v2, "ImsManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    const/4 v1, 0x0

    return v1
.end method

.method private setRttConfig(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 2213
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 2214
    :cond_0
    const/4 v0, 0x0

    :goto_0
    nop

    .line 2215
    .local v0, "value":I
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mExecutorFactory:Lcom/android/ims/ImsManager$ExecutorFactory;

    new-instance v2, Lcom/android/ims/-$$Lambda$ImsManager$_6YCQyhjHBSdrm4ZBEMUQ2AAqOY;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/ims/-$$Lambda$ImsManager$_6YCQyhjHBSdrm4ZBEMUQ2AAqOY;-><init>(Lcom/android/ims/ImsManager;ZI)V

    invoke-interface {v1, v2}, Lcom/android/ims/ImsManager$ExecutorFactory;->executeRunnable(Ljava/lang/Runnable;)V

    .line 2225
    return-void
.end method

.method public static setVtSetting(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .line 852
    nop

    .line 853
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 852
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 854
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 855
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsManager;->setVtSetting(Z)V

    .line 857
    :cond_0
    const-string v1, "setVtSetting: ImsManager null, can not set value."

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 858
    return-void
.end method

.method public static setWfcMode(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wfcMode"    # I

    .line 1074
    nop

    .line 1075
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 1074
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 1076
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 1077
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsManager;->setWfcMode(I)V

    .line 1079
    :cond_0
    const-string v1, "setWfcMode: ImsManager null, can not set value."

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1080
    return-void
.end method

.method public static setWfcMode(Landroid/content/Context;IZ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wfcMode"    # I
    .param p2, "roaming"    # Z

    .line 1170
    nop

    .line 1171
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 1170
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 1172
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 1173
    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsManager;->setWfcMode(IZ)V

    .line 1175
    :cond_0
    const-string v1, "setWfcMode: ImsManager null, can not set value."

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1176
    return-void
.end method

.method public static setWfcRoamingSetting(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .line 1271
    nop

    .line 1272
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 1271
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 1273
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 1274
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsManager;->setWfcRoamingSetting(Z)V

    .line 1276
    :cond_0
    const-string v1, "setWfcRoamingSetting: ImsManager null, value not set."

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1277
    return-void
.end method

.method public static setWfcSetting(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .line 976
    nop

    .line 977
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 976
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 978
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 979
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsManager;->setWfcSetting(Z)V

    .line 981
    :cond_0
    const-string v1, "setWfcSetting: ImsManager null, can not set value."

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 982
    return-void
.end method

.method public static updateImsServiceConfig(Landroid/content/Context;IZ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "force"    # Z

    .line 1447
    invoke-static {p0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 1448
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 1449
    invoke-virtual {v0, p2}, Lcom/android/ims/ImsManager;->updateImsServiceConfig(Z)V

    .line 1451
    :cond_0
    const-string v1, "updateImsServiceConfig: ImsManager null, returning without update."

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1452
    return-void
.end method

.method private updateUtFeatureValue(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V
    .locals 9
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;

    .line 1605
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isSuppServicesOverUtEnabledByPlatform()Z

    move-result v0

    .line 1606
    .local v0, "isCarrierSupported":Z
    const-string v1, "carrier_ut_provisioning_required_bool"

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v1

    .line 1609
    .local v1, "requiresProvisioning":Z
    const/4 v2, 0x1

    .line 1610
    .local v2, "isProvisioned":Z
    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 1611
    nop

    .line 1612
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 1611
    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    .line 1616
    .local v5, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v5, :cond_0

    .line 1617
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v6

    invoke-interface {v5, v6, v3, v4}, Lcom/android/internal/telephony/ITelephony;->isMmTelCapabilityProvisionedInCache(III)Z

    move-result v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v6

    goto :goto_0

    .line 1621
    :catch_0
    move-exception v6

    .line 1622
    .local v6, "e":Landroid/os/RemoteException;
    const-string v7, "ImsManager"

    const-string v8, "updateUtFeatureValue: couldn\'t reach telephony! returning provisioned"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    .line 1625
    .end local v5    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v4

    .line 1627
    .local v5, "isFeatureOn":Z
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateUtFeatureValue: available = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isProvisioned = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", enabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1631
    if-eqz v5, :cond_2

    .line 1632
    invoke-virtual {p1, v3, v4}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    goto :goto_2

    .line 1636
    :cond_2
    invoke-virtual {p1, v3, v4}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 1640
    :goto_2
    return-void
.end method

.method private updateVolteFeatureValue(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V
    .locals 8
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;

    .line 1518
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform()Z

    move-result v0

    .line 1519
    .local v0, "available":Z
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v1

    .line 1520
    .local v1, "enabled":Z
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result v2

    .line 1521
    .local v2, "isNonTty":Z
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    .line 1523
    .local v5, "isFeatureOn":Z
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateVolteFeatureValue: available = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", enabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", nonTTY = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1527
    if-eqz v5, :cond_1

    .line 1528
    invoke-virtual {p1, v3, v4}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    goto :goto_1

    .line 1532
    :cond_1
    invoke-virtual {p1, v3, v4}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 1536
    :goto_1
    return-void
.end method


# virtual methods
.method public acknowledgeSms(III)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2621
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/MmTelFeatureConnection;->acknowledgeSms(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2625
    nop

    .line 2626
    return-void

    .line 2622
    :catch_0
    move-exception v0

    .line 2623
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "acknowledgeSms()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public acknowledgeSmsReport(III)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2630
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/MmTelFeatureConnection;->acknowledgeSmsReport(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2634
    nop

    .line 2635
    return-void

    .line 2631
    :catch_0
    move-exception v0

    .line 2632
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "acknowledgeSmsReport()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public addCapabilitiesCallback(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1868
    if-eqz p1, :cond_0

    .line 1872
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 1874
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 1875
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;->getBinder()Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/MmTelFeatureConnection;->addCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 1876
    const-string v0, "Capability Callback registered."

    invoke-static {v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1881
    nop

    .line 1882
    return-void

    .line 1878
    :catch_0
    move-exception v0

    .line 1879
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "addCapabilitiesCallback(IF)"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    .line 1869
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "capabilities callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addCapabilitiesCallbackForSubscription(Landroid/telephony/ims/aidl/IImsCapabilityCallback;I)V
    .locals 2
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1908
    if-eqz p1, :cond_0

    .line 1912
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection;->addCapabilityCallbackForSubscription(Landroid/telephony/ims/aidl/IImsCapabilityCallback;I)V

    .line 1913
    const-string v0, "Capability Callback registered for subscription."

    invoke-static {v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1914
    return-void

    .line 1909
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "registration callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addNotifyStatusChangedCallbackIfAvailable(Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;)V
    .locals 3
    .param p1, "c"    # Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1703
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1707
    if-eqz p1, :cond_0

    .line 1708
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mStatusCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1710
    :cond_0
    return-void

    .line 1704
    :cond_1
    new-instance v0, Lcom/android/ims/ImsException;

    const/16 v1, 0x6a

    const-string v2, "Binder is not active!"

    invoke-direct {v0, v2, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public addProvisioningCallbackForSubscription(Landroid/telephony/ims/aidl/IImsConfigCallback;I)V
    .locals 2
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsConfigCallback;
    .param p2, "subId"    # I

    .line 1958
    if-eqz p1, :cond_0

    .line 1962
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection;->addProvisioningCallbackForSubscription(Landroid/telephony/ims/aidl/IImsConfigCallback;I)V

    .line 1963
    const-string v0, "Capability Callback registered for subscription."

    invoke-static {v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1964
    return-void

    .line 1959
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provisioning callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addRegistrationCallback(Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1798
    if-eqz p1, :cond_0

    .line 1803
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 1804
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;->getBinder()Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/MmTelFeatureConnection;->addRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 1805
    const-string v0, "Registration Callback registered."

    invoke-static {v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1810
    nop

    .line 1811
    return-void

    .line 1807
    :catch_0
    move-exception v0

    .line 1808
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "addRegistrationCallback(IRIB)"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    .line 1799
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "registration callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addRegistrationCallbackForSubscription(Landroid/telephony/ims/aidl/IImsRegistrationCallback;I)V
    .locals 2
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1838
    if-eqz p1, :cond_0

    .line 1841
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection;->addRegistrationCallbackForSubscription(Landroid/telephony/ims/aidl/IImsRegistrationCallback;I)V

    .line 1842
    const-string v0, "Registration Callback registered."

    invoke-static {v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1844
    return-void

    .line 1839
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "registration callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addRegistrationListener(ILcom/android/ims/ImsConnectionStateListener;)V
    .locals 0
    .param p1, "serviceClass"    # I
    .param p2, "listener"    # Lcom/android/ims/ImsConnectionStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1761
    invoke-virtual {p0, p2}, Lcom/android/ims/ImsManager;->addRegistrationListener(Lcom/android/ims/ImsConnectionStateListener;)V

    .line 1762
    return-void
.end method

.method public addRegistrationListener(Lcom/android/ims/ImsConnectionStateListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/ims/ImsConnectionStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1774
    if-eqz p1, :cond_0

    .line 1777
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsManager;->addRegistrationCallback(Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;)V

    .line 1779
    new-instance v0, Lcom/android/ims/ImsManager$1;

    invoke-direct {v0, p0, p1}, Lcom/android/ims/ImsManager$1;-><init>(Lcom/android/ims/ImsManager;Lcom/android/ims/ImsConnectionStateListener;)V

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->addCapabilitiesCallback(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;)V

    .line 1786
    const-string v0, "Registration Callback registered."

    invoke-static {v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1787
    return-void

    .line 1775
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public changeMmTelCapability(IIZ)V
    .locals 1
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .param p3, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2161
    new-instance v0, Landroid/telephony/ims/feature/CapabilityChangeRequest;

    invoke-direct {v0}, Landroid/telephony/ims/feature/CapabilityChangeRequest;-><init>()V

    .line 2162
    .local v0, "request":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    if-eqz p3, :cond_0

    .line 2163
    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    goto :goto_0

    .line 2165
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 2167
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->changeMmTelCapability(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V

    .line 2168
    return-void
.end method

.method public changeMmTelCapability(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V
    .locals 7
    .param p1, "r"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2174
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 2176
    :try_start_0
    const-string v0, "ImsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeMmTelCapability: changing capabilities for sub: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/ims/MmTelFeatureConnection;->changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 2179
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mImsConfigListener:Lcom/android/ims/ImsConfigListener;

    if-nez v0, :cond_0

    .line 2180
    return-void

    .line 2182
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToEnable()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 2183
    .local v1, "enabledCaps":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    iget-object v3, p0, Lcom/android/ims/ImsManager;->mImsConfigListener:Lcom/android/ims/ImsConfigListener;

    invoke-virtual {v1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v4

    .line 2184
    invoke-virtual {v1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v5

    const/4 v6, 0x1

    .line 2183
    invoke-interface {v3, v4, v5, v6, v2}, Lcom/android/ims/ImsConfigListener;->onSetFeatureResponse(IIII)V

    .line 2186
    .end local v1    # "enabledCaps":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    goto :goto_0

    .line 2188
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToDisable()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 2189
    .local v1, "disabledCaps":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    iget-object v3, p0, Lcom/android/ims/ImsManager;->mImsConfigListener:Lcom/android/ims/ImsConfigListener;

    invoke-virtual {v1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v4

    .line 2190
    invoke-virtual {v1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v5

    const/4 v6, 0x0

    .line 2189
    invoke-interface {v3, v4, v5, v6, v2}, Lcom/android/ims/ImsConfigListener;->onSetFeatureResponse(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2192
    .end local v1    # "disabledCaps":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    goto :goto_1

    .line 2197
    :cond_2
    nop

    .line 2198
    return-void

    .line 2193
    :catch_0
    move-exception v0

    .line 2194
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsManager;->changeMmTelCapabilityInternally(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V

    .line 2195
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "changeMmTelCapability(CCR)"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method protected changeMmTelCapabilityInternally(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V
    .locals 0
    .param p1, "r"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;

    .line 2171
    return-void
.end method

.method public close()V
    .locals 1

    .line 1994
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    if-eqz v0, :cond_0

    .line 1995
    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->closeConnection()V

    .line 1997
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mUt:Lcom/android/ims/ImsUt;

    .line 1998
    iput-object v0, p0, Lcom/android/ims/ImsManager;->mEcbm:Lcom/android/ims/ImsEcbm;

    .line 1999
    iput-object v0, p0, Lcom/android/ims/ImsManager;->mMultiEndpoint:Lcom/android/ims/ImsMultiEndpoint;

    .line 2000
    return-void
.end method

.method public connectIfServiceIsAvailable()V
    .locals 1

    .line 1686
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1687
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->createImsService()V

    .line 1689
    :cond_1
    return-void
.end method

.method public createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;
    .locals 4
    .param p1, "serviceType"    # I
    .param p2, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2051
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 2054
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection;->createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2055
    :catch_0
    move-exception v0

    .line 2056
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "createCallProfile()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method protected createCallSession(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallSession;
    .locals 4
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2467
    :try_start_0
    new-instance v0, Landroid/telephony/ims/ImsCallSession;

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v1, p1}, Lcom/android/ims/MmTelFeatureConnection;->createCallSession(Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/telephony/ims/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2468
    :catch_0
    move-exception v0

    .line 2469
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CreateCallSession: Error, remote exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsManager"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "createCallSession()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method protected createImsService()V
    .locals 2

    .line 2440
    const-string v0, "ImsManager"

    const-string v1, "Creating ImsService"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2441
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/android/ims/MmTelFeatureConnection;->create(Landroid/content/Context;I)Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    .line 2444
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    new-instance v1, Lcom/android/ims/ImsManager$3;

    invoke-direct {v1, p0}, Lcom/android/ims/ImsManager$3;-><init>(Lcom/android/ims/ImsManager;)V

    invoke-virtual {v0, v1}, Lcom/android/ims/MmTelFeatureConnection;->setStatusCallback(Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;)V

    .line 2455
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2825
    const-string v0, "ImsManager:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  device supports IMS = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/ims/ImsManager;->isImsSupportedOnDevice(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPhoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mConfigUpdated = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/ims/ImsManager;->mConfigUpdated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mImsServiceProxy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDataEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isDataEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  ignoreDataEnabledChanged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ignore_data_enabled_changed_for_video_calls"

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isGbaValid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isGbaValid()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isImsTurnOffAllowed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isImsTurnOffAllowed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isNonTtyOrTtyOnVolteEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isVolteEnabledByPlatform = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isVolteProvisionedOnDevice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVolteProvisionedOnDevice()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isEnhanced4gLteModeSettingEnabledByUser = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2841
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2840
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isVtEnabledByPlatform = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVtEnabledByPlatform()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isVtEnabledByUser = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVtEnabledByUser()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isWfcEnabledByPlatform = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isWfcEnabledByUser = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  getWfcMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getWfcMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isWfcRoamingEnabledByUser = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcRoamingEnabledByUser()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isVtProvisionedOnDevice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVtProvisionedOnDevice()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isWfcProvisionedOnDevice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcProvisionedOnDevice()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2852
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2853
    return-void
.end method

.method public factoryReset()V
    .locals 4

    .line 2736
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    .line 2737
    .local v0, "subId":I
    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->isSubIdValid(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 2739
    nop

    .line 2741
    const-string v1, "enhanced_4g_lte_on_by_default_bool"

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lcom/android/ims/ImsManager;->booleanToPropertyString(Z)Ljava/lang/String;

    move-result-object v1

    .line 2739
    const-string v3, "volte_vt_enabled"

    invoke-static {v0, v3, v1}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 2745
    nop

    .line 2747
    const-string v1, "carrier_default_wfc_ims_enabled_bool"

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lcom/android/ims/ImsManager;->booleanToPropertyString(Z)Ljava/lang/String;

    move-result-object v1

    .line 2745
    const-string v3, "wfc_ims_enabled"

    invoke-static {v0, v3, v1}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 2751
    nop

    .line 2753
    const-string v1, "carrier_default_wfc_ims_mode_int"

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsManager;->getIntCarrierConfig(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 2751
    const-string v3, "wfc_ims_mode"

    invoke-static {v0, v3, v1}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 2757
    nop

    .line 2759
    const-string v1, "carrier_default_wfc_ims_roaming_enabled_bool"

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lcom/android/ims/ImsManager;->booleanToPropertyString(Z)Ljava/lang/String;

    move-result-object v1

    .line 2757
    const-string v3, "wfc_ims_roaming_enabled"

    invoke-static {v0, v3, v1}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 2764
    nop

    .line 2765
    invoke-static {v2}, Lcom/android/ims/ImsManager;->booleanToPropertyString(Z)Ljava/lang/String;

    move-result-object v1

    .line 2764
    const-string v3, "vt_ims_enabled"

    invoke-static {v0, v3, v1}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2767
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "factoryReset: invalid sub id, can not reset siminfo db settings; subId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 2771
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/ims/ImsManager;->updateImsServiceConfig(Z)V

    .line 2772
    return-void
.end method

.method protected getBooleanCarrierConfig(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 2364
    const/4 v0, 0x0

    .line 2365
    .local v0, "b":Landroid/os/PersistableBundle;
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    if-eqz v1, :cond_0

    .line 2367
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 2369
    :cond_0
    if-eqz v0, :cond_1

    .line 2370
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 2373
    :cond_1
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public getConfigInterface()Lcom/android/ims/ImsConfig;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2146
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 2148
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->getConfigInterface()Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v0

    .line 2149
    .local v0, "config":Landroid/telephony/ims/aidl/IImsConfig;
    if-eqz v0, :cond_0

    .line 2153
    new-instance v1, Lcom/android/ims/ImsConfig;

    invoke-direct {v1, v0}, Lcom/android/ims/ImsConfig;-><init>(Landroid/telephony/ims/aidl/IImsConfig;)V

    return-object v1

    .line 2150
    :cond_0
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x83

    const-string v3, "getConfigInterface()"

    invoke-direct {v1, v3, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public getEcbmInterface()Lcom/android/ims/ImsEcbm;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2590
    const-string v0, "getEcbmInterface()"

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mEcbm:Lcom/android/ims/ImsEcbm;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/ims/ImsEcbm;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2591
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mEcbm:Lcom/android/ims/ImsEcbm;

    return-object v0

    .line 2594
    :cond_0
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 2596
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v1}, Lcom/android/ims/MmTelFeatureConnection;->getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;

    move-result-object v1

    .line 2598
    .local v1, "iEcbm":Lcom/android/ims/internal/IImsEcbm;
    if-eqz v1, :cond_1

    .line 2602
    new-instance v2, Lcom/android/ims/ImsEcbm;

    invoke-direct {v2, v1}, Lcom/android/ims/ImsEcbm;-><init>(Lcom/android/ims/internal/IImsEcbm;)V

    iput-object v2, p0, Lcom/android/ims/ImsManager;->mEcbm:Lcom/android/ims/ImsEcbm;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2606
    .end local v1    # "iEcbm":Lcom/android/ims/internal/IImsEcbm;
    nop

    .line 2607
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mEcbm:Lcom/android/ims/ImsEcbm;

    return-object v0

    .line 2599
    .restart local v1    # "iEcbm":Lcom/android/ims/internal/IImsEcbm;
    :cond_1
    :try_start_1
    new-instance v2, Lcom/android/ims/ImsException;

    const/16 v3, 0x385

    invoke-direct {v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsManager;
    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2603
    .end local v1    # "iEcbm":Lcom/android/ims/internal/IImsEcbm;
    .restart local p0    # "this":Lcom/android/ims/ImsManager;
    :catch_0
    move-exception v1

    .line 2604
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const/16 v3, 0x6a

    invoke-direct {v2, v0, v1, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public getImsServiceState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2346
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->getFeatureState()I

    move-result v0

    return v0
.end method

.method protected getIntCarrierConfig(Ljava/lang/String;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 2385
    const/4 v0, 0x0

    .line 2386
    .local v0, "b":Landroid/os/PersistableBundle;
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    if-eqz v1, :cond_0

    .line 2388
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 2390
    :cond_0
    if-eqz v0, :cond_1

    .line 2391
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 2394
    :cond_1
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getMultiEndpointInterface()Lcom/android/ims/ImsMultiEndpoint;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2693
    const-string v0, "getMultiEndpointInterface()"

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mMultiEndpoint:Lcom/android/ims/ImsMultiEndpoint;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/ims/ImsMultiEndpoint;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2694
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMultiEndpoint:Lcom/android/ims/ImsMultiEndpoint;

    return-object v0

    .line 2697
    :cond_0
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 2699
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v1}, Lcom/android/ims/MmTelFeatureConnection;->getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object v1

    .line 2701
    .local v1, "iImsMultiEndpoint":Lcom/android/ims/internal/IImsMultiEndpoint;
    if-eqz v1, :cond_1

    .line 2705
    new-instance v2, Lcom/android/ims/ImsMultiEndpoint;

    invoke-direct {v2, v1}, Lcom/android/ims/ImsMultiEndpoint;-><init>(Lcom/android/ims/internal/IImsMultiEndpoint;)V

    iput-object v2, p0, Lcom/android/ims/ImsManager;->mMultiEndpoint:Lcom/android/ims/ImsMultiEndpoint;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2709
    .end local v1    # "iImsMultiEndpoint":Lcom/android/ims/internal/IImsMultiEndpoint;
    nop

    .line 2711
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMultiEndpoint:Lcom/android/ims/ImsMultiEndpoint;

    return-object v0

    .line 2702
    .restart local v1    # "iImsMultiEndpoint":Lcom/android/ims/internal/IImsMultiEndpoint;
    :cond_1
    :try_start_1
    new-instance v2, Lcom/android/ims/ImsException;

    const/16 v3, 0x386

    invoke-direct {v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsManager;
    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2706
    .end local v1    # "iImsMultiEndpoint":Lcom/android/ims/internal/IImsMultiEndpoint;
    .restart local p0    # "this":Lcom/android/ims/ImsManager;
    :catch_0
    move-exception v1

    .line 2707
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const/16 v3, 0x6a

    invoke-direct {v2, v0, v1, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public getRecentImsDisconnectReasons()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/ims/ImsReasonInfo;",
            ">;"
        }
    .end annotation

    .line 2337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2339
    .local v0, "disconnectReasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/ims/ImsReasonInfo;>;"
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mRecentDisconnectReasons:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 2340
    .local v2, "reason":Landroid/telephony/ims/ImsReasonInfo;
    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->makeACopy(Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2341
    .end local v2    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_0

    .line 2342
    :cond_0
    return-object v0
.end method

.method public getRegistrationTech()I
    .locals 3

    .line 1982
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->getRegistrationTech()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1983
    :catch_0
    move-exception v0

    .line 1984
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsManager"

    const-string v2, "getRegistrationTech: no connection to ImsService."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    const/4 v1, -0x1

    return v1
.end method

.method public getSmsFormat()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2639
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->getSmsFormat()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2640
    :catch_0
    move-exception v0

    .line 2641
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "getSmsFormat()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method protected getSubId()I
    .locals 4

    .line 1215
    iget v0, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 1216
    .local v0, "subIds":[I
    const/4 v1, -0x1

    .line 1217
    .local v1, "subId":I
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 1218
    const/4 v2, 0x0

    aget v1, v0, v2

    .line 1220
    :cond_0
    return v1
.end method

.method public getSupplementaryServiceConfiguration()Lcom/android/ims/ImsUtInterface;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2010
    const-string v0, "getSupplementaryServiceConfiguration()"

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mUt:Lcom/android/ims/ImsUt;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/ims/ImsUt;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2011
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mUt:Lcom/android/ims/ImsUt;

    return-object v0

    .line 2014
    :cond_0
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 2016
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v1}, Lcom/android/ims/MmTelFeatureConnection;->getUtInterface()Lcom/android/ims/internal/IImsUt;

    move-result-object v1

    .line 2018
    .local v1, "iUt":Lcom/android/ims/internal/IImsUt;
    if-eqz v1, :cond_1

    .line 2023
    new-instance v2, Lcom/android/ims/ImsUt;

    invoke-direct {v2, v1}, Lcom/android/ims/ImsUt;-><init>(Lcom/android/ims/internal/IImsUt;)V

    iput-object v2, p0, Lcom/android/ims/ImsManager;->mUt:Lcom/android/ims/ImsUt;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2027
    .end local v1    # "iUt":Lcom/android/ims/internal/IImsUt;
    nop

    .line 2028
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mUt:Lcom/android/ims/ImsUt;

    return-object v0

    .line 2019
    .restart local v1    # "iUt":Lcom/android/ims/internal/IImsUt;
    :cond_1
    :try_start_1
    new-instance v2, Lcom/android/ims/ImsException;

    const/16 v3, 0x321

    invoke-direct {v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsManager;
    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2024
    .end local v1    # "iUt":Lcom/android/ims/internal/IImsUt;
    .restart local p0    # "this":Lcom/android/ims/ImsManager;
    :catch_0
    move-exception v1

    .line 2025
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const/16 v3, 0x6a

    invoke-direct {v2, v0, v1, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public getWfcMode()I
    .locals 1

    .line 1065
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v0

    return v0
.end method

.method public getWfcMode(Z)I
    .locals 3
    .param p1, "roaming"    # Z

    .line 1115
    if-nez p1, :cond_1

    .line 1118
    const-string v0, "editable_wfc_mode_bool"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "carrier_default_wfc_ims_mode_int"

    if-nez v0, :cond_0

    .line 1119
    invoke-virtual {p0, v1}, Lcom/android/ims/ImsManager;->getIntCarrierConfig(Ljava/lang/String;)I

    move-result v0

    .local v0, "setting":I
    goto :goto_0

    .line 1123
    .end local v0    # "setting":I
    :cond_0
    const-string v0, "wfc_ims_mode"

    invoke-direct {p0, v0, v1}, Lcom/android/ims/ImsManager;->getSettingFromSubscriptionManager(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1126
    .restart local v0    # "setting":I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWfcMode - setting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1128
    .end local v0    # "setting":I
    :cond_1
    const-string v0, "use_wfc_home_network_mode_in_roaming_network_bool"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1130
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v0

    .restart local v0    # "setting":I
    goto :goto_1

    .line 1131
    .end local v0    # "setting":I
    :cond_2
    const-string v0, "editable_wfc_roaming_mode_bool"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "carrier_default_wfc_ims_roaming_mode_int"

    if-nez v0, :cond_3

    .line 1133
    invoke-virtual {p0, v1}, Lcom/android/ims/ImsManager;->getIntCarrierConfig(Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "setting":I
    goto :goto_1

    .line 1136
    .end local v0    # "setting":I
    :cond_3
    const-string v0, "wfc_ims_roaming_mode"

    invoke-direct {p0, v0, v1}, Lcom/android/ims/ImsManager;->getSettingFromSubscriptionManager(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1140
    .restart local v0    # "setting":I
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWfcMode (roaming) - setting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1142
    :goto_2
    return v0
.end method

.method protected isDataEnabled()Z
    .locals 3

    .line 2796
    new-instance v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result v0

    return v0
.end method

.method public isDynamicBinding()Z
    .locals 1

    .line 1661
    iget-boolean v0, p0, Lcom/android/ims/ImsManager;->mConfigDynamicBind:Z

    return v0
.end method

.method public isEnhanced4gLteModeSettingEnabledByUser()Z
    .locals 4

    .line 525
    nop

    .line 526
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    .line 525
    const/4 v2, -0x1

    const-string v3, "volte_vt_enabled"

    invoke-static {v0, v3, v2, v1}, Landroid/telephony/SubscriptionManager;->getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I

    move-result v0

    .line 528
    .local v0, "setting":I
    const-string v1, "enhanced_4g_lte_on_by_default_bool"

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v1

    .line 533
    .local v1, "onByDefault":Z
    const-string v3, "editable_enhanced_4g_lte_bool"

    invoke-virtual {p0, v3}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 534
    const-string v3, "hide_enhanced_4g_lte_bool"

    invoke-virtual {p0, v3}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 538
    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 536
    :cond_2
    :goto_1
    return v1
.end method

.method protected isGbaValid()Z
    .locals 5

    .line 1364
    const-string v0, "carrier_ims_gba_required_bool"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1366
    new-instance v0, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    .line 1367
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getIsimIst()Ljava/lang/String;

    move-result-object v2

    .line 1368
    .local v2, "efIst":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 1369
    const-string v3, "isGbaValid - ISF is NULL"

    invoke-static {v3}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1370
    return v1

    .line 1372
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_1

    .line 1373
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1374
    .local v1, "result":Z
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isGbaValid - GBA capable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", ISF="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1375
    return v1

    .line 1377
    .end local v0    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v1    # "result":Z
    .end local v2    # "efIst":Ljava/lang/String;
    :cond_2
    return v1
.end method

.method public isNonTtyOrTtyOnVolteEnabled()Z
    .locals 4

    .line 627
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isTtyOnVoLteCapable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 628
    return v1

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    const-string v2, "telecom"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 632
    .local v0, "tm":Landroid/telecom/TelecomManager;
    if-nez v0, :cond_1

    .line 633
    const-string v2, "ImsManager"

    const-string v3, "isNonTtyOrTtyOnVolteEnabled: telecom not available"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    return v1

    .line 636
    :cond_1
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCurrentTtyMode()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isServiceAvailable()Z
    .locals 1

    .line 1669
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->connectIfServiceIsAvailable()V

    .line 1671
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->isBinderAlive()Z

    move-result v0

    return v0
.end method

.method public isServiceReady()Z
    .locals 1

    .line 1678
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->connectIfServiceIsAvailable()V

    .line 1679
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->isBinderReady()Z

    move-result v0

    return v0
.end method

.method protected isSubIdValid(I)Z
    .locals 1
    .param p1, "subId"    # I

    .line 2862
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSuppServicesOverUtEnabledByPlatform()Z
    .locals 4

    .line 1345
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1347
    .local v0, "manager":Landroid/telephony/TelephonyManager;
    iget v1, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    .line 1348
    .local v1, "cardState":I
    const/4 v2, 0x0

    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    .line 1350
    return v2

    .line 1352
    :cond_0
    const-string v3, "carrier_supports_ss_over_ut_bool"

    invoke-virtual {p0, v3}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1353
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isGbaValid()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1352
    :goto_0
    return v2
.end method

.method public isTtyOnVoLteCapable()Z
    .locals 1

    .line 640
    const-string v0, "carrier_volte_tty_supported_bool"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isTurnOffImsAllowedByPlatform()Z
    .locals 4

    .line 925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.dbg.allow_ims_off"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    .line 926
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 925
    const/4 v2, -0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    .line 927
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 932
    :cond_0
    const-string v0, "carrier_allow_turnoff_ims_bool"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 929
    :cond_1
    :goto_0
    return v3
.end method

.method public isVolteEnabledByPlatform()Z
    .locals 4

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.dbg.volte_avail_ovr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    .line 666
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 665
    const/4 v2, -0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    .line 668
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_1

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 675
    const-string v0, "carrier_volte_available_bool"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 676
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isGbaValid()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 673
    :goto_0
    return v3

    .line 670
    :cond_2
    :goto_1
    return v3
.end method

.method public isVolteProvisionedOnDevice()Z
    .locals 1

    .line 699
    const-string v0, "carrier_volte_provisioning_required_bool"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isVolteProvisioned()Z

    move-result v0

    return v0

    .line 704
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isVtEnabledByPlatform()Z
    .locals 4

    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.dbg.vt_avail_ovr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    .line 805
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 804
    const/4 v2, -0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    .line 806
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_1

    .line 811
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 813
    const-string v0, "carrier_vt_available_bool"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 814
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isGbaValid()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 811
    :goto_0
    return v3

    .line 808
    :cond_2
    :goto_1
    return v3
.end method

.method public isVtEnabledByUser()Z
    .locals 4

    .line 837
    nop

    .line 838
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    .line 837
    const/4 v2, -0x1

    const-string v3, "vt_ims_enabled"

    invoke-static {v0, v3, v2, v1}, Landroid/telephony/SubscriptionManager;->getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I

    move-result v0

    .line 842
    .local v0, "setting":I
    const/4 v1, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isVtProvisionedOnDevice()Z
    .locals 1

    .line 768
    const-string v0, "carrier_volte_provisioning_required_bool"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isVtProvisioned()Z

    move-result v0

    return v0

    .line 773
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isWfcEnabledByPlatform()Z
    .locals 4

    .line 1330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.dbg.wfc_avail_ovr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    .line 1331
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1330
    const/4 v2, -0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    .line 1332
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_1

    .line 1337
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1339
    const-string v0, "carrier_wfc_ims_available_bool"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1341
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isGbaValid()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 1337
    :goto_0
    return v3

    .line 1334
    :cond_2
    :goto_1
    return v3
.end method

.method public isWfcEnabledByUser()Z
    .locals 4

    .line 957
    nop

    .line 958
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    .line 957
    const/4 v2, -0x1

    const-string v3, "wfc_ims_enabled"

    invoke-static {v0, v3, v2, v1}, Landroid/telephony/SubscriptionManager;->getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I

    move-result v0

    .line 962
    .local v0, "setting":I
    if-ne v0, v2, :cond_0

    .line 963
    const-string v1, "carrier_default_wfc_ims_enabled_bool"

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 966
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isWfcProvisionedOnDevice()Z
    .locals 1

    .line 733
    const-string v0, "carrier_volte_override_wfc_provisioning_bool"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVolteProvisionedOnDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 736
    const/4 v0, 0x0

    return v0

    .line 740
    :cond_0
    const-string v0, "carrier_volte_provisioning_required_bool"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 742
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isWfcProvisioned()Z

    move-result v0

    return v0

    .line 745
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isWfcRoamingEnabledByUser()Z
    .locals 4

    .line 1256
    nop

    .line 1257
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    .line 1256
    const/4 v2, -0x1

    const-string v3, "wfc_ims_roaming_enabled"

    invoke-static {v0, v3, v2, v1}, Landroid/telephony/SubscriptionManager;->getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I

    move-result v0

    .line 1259
    .local v0, "setting":I
    if-ne v0, v2, :cond_0

    .line 1260
    const-string v1, "carrier_default_wfc_ims_roaming_enabled_bool"

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 1263
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public synthetic lambda$setRttConfig$4$ImsManager(ZI)V
    .locals 4
    .param p1, "enabled"    # Z
    .param p2, "value"    # I

    .line 2217
    :try_start_0
    const-class v0, Lcom/android/ims/ImsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting RTT enabled to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v0

    const/16 v1, 0x42

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/ImsConfig;->setProvisionedValue(II)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2223
    goto :goto_0

    .line 2220
    :catch_0
    move-exception v0

    .line 2221
    .local v0, "e":Lcom/android/ims/ImsException;
    const-class v1, Lcom/android/ims/ImsManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to set RTT value enabled to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :goto_0
    return-void
.end method

.method public synthetic lambda$setWfcModeInternal$1$ImsManager(I)V
    .locals 2
    .param p1, "value"    # I

    .line 1227
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-virtual {v0, v1, p1}, Lcom/android/ims/ImsConfig;->setConfig(II)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1231
    goto :goto_0

    .line 1229
    :catch_0
    move-exception v0

    .line 1232
    :goto_0
    return-void
.end method

.method public synthetic lambda$setWfcRoamingSettingInternal$2$ImsManager(I)V
    .locals 2
    .param p1, "value"    # I

    .line 1296
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-virtual {v0, v1, p1}, Lcom/android/ims/ImsConfig;->setConfig(II)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1300
    goto :goto_0

    .line 1298
    :catch_0
    move-exception v0

    .line 1301
    :goto_0
    return-void
.end method

.method public makeCall(Landroid/telephony/ims/ImsCallProfile;[Ljava/lang/String;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;
    .locals 4
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "callees"    # [Ljava/lang/String;
    .param p3, "listener"    # Lcom/android/ims/ImsCall$Listener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeCall :: profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 2077
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 2079
    new-instance v0, Lcom/android/ims/ImsCall;

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/ims/ImsCall;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;)V

    .line 2081
    .local v0, "call":Lcom/android/ims/ImsCall;
    invoke-virtual {v0, p3}, Lcom/android/ims/ImsCall;->setListener(Lcom/android/ims/ImsCall$Listener;)V

    .line 2082
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsManager;->createCallSession(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallSession;

    move-result-object v1

    .line 2084
    .local v1, "session":Landroid/telephony/ims/ImsCallSession;
    if-eqz p2, :cond_0

    array-length v2, p2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2085
    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/ims/ImsCall;->start(Landroid/telephony/ims/ImsCallSession;Ljava/lang/String;)V

    goto :goto_0

    .line 2087
    :cond_0
    invoke-virtual {v0, v1, p2}, Lcom/android/ims/ImsCall;->start(Landroid/telephony/ims/ImsCallSession;[Ljava/lang/String;)V

    .line 2090
    :goto_0
    return-object v0
.end method

.method public onSmsReady()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2657
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->onSmsReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2661
    nop

    .line 2662
    return-void

    .line 2658
    :catch_0
    move-exception v0

    .line 2659
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "onSmsReady()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public open(Landroid/telephony/ims/feature/MmTelFeature$Listener;)V
    .locals 4
    .param p1, "listener"    # Landroid/telephony/ims/feature/MmTelFeature$Listener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1735
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 1737
    if-eqz p1, :cond_0

    .line 1742
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection;->openConnection(Landroid/telephony/ims/feature/MmTelFeature$Listener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1745
    nop

    .line 1746
    return-void

    .line 1743
    :catch_0
    move-exception v0

    .line 1744
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "open()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    .line 1738
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public queryMmTelCapability(II)Z
    .locals 5
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2230
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 2232
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    .line 2235
    .local v0, "result":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Boolean;>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    new-instance v2, Lcom/android/ims/ImsManager$2;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/ims/ImsManager$2;-><init>(Lcom/android/ims/ImsManager;IILjava/util/concurrent/BlockingQueue;)V

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/ims/MmTelFeatureConnection;->queryEnabledCapabilities(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2259
    nop

    .line 2262
    const-wide/16 v1, 0xbb8

    :try_start_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    .line 2263
    :catch_0
    move-exception v1

    .line 2264
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "ImsManager"

    const-string v3, "queryMmTelCapability: interrupted while waiting for response"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    .end local v1    # "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    return v1

    .line 2256
    :catch_1
    move-exception v1

    .line 2257
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const/16 v3, 0x6a

    const-string v4, "queryMmTelCapability()"

    invoke-direct {v2, v4, v1, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public removeCapabilitiesCallback(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1890
    if-eqz p1, :cond_0

    .line 1894
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 1895
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;->getBinder()Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/MmTelFeatureConnection;->removeCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 1896
    return-void

    .line 1891
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "capabilities callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeCapabilitiesCallbackForSubscription(Landroid/telephony/ims/aidl/IImsCapabilityCallback;I)V
    .locals 2
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .param p2, "subId"    # I

    .line 1922
    if-eqz p1, :cond_0

    .line 1926
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection;->removeCapabilityCallbackForSubscription(Landroid/telephony/ims/aidl/IImsCapabilityCallback;I)V

    .line 1927
    return-void

    .line 1923
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "capabilities callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method removeNotifyStatusChangedCallback(Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;)V
    .locals 2
    .param p1, "c"    # Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;

    .line 1713
    if-eqz p1, :cond_0

    .line 1714
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mStatusCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1716
    :cond_0
    const-string v0, "ImsManager"

    const-string v1, "removeNotifyStatusChangedCallback: callback is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    :goto_0
    return-void
.end method

.method public removeProvisioningCallbackForSubscription(Landroid/telephony/ims/aidl/IImsConfigCallback;I)V
    .locals 2
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsConfigCallback;
    .param p2, "subId"    # I

    .line 1973
    if-eqz p1, :cond_0

    .line 1977
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection;->removeProvisioningCallbackForSubscription(Landroid/telephony/ims/aidl/IImsConfigCallback;I)V

    .line 1978
    return-void

    .line 1974
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provisioning callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeRegistrationCallbackForSubscription(Landroid/telephony/ims/aidl/IImsRegistrationCallback;I)V
    .locals 2
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .param p2, "subId"    # I

    .line 1852
    if-eqz p1, :cond_0

    .line 1856
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection;->removeRegistrationCallbackForSubscription(Landroid/telephony/ims/aidl/IImsRegistrationCallback;I)V

    .line 1857
    return-void

    .line 1853
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "registration callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeRegistrationListener(Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    .line 1819
    if-eqz p1, :cond_0

    .line 1823
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;->getBinder()Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/MmTelFeatureConnection;->removeRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 1824
    const-string v0, "Registration callback removed."

    invoke-static {v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1825
    return-void

    .line 1820
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "registration callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeRegistrationListener(Lcom/android/ims/ImsConnectionStateListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/ims/ImsConnectionStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1939
    if-eqz p1, :cond_0

    .line 1943
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 1944
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {p1}, Lcom/android/ims/ImsConnectionStateListener;->getBinder()Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/MmTelFeatureConnection;->removeRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 1945
    const-string v0, "Registration Callback/Listener registered."

    invoke-static {v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1947
    return-void

    .line 1940
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 7
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "smsc"    # Ljava/lang/String;
    .param p5, "isRetry"    # Z
    .param p6, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2613
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/ims/MmTelFeatureConnection;->sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2616
    nop

    .line 2617
    return-void

    .line 2614
    :catch_0
    move-exception v0

    .line 2615
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "sendSms()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method protected setAdvanced4GMode(Z)V
    .locals 1
    .param p1, "turnOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2546
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 2551
    if-eqz p1, :cond_0

    .line 2552
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsManager;->setLteFeatureValues(Z)V

    .line 2553
    const-string v0, "setAdvanced4GMode: turnOnIms"

    invoke-static {v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 2554
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->turnOnIms()V

    goto :goto_0

    .line 2556
    :cond_0
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isImsTurnOffAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2557
    const-string v0, "setAdvanced4GMode: turnOffIms"

    invoke-static {v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 2558
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->turnOffIms()V

    .line 2560
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsManager;->setLteFeatureValues(Z)V

    .line 2562
    :goto_0
    return-void
.end method

.method public setConfigListener(Lcom/android/ims/ImsConfigListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/ims/ImsConfigListener;

    .line 1692
    iput-object p1, p0, Lcom/android/ims/ImsManager;->mImsConfigListener:Lcom/android/ims/ImsConfigListener;

    .line 1693
    return-void
.end method

.method public setEnhanced4gLteModeSetting(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 565
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVolteProvisionedOnDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 566
    const-string v0, "setEnhanced4gLteModeSetting: Not possible to enable VoLTE due to provisioning."

    invoke-static {v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 567
    return-void

    .line 569
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    .line 571
    .local v0, "subId":I
    const-string v1, "editable_enhanced_4g_lte_bool"

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 572
    const-string v1, "hide_enhanced_4g_lte_bool"

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 573
    :cond_1
    const-string v1, "enhanced_4g_lte_on_by_default_bool"

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result p1

    .line 577
    :cond_2
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    const-string v3, "volte_vt_enabled"

    invoke-static {v0, v3, v1, v2}, Landroid/telephony/SubscriptionManager;->getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I

    move-result v1

    .line 581
    .local v1, "prevSetting":I
    if-eqz p1, :cond_3

    .line 582
    const/4 v2, 0x1

    goto :goto_0

    .line 583
    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->shouldForceUpdated()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 584
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->isSubIdValid(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 585
    nop

    .line 587
    invoke-static {p1}, Lcom/android/ims/ImsManager;->booleanToPropertyString(Z)Ljava/lang/String;

    move-result-object v2

    .line 585
    invoke-static {v0, v3, v2}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 589
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEnhanced4gLteModeSetting: invalid sub id, can not set property in  siminfo db; subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 592
    :goto_1
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 594
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsManager;->setAdvanced4GMode(Z)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    goto :goto_2

    .line 595
    :catch_0
    move-exception v2

    .line 600
    :cond_6
    :goto_2
    return-void
.end method

.method protected setLteFeatureValues(Z)V
    .locals 5
    .param p1, "turnOn"    # Z

    .line 2508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLteFeatureValues: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 2509
    new-instance v0, Landroid/telephony/ims/feature/CapabilityChangeRequest;

    invoke-direct {v0}, Landroid/telephony/ims/feature/CapabilityChangeRequest;-><init>()V

    .line 2510
    .local v0, "request":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 2511
    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    goto :goto_0

    .line 2515
    :cond_0
    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 2520
    :goto_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVtEnabledByPlatform()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2521
    const-string v3, "ignore_data_enabled_changed_for_video_calls"

    invoke-virtual {p0, v3}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v3

    .line 2523
    .local v3, "ignoreDataEnabledChanged":Z
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVtEnabledByUser()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v3, :cond_1

    .line 2524
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isDataEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    move v1, v2

    .line 2525
    .local v1, "enableViLte":Z
    :goto_1
    const/4 v4, 0x2

    if-eqz v1, :cond_3

    .line 2526
    invoke-virtual {v0, v4, v2}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    goto :goto_2

    .line 2530
    :cond_3
    invoke-virtual {v0, v4, v2}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 2536
    .end local v1    # "enableViLte":Z
    .end local v3    # "ignoreDataEnabledChanged":Z
    :cond_4
    :goto_2
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/ims/MmTelFeatureConnection;->changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2539
    goto :goto_3

    .line 2537
    :catch_0
    move-exception v1

    .line 2538
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLteFeatureValues: Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsManager"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2540
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_3
    return-void
.end method

.method public setRttEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 2271
    if-eqz p1, :cond_0

    .line 2272
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsManager;->setEnhanced4gLteModeSetting(Z)V

    goto :goto_2

    .line 2277
    :catch_0
    move-exception v0

    goto :goto_3

    .line 2274
    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->setAdvanced4GMode(Z)V

    .line 2276
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/ims/ImsManager;->setRttConfig(Z)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2280
    goto :goto_4

    .line 2278
    .local v0, "e":Lcom/android/ims/ImsException;
    :goto_3
    const-class v1, Lcom/android/ims/ImsManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to set RTT enabled to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2281
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :goto_4
    return-void
.end method

.method public setSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/telephony/ims/aidl/IImsSmsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2648
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection;->setSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2652
    nop

    .line 2653
    return-void

    .line 2649
    :catch_0
    move-exception v0

    .line 2650
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "setSmsListener()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public setTtyMode(I)V
    .locals 1
    .param p1, "ttyMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2287
    const-string v0, "carrier_volte_tty_supported_bool"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2289
    if-nez p1, :cond_0

    .line 2290
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2289
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->setAdvanced4GMode(Z)V

    .line 2292
    :cond_1
    return-void
.end method

.method public setUiTTYMode(Landroid/content/Context;ILandroid/os/Message;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uiTtyMode"    # I
    .param p3, "onComplete"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2310
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 2313
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p2, p3}, Lcom/android/ims/MmTelFeatureConnection;->setUiTTYMode(ILandroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2317
    nop

    .line 2318
    return-void

    .line 2314
    :catch_0
    move-exception v0

    .line 2315
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "setTTYMode()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public setVolteProvisioned(Z)V
    .locals 2
    .param p1, "isProvisioned"    # Z

    .line 2775
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 2776
    :cond_0
    const/4 v0, 0x0

    :goto_0
    nop

    .line 2777
    .local v0, "provisionStatus":I
    const/16 v1, 0xa

    invoke-direct {p0, v1, v0}, Lcom/android/ims/ImsManager;->setProvisionedBoolNoException(II)Z

    .line 2779
    return-void
.end method

.method public setVtProvisioned(Z)V
    .locals 2
    .param p1, "isProvisioned"    # Z

    .line 2789
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 2790
    :cond_0
    const/4 v0, 0x0

    :goto_0
    nop

    .line 2791
    .local v0, "provisionStatus":I
    const/16 v1, 0xb

    invoke-direct {p0, v1, v0}, Lcom/android/ims/ImsManager;->setProvisionedBoolNoException(II)Z

    .line 2793
    return-void
.end method

.method public setVtSetting(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 864
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVtProvisionedOnDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 865
    const-string v0, "setVtSetting: Not possible to enable Vt due to provisioning."

    invoke-static {v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 866
    return-void

    .line 869
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    .line 870
    .local v0, "subId":I
    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->isSubIdValid(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 871
    nop

    .line 872
    invoke-static {p1}, Lcom/android/ims/ImsManager;->booleanToPropertyString(Z)Ljava/lang/String;

    move-result-object v1

    .line 871
    const-string v2, "vt_ims_enabled"

    invoke-static {v0, v2, v1}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 874
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVtSetting: sub id invalid, skip modifying vt state in subinfo db; subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 879
    :goto_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/ims/ImsManager;->changeMmTelCapability(IIZ)V

    .line 882
    if-eqz p1, :cond_2

    .line 883
    const-string v1, "setVtSetting(b) : turnOnIms"

    invoke-static {v1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 884
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->turnOnIms()V

    goto :goto_1

    .line 885
    :cond_2
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isTurnOffImsAllowedByPlatform()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 886
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 887
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v1

    if-nez v1, :cond_4

    .line 888
    :cond_3
    const-string v1, "setVtSetting(b) : imsServiceAllowTurnOff -> turnOffIms"

    invoke-static {v1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 889
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->turnOffIms()V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 896
    :cond_4
    :goto_1
    goto :goto_2

    .line 891
    :catch_0
    move-exception v1

    .line 895
    .local v1, "e":Lcom/android/ims/ImsException;
    const-string v2, "setVtSetting(b): "

    invoke-static {v2, v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 897
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_2
    return-void
.end method

.method public setWfcMode(I)V
    .locals 1
    .param p1, "wfcMode"    # I

    .line 1087
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/ims/ImsManager;->setWfcMode(IZ)V

    .line 1088
    return-void
.end method

.method public setWfcMode(IZ)V
    .locals 3
    .param p1, "wfcMode"    # I
    .param p2, "roaming"    # Z

    .line 1184
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    .line 1185
    .local v0, "subId":I
    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->isSubIdValid(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1186
    if-nez p2, :cond_0

    .line 1187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWfcMode(i,b) - setting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1188
    nop

    .line 1189
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1188
    const-string v2, "wfc_ims_mode"

    invoke-static {v0, v2, v1}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1191
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWfcMode(i,b) (roaming) - setting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1192
    nop

    .line 1193
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1192
    const-string v2, "wfc_ims_roaming_mode"

    invoke-static {v0, v2, v1}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1196
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWfcMode(i,b): invalid sub id, skip setting setting in siminfo db; subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1200
    :goto_0
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    .line 1201
    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1205
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v2

    if-ne p2, v2, :cond_2

    .line 1206
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsManager;->setWfcModeInternal(I)V

    .line 1208
    :cond_2
    return-void
.end method

.method protected setWfcModeInternal(I)V
    .locals 3
    .param p1, "wfcMode"    # I

    .line 1224
    move v0, p1

    .line 1225
    .local v0, "value":I
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mExecutorFactory:Lcom/android/ims/ImsManager$ExecutorFactory;

    new-instance v2, Lcom/android/ims/-$$Lambda$ImsManager$LiW49wt0wLMYHjgtAwL8NLIATfs;

    invoke-direct {v2, p0, v0}, Lcom/android/ims/-$$Lambda$ImsManager$LiW49wt0wLMYHjgtAwL8NLIATfs;-><init>(Lcom/android/ims/ImsManager;I)V

    invoke-interface {v1, v2}, Lcom/android/ims/ImsManager$ExecutorFactory;->executeRunnable(Ljava/lang/Runnable;)V

    .line 1233
    return-void
.end method

.method public setWfcNonPersistent(ZI)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "wfcMode"    # I

    .line 1019
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move v1, p2

    goto :goto_0

    :cond_0
    move v1, v0

    .line 1022
    .local v1, "imsWfcModeFeatureValue":I
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0, v0, p1}, Lcom/android/ims/ImsManager;->changeMmTelCapability(IIZ)V

    .line 1026
    invoke-virtual {p0, v1}, Lcom/android/ims/ImsManager;->setWfcModeInternal(I)V

    .line 1029
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcRoamingEnabledByUser()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->setWfcRoamingSettingInternal(Z)V

    .line 1031
    if-eqz p1, :cond_2

    .line 1032
    const-string v0, "setWfcSetting() : turnOnIms"

    invoke-static {v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1033
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->turnOnIms()V

    goto :goto_2

    .line 1034
    :cond_2
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isTurnOffImsAllowedByPlatform()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1035
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1036
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1037
    :cond_3
    const-string v0, "setWfcSetting() : imsServiceAllowTurnOff -> turnOffIms"

    invoke-static {v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->turnOffIms()V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1042
    :cond_4
    :goto_2
    goto :goto_3

    .line 1040
    :catch_0
    move-exception v0

    .line 1041
    .local v0, "e":Lcom/android/ims/ImsException;
    const-string v2, "setWfcSetting(): "

    invoke-static {v2, v0}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1043
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :goto_3
    return-void
.end method

.method public setWfcProvisioned(Z)V
    .locals 2
    .param p1, "isProvisioned"    # Z

    .line 2782
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 2783
    :cond_0
    const/4 v0, 0x0

    :goto_0
    nop

    .line 2784
    .local v0, "provisionStatus":I
    const/16 v1, 0x1c

    invoke-direct {p0, v1, v0}, Lcom/android/ims/ImsManager;->setProvisionedBoolNoException(II)Z

    .line 2786
    return-void
.end method

.method public setWfcRoamingSetting(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 1283
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    .line 1284
    invoke-static {p1}, Lcom/android/ims/ImsManager;->booleanToPropertyString(Z)Ljava/lang/String;

    move-result-object v1

    .line 1283
    const-string v2, "wfc_ims_roaming_enabled"

    invoke-static {v0, v2, v1}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1287
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsManager;->setWfcRoamingSettingInternal(Z)V

    .line 1288
    return-void
.end method

.method protected setWfcRoamingSettingInternal(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 1291
    if-eqz p1, :cond_0

    .line 1292
    const/4 v0, 0x1

    goto :goto_0

    .line 1293
    :cond_0
    const/4 v0, 0x0

    :goto_0
    nop

    .line 1294
    .local v0, "value":I
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mExecutorFactory:Lcom/android/ims/ImsManager$ExecutorFactory;

    new-instance v2, Lcom/android/ims/-$$Lambda$ImsManager$D1JuJ3ba2jMHWDKlSpm03meBR1c;

    invoke-direct {v2, p0, v0}, Lcom/android/ims/-$$Lambda$ImsManager$D1JuJ3ba2jMHWDKlSpm03meBR1c;-><init>(Lcom/android/ims/ImsManager;I)V

    invoke-interface {v1, v2}, Lcom/android/ims/ImsManager$ExecutorFactory;->executeRunnable(Ljava/lang/Runnable;)V

    .line 1302
    return-void
.end method

.method public setWfcSetting(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 988
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcProvisionedOnDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 989
    const-string v0, "setWfcSetting: Not possible to enable WFC due to provisioning."

    invoke-static {v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 990
    return-void

    .line 993
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    .line 994
    .local v0, "subId":I
    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->isSubIdValid(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 995
    nop

    .line 996
    invoke-static {p1}, Lcom/android/ims/ImsManager;->booleanToPropertyString(Z)Ljava/lang/String;

    move-result-object v1

    .line 995
    const-string v2, "wfc_ims_enabled"

    invoke-static {v0, v2, v1}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 998
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWfcSetting: invalid sub id, can not set WFC setting in siminfo db; subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1002
    :goto_0
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    .line 1003
    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1004
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v2

    .line 1005
    .local v2, "isRoaming":Z
    invoke-virtual {p0, v2}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/android/ims/ImsManager;->setWfcNonPersistent(ZI)V

    .line 1006
    return-void
.end method

.method protected shouldForceUpdated()Z
    .locals 1

    .line 603
    const/4 v0, 0x0

    return v0
.end method

.method public shouldProcessCall(Z[Ljava/lang/String;)I
    .locals 4
    .param p1, "isEmergency"    # Z
    .param p2, "numbers"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2679
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection;->shouldProcessCall(Z[Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2680
    :catch_0
    move-exception v0

    .line 2681
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "shouldProcessCall()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public takeCall(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "incomingCallExtras"    # Landroid/os/Bundle;
    .param p3, "listener"    # Lcom/android/ims/ImsCall$Listener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "takeCall :: incomingCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 2108
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 2110
    const/16 v0, 0x65

    if-eqz p2, :cond_2

    .line 2115
    invoke-static {p2}, Lcom/android/ims/ImsManager;->getCallId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 2117
    .local v1, "callId":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 2123
    if-eqz p1, :cond_0

    .line 2128
    :try_start_0
    new-instance v0, Lcom/android/ims/ImsCall;

    iget-object v2, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsCall;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;)V

    .line 2130
    .local v0, "call":Lcom/android/ims/ImsCall;
    new-instance v2, Landroid/telephony/ims/ImsCallSession;

    invoke-direct {v2, p1}, Landroid/telephony/ims/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall;->attachSession(Landroid/telephony/ims/ImsCallSession;)V

    .line 2131
    invoke-virtual {v0, p3}, Lcom/android/ims/ImsCall;->setListener(Lcom/android/ims/ImsCall$Listener;)V

    .line 2133
    return-object v0

    .line 2134
    .end local v0    # "call":Lcom/android/ims/ImsCall;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 2124
    :cond_0
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v2, "No pending session for the call"

    const/16 v3, 0x6b

    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local v1    # "callId":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/ims/ImsManager;
    .end local p1    # "session":Lcom/android/ims/internal/IImsCallSession;
    .end local p2    # "incomingCallExtras":Landroid/os/Bundle;
    .end local p3    # "listener":Lcom/android/ims/ImsCall$Listener;
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2135
    .local v0, "t":Ljava/lang/Throwable;
    .restart local v1    # "callId":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/ims/ImsManager;
    .restart local p1    # "session":Lcom/android/ims/internal/IImsCallSession;
    .restart local p2    # "incomingCallExtras":Landroid/os/Bundle;
    .restart local p3    # "listener":Lcom/android/ims/ImsCall$Listener;
    :goto_0
    new-instance v2, Lcom/android/ims/ImsException;

    const/4 v3, 0x0

    const-string v4, "takeCall()"

    invoke-direct {v2, v4, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    .line 2118
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "Call ID missing in the incoming call intent"

    invoke-direct {v2, v3, v0}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 2111
    .end local v1    # "callId":Ljava/lang/String;
    :cond_2
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "Can\'t retrieve session with null intent"

    invoke-direct {v1, v2, v0}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method protected turnOffIms()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2570
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    .line 2571
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2572
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget v1, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->disableIms(I)V

    .line 2573
    return-void
.end method

.method protected turnOnIms()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2493
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    .line 2494
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2495
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget v1, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->enableIms(I)V

    .line 2496
    return-void
.end method

.method public updateImsServiceConfig(Z)V
    .locals 3
    .param p1, "force"    # Z

    .line 1460
    if-nez p1, :cond_0

    .line 1461
    new-instance v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    .line 1462
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 1463
    const-string v1, "updateImsServiceConfig: SIM not ready"

    invoke-static {v1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1465
    return-void

    .line 1469
    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    iget-boolean v0, p0, Lcom/android/ims/ImsManager;->mConfigUpdated:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_4

    .line 1474
    :cond_1
    :try_start_0
    new-instance v0, Landroid/telephony/ims/feature/CapabilityChangeRequest;

    invoke-direct {v0}, Landroid/telephony/ims/feature/CapabilityChangeRequest;-><init>()V

    .line 1475
    .local v0, "request":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->updateVolteFeatureValue(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V

    .line 1476
    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->updateWfcFeatureAndProvisionedValues(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V

    .line 1477
    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->updateVideoCallFeatureValue(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V

    .line 1478
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->updateRttConfigValue()Z

    move-result v1

    .line 1481
    .local v1, "isImsNeededForRtt":Z
    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->updateUtFeatureValue(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V

    .line 1484
    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->changeMmTelCapability(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V

    .line 1486
    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isTurnOffImsAllowedByPlatform()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->isImsNeeded(Landroid/telephony/ims/feature/CapabilityChangeRequest;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 1495
    :cond_2
    const-string v2, "updateImsServiceConfig: turnOffIms"

    invoke-static {v2}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1496
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->turnOffIms()V

    goto :goto_1

    .line 1491
    :cond_3
    :goto_0
    const-string v2, "updateImsServiceConfig: turnOnIms"

    invoke-static {v2}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1492
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->turnOnIms()V

    .line 1499
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/ims/ImsManager;->mConfigUpdated:Z
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1503
    .end local v0    # "request":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .end local v1    # "isImsNeededForRtt":Z
    goto :goto_2

    .line 1500
    :catch_0
    move-exception v0

    .line 1501
    .local v0, "e":Lcom/android/ims/ImsException;
    const-string v1, "updateImsServiceConfig: "

    invoke-static {v1, v0}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1502
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/ims/ImsManager;->mConfigUpdated:Z

    .line 1505
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :cond_4
    :goto_2
    return-void
.end method

.method public updateRttConfigValue()Z
    .locals 7

    .line 2201
    nop

    .line 2202
    const-string v0, "rtt_supported_bool"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    .line 2203
    .local v0, "isCarrierSupported":Z
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "rtt_calling_mode"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 2205
    .local v1, "isRttEnabled":Z
    :goto_0
    const-class v4, Lcom/android/ims/ImsManager;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update RTT value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    if-ne v0, v3, :cond_1

    .line 2207
    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->setRttConfig(Z)V

    .line 2209
    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method

.method protected updateVideoCallFeatureValue(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V
    .locals 9
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;

    .line 1542
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVtEnabledByPlatform()Z

    move-result v0

    .line 1543
    .local v0, "available":Z
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVtEnabledByUser()Z

    move-result v1

    .line 1544
    .local v1, "enabled":Z
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result v2

    .line 1545
    .local v2, "isNonTty":Z
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isDataEnabled()Z

    move-result v3

    .line 1546
    .local v3, "isDataEnabled":Z
    const-string v4, "ignore_data_enabled_changed_for_video_calls"

    invoke-virtual {p0, v4}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v4

    .line 1549
    .local v4, "ignoreDataEnabledChanged":Z
    const/4 v5, 0x0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-nez v4, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    move v6, v5

    .line 1552
    .local v6, "isFeatureOn":Z
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateVideoCallFeatureValue: available = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", enabled = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", nonTTY = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", data enabled = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1557
    const/4 v7, 0x2

    if-eqz v6, :cond_2

    .line 1558
    invoke-virtual {p1, v7, v5}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    goto :goto_1

    .line 1562
    :cond_2
    invoke-virtual {p1, v7, v5}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 1566
    :goto_1
    return-void
.end method

.method protected updateWfcFeatureAndProvisionedValues(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V
    .locals 10
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;

    .line 1572
    new-instance v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    .line 1573
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    .line 1574
    .local v1, "isNetworkRoaming":Z
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v2

    .line 1575
    .local v2, "available":Z
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v3

    .line 1576
    .local v3, "enabled":Z
    invoke-virtual {p0, v1}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v4

    .line 1577
    .local v4, "mode":I
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcRoamingEnabledByUser()Z

    move-result v5

    .line 1578
    .local v5, "roaming":Z
    const/4 v6, 0x1

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 1580
    .local v7, "isFeatureOn":Z
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateWfcFeatureAndProvisionedValues: available = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", enabled = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", mode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", roaming = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1585
    if-eqz v7, :cond_1

    .line 1586
    invoke-virtual {p1, v6, v6}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    goto :goto_1

    .line 1590
    :cond_1
    invoke-virtual {p1, v6, v6}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 1595
    :goto_1
    if-nez v7, :cond_2

    .line 1596
    const/4 v4, 0x1

    .line 1597
    const/4 v5, 0x0

    .line 1599
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/ims/ImsManager;->setWfcModeInternal(I)V

    .line 1600
    invoke-virtual {p0, v5}, Lcom/android/ims/ImsManager;->setWfcRoamingSettingInternal(Z)V

    .line 1601
    return-void
.end method

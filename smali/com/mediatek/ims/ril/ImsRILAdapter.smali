.class public final Lcom/mediatek/ims/ril/ImsRILAdapter;
.super Lcom/mediatek/ims/ril/ImsBaseCommands;
.source "ImsRILAdapter.java"

# interfaces
.implements Lcom/mediatek/ims/ril/ImsCommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/ril/ImsRILAdapter$MtkRadioProxyDeathRecipient;,
        Lcom/mediatek/ims/ril/ImsRILAdapter$RadioProxyDeathRecipient;,
        Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;,
        Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_ACK_WAKE_LOCK_TIMEOUT_MS:I = 0xc8

.field private static final DEFAULT_WAKE_LOCK_TIMEOUT_MS:I = 0xea60

.field static final EVENT_ACK_WAKE_LOCK_TIMEOUT:I = 0x4

.field static final EVENT_BLOCKING_RESPONSE_TIMEOUT:I = 0x5

.field static final EVENT_MTK_RADIO_PROXY_DEAD:I = 0x7

.field static final EVENT_RADIO_PROXY_DEAD:I = 0x6

.field static final EVENT_SEND:I = 0x1

.field static final EVENT_TRIGGER_TO_FIRE_PENDING_URC:I = 0x8

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x2

.field public static final FOR_ACK_WAKELOCK:I = 0x1

.field public static final FOR_WAKELOCK:I = 0x0

.field static final IMSRIL_LOGD:Z = true

.field static final IMSRIL_LOGV:Z = false

.field static final IMSRIL_LOG_TAG:Ljava/lang/String; = "IMS_RILA"

.field static final IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

.field static final IMS_RILA_LOGD:Z = true

.field public static final INVALID_WAKELOCK:I = -0x1

.field static final IRADIO_GET_SERVICE_DELAY_MILLIS:I = 0xfa0

.field static final MTK_IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

.field static final PROPERTY_WAKE_LOCK_TIMEOUT:Ljava/lang/String; = "ro.ril.wake_lock_timeout"

.field static final RILJ_ACK_WAKELOCK_NAME:Ljava/lang/String; = "IMSRIL_ACK_WL"

.field static final RIL_HISTOGRAM_BUCKET_COUNT:I = 0x5

.field static mRilTimeHistograms:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mAckWakeLock:Landroid/os/PowerManager$WakeLock;

.field final mAckWakeLockTimeout:I

.field volatile mAckWlSequenceNum:I

.field private mActiveWakelockWorkSource:Landroid/os/WorkSource;

.field private final mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

.field mContext:Landroid/content/Context;

.field private mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

.field mImsRadioIndication:Lcom/mediatek/ims/ril/ImsRadioIndication;

.field mImsRadioResponse:Lcom/mediatek/ims/ril/ImsRadioResponse;

.field mIsMobileNetworkSupported:Z

.field mLastNITZTimeInfo:[Ljava/lang/Object;

.field private mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

.field volatile mMtkRadioProxy:Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

.field final mMtkRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

.field final mMtkRadioProxyDeathRecipient:Lcom/mediatek/ims/ril/ImsRILAdapter$MtkRadioProxyDeathRecipient;

.field private mOpCI:Lcom/mediatek/ims/ril/OpImsCommandsInterface;

.field final mPhoneId:Ljava/lang/Integer;

.field private mRILDefaultWorkSource:Landroid/os/WorkSource;

.field mRadioIndication:Lcom/mediatek/ims/ril/RadioIndicationImpl;

.field volatile mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

.field final mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

.field final mRadioProxyDeathRecipient:Lcom/mediatek/ims/ril/ImsRILAdapter$RadioProxyDeathRecipient;

.field mRadioResponse:Lcom/mediatek/ims/ril/RadioResponseImpl;

.field mRequestList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/mediatek/ims/ril/RILRequest;",
            ">;"
        }
    .end annotation
.end field

.field final mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

.field mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWakeLockCount:I

.field final mWakeLockTimeout:I

.field volatile mWlSequenceNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 352
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    .line 406
    const-string v0, "imsSlot1"

    const-string v1, "imsSlot2"

    const-string v2, "imsSlot3"

    const-string v3, "imsSlot4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

    .line 409
    const-string v0, "imsAospSlot1"

    const-string v1, "imsAospSlot2"

    const-string v2, "imsAospSlot3"

    const-string v3, "imsAospSlot4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instanceId"    # I

    .line 776
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ril/ImsBaseCommands;-><init>(Landroid/content/Context;I)V

    .line 336
    new-instance v0, Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-direct {v0}, Lcom/android/internal/telephony/ClientWakelockTracker;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    .line 349
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWlSequenceNum:I

    .line 350
    iput v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWlSequenceNum:I

    .line 351
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    .line 358
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 369
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    .line 376
    new-instance v1, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 386
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 387
    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    .line 388
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 389
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 778
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ims-RIL: init phone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 781
    iput-object p1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mContext:Landroid/content/Context;

    .line 782
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 784
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 786
    .local v2, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mIsMobileNetworkSupported:Z

    .line 788
    new-instance v3, Lcom/mediatek/ims/ril/RadioResponseImpl;

    invoke-direct {v3, p0, p2}, Lcom/mediatek/ims/ril/RadioResponseImpl;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioResponse:Lcom/mediatek/ims/ril/RadioResponseImpl;

    .line 789
    new-instance v3, Lcom/mediatek/ims/ril/RadioIndicationImpl;

    invoke-direct {v3, p0, p2}, Lcom/mediatek/ims/ril/RadioIndicationImpl;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioIndication:Lcom/mediatek/ims/ril/RadioIndicationImpl;

    .line 790
    new-instance v3, Lcom/mediatek/ims/ril/ImsRadioResponse;

    invoke-direct {v3, p0, p2}, Lcom/mediatek/ims/ril/ImsRadioResponse;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRadioResponse:Lcom/mediatek/ims/ril/ImsRadioResponse;

    .line 791
    new-instance v3, Lcom/mediatek/ims/ril/ImsRadioIndication;

    invoke-direct {v3, p0, p2}, Lcom/mediatek/ims/ril/ImsRadioIndication;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRadioIndication:Lcom/mediatek/ims/ril/ImsRadioIndication;

    .line 793
    new-instance v3, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    invoke-direct {v3, p0}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    .line 794
    new-instance v3, Lcom/mediatek/ims/ril/ImsRILAdapter$RadioProxyDeathRecipient;

    invoke-direct {v3, p0}, Lcom/mediatek/ims/ril/ImsRILAdapter$RadioProxyDeathRecipient;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxyDeathRecipient:Lcom/mediatek/ims/ril/ImsRILAdapter$RadioProxyDeathRecipient;

    .line 795
    new-instance v3, Lcom/mediatek/ims/ril/ImsRILAdapter$MtkRadioProxyDeathRecipient;

    invoke-direct {v3, p0}, Lcom/mediatek/ims/ril/ImsRILAdapter$MtkRadioProxyDeathRecipient;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxyDeathRecipient:Lcom/mediatek/ims/ril/ImsRILAdapter$MtkRadioProxyDeathRecipient;

    .line 797
    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 798
    .local v3, "pm":Landroid/os/PowerManager;
    const/4 v4, 0x1

    const-string v5, "IMS_RILA"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 799
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 800
    const-string v5, "IMSRIL_ACK_WL"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 801
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 802
    const-string v5, "ro.ril.wake_lock_timeout"

    const v6, 0xea60

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockTimeout:I

    .line 804
    const/16 v6, 0xc8

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLockTimeout:I

    .line 806
    iput v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    .line 807
    new-instance v5, Landroid/os/WorkSource;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 808
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    iput-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 812
    invoke-direct {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v5

    .line 814
    .local v5, "proxy":Landroid/hardware/radio/V1_0/IRadio;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ims-RIL: proxy = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v5, :cond_0

    move v7, v4

    goto :goto_0

    :cond_0
    move v7, v0

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 817
    invoke-direct {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v1

    .line 819
    .local v1, "mtkProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Mtk-Ims-RIL: proxy = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_1

    move v0, v4

    :cond_1
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 822
    invoke-static {p1, p2}, Lcom/mediatek/ims/ril/OpImsRILUtil;->makeCommandInterface(Landroid/content/Context;I)Lcom/mediatek/ims/ril/OpImsCommandsInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mOpCI:Lcom/mediatek/ims/ril/OpImsCommandsInterface;

    .line 823
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/ril/ImsRILAdapter;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;
    .param p1, "x1"    # I

    .line 314
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->clearWakeLock(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/ims/ril/ImsRILAdapter;I)Lcom/mediatek/ims/ril/RILRequest;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;
    .param p1, "x1"    # I

    .line 314
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->findAndRemoveRequestFromList(I)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/ims/ril/RILRequest;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ril/RILRequest;

    .line 314
    invoke-static {p0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getResponseForTimedOutRILRequest(Lcom/mediatek/ims/ril/RILRequest;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/ims/ril/ImsRILAdapter;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 314
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/ims/ril/ImsRILAdapter;Lcom/mediatek/ims/ril/RILRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;
    .param p1, "x1"    # Lcom/mediatek/ims/ril/RILRequest;

    .line 314
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->decrementWakeLock(Lcom/mediatek/ims/ril/RILRequest;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/ims/ril/ImsRILAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 314
    invoke-direct {p0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->resetProxyAndRequestList()V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/ims/ril/ImsRILAdapter;Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;
    .param p1, "x1"    # Landroid/os/Message;

    .line 314
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/ims/ril/ImsRILAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 314
    invoke-direct {p0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->resetMtkProxyAndRequestList()V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/ims/ril/ImsRILAdapter;Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;
    .param p1, "x1"    # Landroid/os/Message;

    .line 314
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    return-object v0
.end method

.method private acquireWakeLock(Lcom/mediatek/ims/ril/RILRequest;I)V
    .locals 7
    .param p1, "rr"    # Lcom/mediatek/ims/ril/RILRequest;
    .param p2, "wakeLockType"    # I

    .line 3876
    monitor-enter p1

    .line 3877
    :try_start_0
    iget v0, p1, Lcom/mediatek/ims/ril/RILRequest;->mWakeLockType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3878
    const-string v0, "IMS_RILA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to aquire wakelock for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3879
    monitor-exit p1

    return-void

    .line 3882
    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v0, :cond_1

    .line 3918
    const-string v0, "IMS_RILA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Acquiring Invalid Wakelock type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3919
    monitor-exit p1

    return-void

    .line 3908
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3909
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3910
    iget v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWlSequenceNum:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWlSequenceNum:I

    .line 3912
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3913
    .local v0, "msg":Landroid/os/Message;
    iget v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWlSequenceNum:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 3914
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    iget v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLockTimeout:I

    int-to-long v3, v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3915
    nop

    .end local v0    # "msg":Landroid/os/Message;
    monitor-exit v1

    .line 3916
    goto :goto_1

    .line 3915
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    .end local p1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local p2    # "wakeLockType":I
    :try_start_2
    throw v0

    .line 3884
    .restart local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    .restart local p1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .restart local p2    # "wakeLockType":I
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 3885
    :try_start_3
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3886
    iget v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    .line 3887
    iget v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWlSequenceNum:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWlSequenceNum:I

    .line 3889
    iget-object v0, p1, Lcom/mediatek/ims/ril/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getWorkSourceClientId(Landroid/os/WorkSource;)Ljava/lang/String;

    move-result-object v0

    .line 3890
    .local v0, "clientId":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/ClientWakelockTracker;->isClientActive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3891
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    if-eqz v2, :cond_3

    .line 3892
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    iget-object v3, p1, Lcom/mediatek/ims/ril/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    goto :goto_0

    .line 3894
    :cond_3
    iget-object v2, p1, Lcom/mediatek/ims/ril/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    iput-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 3896
    :goto_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 3899
    :cond_4
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    iget-object v3, p1, Lcom/mediatek/ims/ril/RILRequest;->mClientId:Ljava/lang/String;

    iget v4, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    iget v5, p1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    iget v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/ClientWakelockTracker;->startTracking(Ljava/lang/String;III)V

    .line 3902
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 3903
    .local v2, "msg":Landroid/os/Message;
    iget v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWlSequenceNum:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 3904
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    iget v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockTimeout:I

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3905
    nop

    .end local v0    # "clientId":Ljava/lang/String;
    .end local v2    # "msg":Landroid/os/Message;
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3906
    nop

    .line 3921
    :goto_1
    :try_start_4
    iput p2, p1, Lcom/mediatek/ims/ril/RILRequest;->mWakeLockType:I

    .line 3922
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3923
    return-void

    .line 3905
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    .end local p1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local p2    # "wakeLockType":I
    :try_start_6
    throw v0

    .line 3922
    .restart local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    .restart local p1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .restart local p2    # "wakeLockType":I
    :catchall_2
    move-exception v0

    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method

.method private addRequest(Lcom/mediatek/ims/ril/RILRequest;)V
    .locals 3
    .param p1, "rr"    # Lcom/mediatek/ims/ril/RILRequest;

    .line 826
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->acquireWakeLock(Lcom/mediatek/ims/ril/RILRequest;I)V

    .line 827
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 828
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/mediatek/ims/ril/RILRequest;->mStartTimeMs:J

    .line 829
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    iget v2, p1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 830
    monitor-exit v0

    .line 831
    return-void

    .line 830
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private addToRilHistogram(Lcom/mediatek/ims/ril/RILRequest;)V
    .locals 9
    .param p1, "rr"    # Lcom/mediatek/ims/ril/RILRequest;

    .line 4025
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 4026
    .local v0, "endTime":J
    iget-wide v2, p1, Lcom/mediatek/ims/ril/RILRequest;->mStartTimeMs:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    .line 4028
    .local v2, "totalTime":I
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    monitor-enter v3

    .line 4029
    :try_start_0
    sget-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    iget v5, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyHistogram;

    .line 4030
    .local v4, "entry":Landroid/telephony/TelephonyHistogram;
    if-nez v4, :cond_0

    .line 4032
    new-instance v5, Landroid/telephony/TelephonyHistogram;

    const/4 v6, 0x1

    iget v7, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/4 v8, 0x5

    invoke-direct {v5, v6, v7, v8}, Landroid/telephony/TelephonyHistogram;-><init>(III)V

    move-object v4, v5

    .line 4034
    sget-object v5, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    iget v6, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4036
    :cond_0
    invoke-virtual {v4, v2}, Landroid/telephony/TelephonyHistogram;->addTimeTaken(I)V

    .line 4037
    .end local v4    # "entry":Landroid/telephony/TelephonyHistogram;
    monitor-exit v3

    .line 4038
    return-void

    .line 4037
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private clearRequestList(IZ)V
    .locals 7
    .param p1, "error"    # I
    .param p2, "loggable"    # Z

    .line 3991
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 3992
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3993
    .local v1, "count":I
    if-eqz p2, :cond_0

    .line 3994
    const-string v2, "IMS_RILA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearRequestList  mWakeLockCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mRequestList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3998
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 3999
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/ril/RILRequest;

    .line 4000
    .local v3, "rr":Lcom/mediatek/ims/ril/RILRequest;
    if-eqz p2, :cond_1

    .line 4001
    const-string v4, "IMS_RILA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 4002
    invoke-static {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4001
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4004
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/mediatek/ims/ril/RILRequest;->onError(ILjava/lang/Object;)V

    .line 4005
    invoke-direct {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->decrementWakeLock(Lcom/mediatek/ims/ril/RILRequest;)V

    .line 4006
    invoke-virtual {v3}, Lcom/mediatek/ims/ril/RILRequest;->release()V

    .line 3998
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4008
    .end local v2    # "i":I
    .end local v3    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 4009
    .end local v1    # "count":I
    monitor-exit v0

    .line 4010
    return-void

    .line 4009
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearWakeLock(I)Z
    .locals 6
    .param p1, "wakeLockType"    # I

    .line 3964
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 3965
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 3966
    :try_start_0
    iget v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v2

    return v1

    .line 3967
    :cond_0
    const-string v3, "IMS_RILA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NOTE: mWakeLockCount is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "at time of clearing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3969
    iput v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    .line 3970
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3971
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ClientWakelockTracker;->stopTrackingAll()V

    .line 3972
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 3973
    monitor-exit v2

    return v0

    .line 3974
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3976
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 3977
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_2

    monitor-exit v2

    return v1

    .line 3978
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3979
    monitor-exit v2

    return v0

    .line 3980
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method private constructGsmSendSmsRilRequest(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/V1_0/GsmSmsMessage;
    .locals 3
    .param p1, "smscPdu"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;

    .line 3642
    new-instance v0, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 3643
    .local v0, "msg":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    const-string v1, ""

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    iput-object v2, v0, Landroid/hardware/radio/V1_0/GsmSmsMessage;->smscPdu:Ljava/lang/String;

    .line 3644
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    iput-object v1, v0, Landroid/hardware/radio/V1_0/GsmSmsMessage;->pdu:Ljava/lang/String;

    .line 3645
    return-object v0
.end method

.method private decrementWakeLock(Lcom/mediatek/ims/ril/RILRequest;)V
    .locals 9
    .param p1, "rr"    # Lcom/mediatek/ims/ril/RILRequest;

    .line 3926
    monitor-enter p1

    .line 3927
    :try_start_0
    iget v0, p1, Lcom/mediatek/ims/ril/RILRequest;->mWakeLockType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_0

    .line 3957
    const-string v0, "IMS_RILA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Decrementing Invalid Wakelock type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/mediatek/ims/ril/RILRequest;->mWakeLockType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3953
    :cond_0
    goto :goto_2

    .line 3929
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3930
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    iget-object v4, p1, Lcom/mediatek/ims/ril/RILRequest;->mClientId:Ljava/lang/String;

    iget v5, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    iget v6, p1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 3932
    iget v7, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    const/4 v8, 0x0

    if-le v7, v2, :cond_2

    iget v7, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    sub-int/2addr v7, v2

    goto :goto_0

    :cond_2
    move v7, v8

    .line 3930
    :goto_0
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/internal/telephony/ClientWakelockTracker;->stopTracking(Ljava/lang/String;III)V

    .line 3933
    iget-object v3, p1, Lcom/mediatek/ims/ril/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getWorkSourceClientId(Landroid/os/WorkSource;)Ljava/lang/String;

    move-result-object v3

    .line 3934
    .local v3, "clientId":Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/ClientWakelockTracker;->isClientActive(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    if-eqz v4, :cond_4

    .line 3936
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    iget-object v5, p1, Lcom/mediatek/ims/ril/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v4, v5}, Landroid/os/WorkSource;->remove(Landroid/os/WorkSource;)Z

    .line 3937
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v4}, Landroid/os/WorkSource;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 3938
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 3940
    :cond_3
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 3943
    :cond_4
    iget v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    if-le v4, v2, :cond_5

    .line 3944
    iget v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    sub-int/2addr v4, v2

    iput v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    goto :goto_1

    .line 3946
    :cond_5
    iput v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    .line 3947
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3949
    .end local v3    # "clientId":Ljava/lang/String;
    :goto_1
    monitor-exit v0

    .line 3950
    goto :goto_2

    .line 3949
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    .end local p1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :try_start_2
    throw v1

    .line 3955
    .restart local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    .restart local p1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_6
    nop

    .line 3959
    :goto_2
    iput v1, p1, Lcom/mediatek/ims/ril/RILRequest;->mWakeLockType:I

    .line 3960
    monitor-exit p1

    .line 3961
    return-void

    .line 3960
    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private emergencyDial(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 16
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "callprofile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "clirMode"    # I
    .param p4, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p5, "result"    # Landroid/os/Message;

    .line 2174
    move-object/from16 v1, p0

    move-object/from16 v2, p5

    invoke-direct {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v3

    .line 2176
    .local v3, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    move-object v12, v3

    check-cast v12, Landroid/hardware/radio/V1_4/IRadio;

    .line 2178
    .local v12, "radioProxy14":Landroid/hardware/radio/V1_4/IRadio;
    if-eqz v3, :cond_1

    .line 2179
    const/16 v0, 0x827

    iget-object v4, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {v1, v0, v2, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v13

    .line 2181
    .local v13, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v0, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    move-object v14, v0

    .line 2182
    .local v14, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Landroid/hardware/radio/V1_0/Dial;->address:Ljava/lang/String;

    .line 2183
    move/from16 v15, p3

    iput v15, v14, Landroid/hardware/radio/V1_0/Dial;->clir:I

    .line 2184
    if-eqz p4, :cond_0

    .line 2185
    new-instance v0, Landroid/hardware/radio/V1_0/UusInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/UusInfo;-><init>()V

    .line 2186
    .local v0, "info":Landroid/hardware/radio/V1_0/UusInfo;
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v4

    iput v4, v0, Landroid/hardware/radio/V1_0/UusInfo;->uusType:I

    .line 2187
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v4

    iput v4, v0, Landroid/hardware/radio/V1_0/UusInfo;->uusDcs:I

    .line 2188
    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    iput-object v4, v0, Landroid/hardware/radio/V1_0/UusInfo;->uusData:Ljava/lang/String;

    .line 2189
    iget-object v4, v14, Landroid/hardware/radio/V1_0/Dial;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2194
    .end local v0    # "info":Landroid/hardware/radio/V1_0/UusInfo;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v13, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2199
    :try_start_0
    iget v5, v13, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2200
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyServiceCategories()I

    move-result v7

    .line 2201
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyUrns()Ljava/util/List;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/ArrayList;

    .line 2202
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyCallRouting()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 2199
    move-object v4, v12

    move-object v6, v14

    invoke-interface/range {v4 .. v11}, Landroid/hardware/radio/V1_4/IRadio;->emergencyDial(ILandroid/hardware/radio/V1_0/Dial;ILjava/util/ArrayList;IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2205
    goto :goto_0

    .line 2203
    :catch_0
    move-exception v0

    .line 2204
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "emergencyDial"

    invoke-direct {v1, v13, v4, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 2178
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v13    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v14    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :cond_1
    move/from16 v15, p3

    .line 2207
    :goto_0
    return-void
.end method

.method private findAndRemoveRequestFromList(I)Lcom/mediatek/ims/ril/RILRequest;
    .locals 3
    .param p1, "serial"    # I

    .line 4013
    const/4 v0, 0x0

    .line 4014
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v1

    .line 4015
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ril/RILRequest;

    move-object v0, v2

    .line 4016
    if-eqz v0, :cond_0

    .line 4017
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4019
    :cond_0
    monitor-exit v1

    .line 4021
    return-object v0

    .line 4019
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getDeafultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 0
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .line 3625
    if-nez p1, :cond_0

    .line 3626
    iget-object p1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 3629
    :cond_0
    return-object p1
.end method

.method private getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 4597
    iget-boolean v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mIsMobileNetworkSupported:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4599
    return-object v1

    .line 4602
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    if-eqz v0, :cond_1

    .line 4603
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    return-object v0

    .line 4607
    :cond_1
    :try_start_0
    sget-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

    .line 4608
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    aget-object v0, v0, v2

    .line 4607
    invoke-static {v0, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->getService(Ljava/lang/String;Z)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    .line 4609
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    if-eqz v0, :cond_3

    .line 4610
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxyDeathRecipient:Lcom/mediatek/ims/ril/ImsRILAdapter$MtkRadioProxyDeathRecipient;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 4611
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v3

    .line 4610
    invoke-interface {v0, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 4613
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRadioResponse:Lcom/mediatek/ims/ril/ImsRadioResponse;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRadioIndication:Lcom/mediatek/ims/ril/ImsRadioIndication;

    invoke-interface {v0, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->setResponseFunctionsIms(Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication;)V

    goto :goto_1

    .line 4615
    :cond_3
    const-string v0, "getMtkRadioProxy: mMtkRadioProxy == null"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4620
    :goto_1
    goto :goto_2

    .line 4617
    :catch_0
    move-exception v0

    .line 4618
    .local v0, "e":Ljava/lang/Exception;
    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 4619
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMtkRadioProxy getService/setResponseFunctions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 4622
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    if-nez v0, :cond_4

    .line 4623
    if-eqz p1, :cond_4

    .line 4624
    const/4 v0, 0x1

    .line 4625
    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 4624
    invoke-static {p1, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4626
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 4630
    :cond_4
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    return-object v0
.end method

.method private getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;
    .locals 7
    .param p1, "result"    # Landroid/os/Message;

    .line 676
    iget-boolean v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mIsMobileNetworkSupported:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 678
    return-object v1

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-eqz v0, :cond_1

    .line 682
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    return-object v0

    .line 687
    :cond_1
    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

    .line 688
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_0
    aget-object v3, v3, v4

    .line 687
    invoke-static {v3, v2}, Landroid/hardware/radio/V1_4/IRadio;->getService(Ljava/lang/String;Z)Landroid/hardware/radio/V1_4/IRadio;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    goto :goto_1

    .line 757
    :catch_0
    move-exception v2

    goto/16 :goto_c

    .line 689
    :catch_1
    move-exception v3

    .line 692
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v3, :cond_4

    .line 694
    :try_start_2
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

    .line 695
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    if-nez v4, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_2
    aget-object v3, v3, v4

    .line 694
    invoke-static {v3, v2}, Landroid/hardware/radio/V1_3/IRadio;->getService(Ljava/lang/String;Z)Landroid/hardware/radio/V1_3/IRadio;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 697
    goto :goto_3

    .line 696
    :catch_2
    move-exception v3

    .line 700
    :cond_4
    :goto_3
    :try_start_3
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    if-nez v3, :cond_6

    .line 702
    :try_start_4
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

    .line 703
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    if-nez v4, :cond_5

    move v4, v2

    goto :goto_4

    :cond_5
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_4
    aget-object v3, v3, v4

    .line 702
    invoke-static {v3, v2}, Landroid/hardware/radio/V1_2/IRadio;->getService(Ljava/lang/String;Z)Landroid/hardware/radio/V1_2/IRadio;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 705
    goto :goto_5

    .line 704
    :catch_3
    move-exception v3

    .line 708
    :cond_6
    :goto_5
    :try_start_5
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    if-nez v3, :cond_8

    .line 710
    :try_start_6
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

    .line 711
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    if-nez v4, :cond_7

    move v4, v2

    goto :goto_6

    :cond_7
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_6
    aget-object v3, v3, v4

    .line 710
    invoke-static {v3, v2}, Landroid/hardware/radio/V1_1/IRadio;->getService(Ljava/lang/String;Z)Landroid/hardware/radio/V1_1/IRadio;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;
    :try_end_6
    .catch Ljava/util/NoSuchElementException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    .line 713
    goto :goto_7

    .line 712
    :catch_4
    move-exception v3

    .line 716
    :cond_8
    :goto_7
    :try_start_7
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    if-nez v3, :cond_a

    .line 718
    :try_start_8
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

    .line 719
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    if-nez v4, :cond_9

    move v4, v2

    goto :goto_8

    :cond_9
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_8
    aget-object v3, v3, v4

    .line 718
    invoke-static {v3, v2}, Landroid/hardware/radio/V1_0/IRadio;->getService(Ljava/lang/String;Z)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;
    :try_end_8
    .catch Ljava/util/NoSuchElementException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    .line 721
    goto :goto_9

    .line 720
    :catch_5
    move-exception v2

    .line 723
    :cond_a
    :goto_9
    :try_start_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRadioProxy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 724
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-eqz v2, :cond_e

    .line 725
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxyDeathRecipient:Lcom/mediatek/ims/ril/ImsRILAdapter$RadioProxyDeathRecipient;

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 726
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v4

    .line 725
    invoke-interface {v2, v3, v4, v5}, Landroid/hardware/radio/V1_0/IRadio;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 727
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioResponse:Lcom/mediatek/ims/ril/RadioResponseImpl;

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioIndication:Lcom/mediatek/ims/ril/RadioIndicationImpl;

    invoke-interface {v2, v3, v4}, Landroid/hardware/radio/V1_0/IRadio;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    .line 728
    const-string v2, "setResponseFunctionsIms"

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 730
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    if-eqz v2, :cond_f

    .line 731
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    monitor-enter v2
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    .line 733
    :try_start_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queue size  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 734
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v3

    sub-int/2addr v3, v0

    .local v3, "i":I
    :goto_a
    if-ltz v3, :cond_b

    .line 735
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->remove(I)V

    .line 734
    add-int/lit8 v3, v3, -0x1

    goto :goto_a

    .line 737
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queue size  after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v5}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 738
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->getPendingRequest()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 739
    const-string v4, "reset pending switch request"

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 741
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 742
    invoke-virtual {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->getPendingRequest()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v4

    .line 743
    .local v4, "pendingDqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v5, v4, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->rr:Lcom/mediatek/ims/ril/RILRequest;

    .line 744
    .local v5, "pendingRequest":Lcom/mediatek/ims/ril/RILRequest;
    iget-object v6, v5, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v6, :cond_c

    .line 745
    iget-object v6, v5, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v1, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 746
    iget-object v6, v5, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 749
    :cond_c
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->resetSendChldRequest()V

    .line 750
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v6, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->setPendingRequest(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 752
    .end local v3    # "i":I
    .end local v4    # "pendingDqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    .end local v5    # "pendingRequest":Lcom/mediatek/ims/ril/RILRequest;
    :cond_d
    monitor-exit v2

    goto :goto_b

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .end local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    .end local p1    # "result":Landroid/os/Message;
    :try_start_b
    throw v3

    .line 755
    .restart local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    .restart local p1    # "result":Landroid/os/Message;
    :cond_e
    const-string v2, "getRadioProxy: mRadioProxy == null"

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0

    .line 760
    :cond_f
    :goto_b
    goto :goto_d

    .line 758
    .local v2, "e":Ljava/lang/Exception;
    :goto_c
    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 759
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RadioProxy getService/setResponseFunctions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 762
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_d
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-nez v2, :cond_10

    .line 763
    if-eqz p1, :cond_10

    .line 764
    nop

    .line 765
    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 764
    invoke-static {p1, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 766
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 770
    :cond_10
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    return-object v0
.end method

.method private static getResponseForTimedOutRILRequest(Lcom/mediatek/ims/ril/RILRequest;)Ljava/lang/Object;
    .locals 11
    .param p0, "rr"    # Lcom/mediatek/ims/ril/RILRequest;

    .line 623
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 625
    :cond_0
    const/4 v0, 0x0

    .line 626
    .local v0, "timeoutResponse":Ljava/lang/Object;
    iget v1, p0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/16 v2, 0x87

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 628
    :cond_1
    new-instance v1, Landroid/telephony/ModemActivityInfo;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x5

    new-array v8, v2, [I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Landroid/telephony/ModemActivityInfo;-><init>(JII[III)V

    move-object v0, v1

    .line 632
    :goto_0
    return-object v0
.end method

.method public static getTelephonyRILTimingHistograms()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation

    .line 421
    sget-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    monitor-enter v0

    .line 422
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 423
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 424
    new-instance v3, Landroid/telephony/TelephonyHistogram;

    sget-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyHistogram;

    invoke-direct {v3, v4}, Landroid/telephony/TelephonyHistogram;-><init>(Landroid/telephony/TelephonyHistogram;)V

    .line 425
    .local v3, "entry":Landroid/telephony/TelephonyHistogram;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    nop

    .end local v3    # "entry":Landroid/telephony/TelephonyHistogram;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 427
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    .line 428
    return-object v1

    .line 427
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getWorkSourceClientId(Landroid/os/WorkSource;)Ljava/lang/String;
    .locals 3
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .line 3633
    if-eqz p1, :cond_0

    .line 3634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3637
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleChldRelatedRequest(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)V
    .locals 11
    .param p1, "rr"    # Lcom/mediatek/ims/ril/RILRequest;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 3244
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    monitor-enter v0

    .line 3245
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v1

    .line 3247
    .local v1, "queueSize":I
    if-lez v1, :cond_5

    .line 3248
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->get()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v2

    .line 3249
    .local v2, "dqrr2":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v3, v2, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->rr:Lcom/mediatek/ims/ril/RILRequest;

    .line 3250
    .local v3, "rr2":Lcom/mediatek/ims/ril/RILRequest;
    iget v4, v3, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/16 v5, 0x31

    const/4 v6, 0x0

    if-ne v4, v5, :cond_2

    .line 3252
    const-string v4, "DTMF queue isn\'t 0, first request is START, send stop dtmf and pending switch"

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3254
    const/4 v4, 0x1

    if-le v1, v4, :cond_0

    .line 3255
    const/4 v5, 0x2

    .local v5, "j":I
    goto :goto_0

    .line 3258
    .end local v5    # "j":I
    :cond_0
    move v5, v4

    .line 3260
    .restart local v5    # "j":I
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "queue size  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v8}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3261
    add-int/lit8 v7, v1, -0x1

    .local v7, "i":I
    :goto_1
    if-lt v7, v5, :cond_1

    .line 3262
    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v8, v7}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->remove(I)V

    .line 3261
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 3264
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "queue size  after "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v9}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3265
    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v8}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v8

    if-ne v8, v4, :cond_3

    .line 3267
    const-string v8, "add dummy stop dtmf request"

    invoke-virtual {p0, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3268
    const/16 v8, 0x32

    iget-object v9, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v8, v6, v9}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v8

    .line 3271
    .local v8, "rr3":Lcom/mediatek/ims/ril/RILRequest;
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, v8, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v9

    .line 3272
    .local v4, "myParam":[Ljava/lang/Object;
    iget-object v9, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v9, v8, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->buildDtmfQueueRR(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v9

    .line 3274
    .local v9, "dqrr3":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v10, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v10}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->stop()V

    .line 3275
    iget-object v10, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v10, v9}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->add(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 3276
    .end local v4    # "myParam":[Ljava/lang/Object;
    .end local v8    # "rr3":Lcom/mediatek/ims/ril/RILRequest;
    .end local v9    # "dqrr3":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    goto :goto_3

    .line 3281
    .end local v5    # "j":I
    .end local v7    # "i":I
    :cond_2
    const-string v4, "DTMF queue isn\'t 0, first request is STOP, penging switch"

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3282
    const/4 v5, 0x1

    .line 3283
    .restart local v5    # "j":I
    add-int/lit8 v4, v1, -0x1

    move v7, v4

    .restart local v7    # "i":I
    :goto_2
    if-lt v7, v5, :cond_3

    .line 3284
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v4, v7}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->remove(I)V

    .line 3283
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 3290
    :cond_3
    :goto_3
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->getPendingRequest()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 3291
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->getPendingRequest()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v4

    .line 3292
    .local v4, "pendingDqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v8, v4, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->rr:Lcom/mediatek/ims/ril/RILRequest;

    .line 3293
    .local v8, "pendingRequest":Lcom/mediatek/ims/ril/RILRequest;
    iget-object v9, v8, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v9, :cond_4

    .line 3294
    iget-object v9, v8, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v9, v6, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3295
    iget-object v6, v8, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 3299
    .end local v4    # "pendingDqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    .end local v8    # "pendingRequest":Lcom/mediatek/ims/ril/RILRequest;
    :cond_4
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v4, p1, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->buildDtmfQueueRR(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v4

    .line 3300
    .local v4, "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v6, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->setPendingRequest(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 3301
    .end local v2    # "dqrr2":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    .end local v3    # "rr2":Lcom/mediatek/ims/ril/RILRequest;
    .end local v4    # "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    goto :goto_4

    .line 3302
    .end local v5    # "j":I
    .end local v7    # "i":I
    :cond_5
    const-string v2, "DTMF queue is 0, send switch Immediately"

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3303
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->setSendChldRequest()V

    .line 3304
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2, p1, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->buildDtmfQueueRR(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v2

    .line 3305
    .local v2, "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendDtmfQueueRR(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 3307
    .end local v1    # "queueSize":I
    .end local v2    # "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    :goto_4
    monitor-exit v0

    .line 3308
    return-void

    .line 3307
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "rr"    # Lcom/mediatek/ims/ril/RILRequest;
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 847
    invoke-direct {p0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->resetMtkProxyAndRequestList()V

    .line 848
    return-void
.end method

.method private handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "rr"    # Lcom/mediatek/ims/ril/RILRequest;
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    .line 840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 841
    invoke-direct {p0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->resetProxyAndRequestList()V

    .line 842
    return-void
.end method

.method private internalAddConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 8
    .param p1, "confCallId"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "callIdToAdd"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 3158
    invoke-direct {p0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v6

    .line 3159
    .local v6, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v6, :cond_0

    .line 3160
    const/16 v0, 0x82a

    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p4, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v7

    .line 3164
    .local v7, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3165
    invoke-static {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " confCallId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " address = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3166
    invoke-static {p2}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " callIdToAdd ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3164
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3171
    :try_start_0
    iget v1, v7, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/4 v2, 0x1

    move-object v0, v6

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->controlImsConferenceCallMember(IIILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3175
    goto :goto_0

    .line 3173
    :catch_0
    move-exception v0

    .line 3174
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "addImsConferenceCallMember"

    invoke-direct {p0, v7, v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3177
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    :goto_0
    return-void
.end method

.method private internalImsEct(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 3218
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 3219
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 3220
    const/16 v1, 0x823

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3224
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3228
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->imsEctCommand(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3231
    goto :goto_0

    .line 3229
    :catch_0
    move-exception v2

    .line 3230
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "imsEctCommand"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3233
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private internalRemoveConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 8
    .param p1, "confCallId"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "callIdToRemove"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 3189
    invoke-direct {p0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v6

    .line 3190
    .local v6, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v6, :cond_0

    .line 3191
    const/16 v0, 0x82b

    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p4, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v7

    .line 3195
    .local v7, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3196
    invoke-static {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " confCallId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " address = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3197
    invoke-static {p2}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " callIdToRemove ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3195
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3202
    :try_start_0
    iget v1, v7, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/4 v2, 0x0

    move-object v0, v6

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->controlImsConferenceCallMember(IIILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3206
    goto :goto_0

    .line 3204
    :catch_0
    move-exception v0

    .line 3205
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "removeImsConferenceCallMember"

    invoke-direct {p0, v7, v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3208
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    :goto_0
    return-void
.end method

.method private obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;
    .locals 1
    .param p1, "request"    # I
    .param p2, "result"    # Landroid/os/Message;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .line 834
    invoke-static {p1, p2, p3}, Lcom/mediatek/ims/ril/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 835
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->addRequest(Lcom/mediatek/ims/ril/RILRequest;)V

    .line 836
    return-object v0
.end method

.method static requestToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "request"    # I

    .line 4243
    const/16 v0, 0xf

    if-eq p0, v0, :cond_3

    const/16 v0, 0x10

    if-eq p0, v0, :cond_2

    const/16 v0, 0x31

    if-eq p0, v0, :cond_1

    const/16 v0, 0x32

    if-eq p0, v0, :cond_0

    sparse-switch p0, :sswitch_data_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    packed-switch p0, :pswitch_data_6

    .line 4365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<unknown request>: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4312
    :pswitch_0
    const-string v0, "ImsRILConstants.RIL_REQUEST_SET_MD_IMSCFG"

    return-object v0

    .line 4337
    :pswitch_1
    const-string v0, "RIL_REQUEST_RUN_GBA"

    return-object v0

    .line 4336
    :pswitch_2
    const-string v0, "SET_CALL_FORWARD_IN_TIME_SLOT"

    return-object v0

    .line 4335
    :pswitch_3
    const-string v0, "QUERY_CALL_FORWARD_IN_TIME_SLOT"

    return-object v0

    .line 4333
    :pswitch_4
    const-string v0, "SET_COLR"

    return-object v0

    .line 4331
    :pswitch_5
    const-string v0, "SET_COLP"

    return-object v0

    .line 4311
    :pswitch_6
    const-string v0, "RIL_REQUEST_SET_VOICE_DOMAIN_PREFERENCE"

    return-object v0

    .line 4332
    :pswitch_7
    const-string v0, "GET_COLR"

    return-object v0

    .line 4330
    :pswitch_8
    const-string v0, "GET_COLP"

    return-object v0

    .line 4329
    :pswitch_9
    const-string v0, "SET_CLIP"

    return-object v0

    .line 4290
    :pswitch_a
    const-string v0, "RESUME_CALL"

    return-object v0

    .line 4289
    :pswitch_b
    const-string v0, "HOLD_CALL"

    return-object v0

    .line 4288
    :pswitch_c
    const-string v0, "IMS_ECT"

    return-object v0

    .line 4287
    :pswitch_d
    const-string v0, "IMS_DEREG_NOTIFICATION"

    return-object v0

    .line 4284
    :pswitch_e
    const-string v0, "IMS_BEARER_STATE_CONFIRM"

    return-object v0

    .line 4272
    :pswitch_f
    const-string v0, "SET_PROVISION_VALUE"

    return-object v0

    .line 4271
    :pswitch_10
    const-string v0, "GET_PROVISION_VALUE"

    return-object v0

    .line 4270
    :pswitch_11
    const-string v0, "SET_IMSCFG"

    return-object v0

    .line 4268
    :pswitch_12
    const-string v0, "VIDEO_CALL_ACCEPT"

    return-object v0

    .line 4267
    :pswitch_13
    const-string v0, "SET_IMS_VIDEO_ENABLE"

    return-object v0

    .line 4266
    :pswitch_14
    const-string v0, "SET_VIWIFI_ENABLE"

    return-object v0

    .line 4265
    :pswitch_15
    const-string v0, "SET_VILTE_ENABLE"

    return-object v0

    .line 4264
    :pswitch_16
    const-string v0, "SET_WFC_ENABLE"

    return-object v0

    .line 4263
    :pswitch_17
    const-string v0, "SET_VOLTE_ENABLE"

    return-object v0

    .line 4262
    :pswitch_18
    const-string v0, "SET_IMS_ENABLE"

    return-object v0

    .line 4327
    :pswitch_19
    const-string v0, "CHANGE_BARRING_PASSWORD"

    return-object v0

    .line 4326
    :pswitch_1a
    const-string v0, "SET_FACILITY_LOCK"

    return-object v0

    .line 4325
    :pswitch_1b
    const-string v0, "QUERY_FACILITY_LOCK"

    return-object v0

    .line 4324
    :pswitch_1c
    const-string v0, "SET_CALL_WAITING"

    return-object v0

    .line 4323
    :pswitch_1d
    const-string v0, "QUERY_CALL_WAITING"

    return-object v0

    .line 4320
    :pswitch_1e
    const-string v0, "SET_CALL_FORWARD"

    return-object v0

    .line 4319
    :pswitch_1f
    const-string v0, "QUERY_CALL_FORWARD_STATUS"

    return-object v0

    .line 4322
    :pswitch_20
    const-string v0, "SET_CLIR"

    return-object v0

    .line 4321
    :pswitch_21
    const-string v0, "GET_CLIR"

    return-object v0

    .line 4269
    :sswitch_0
    const-string v0, "ECC_REDIAL_APPROVE"

    return-object v0

    .line 4363
    :sswitch_1
    const-string v0, "RIL_REQUEST_TOGGLE_RTT_AUDIO_INDICATION"

    return-object v0

    .line 4361
    :sswitch_2
    const-string v0, "RIL_REQUEST_QUERY_SSAC_STATUS"

    return-object v0

    .line 4359
    :sswitch_3
    const-string v0, "RIL_REQUEST_SET_IMS_CALL_MODE"

    return-object v0

    .line 4357
    :sswitch_4
    const-string v0, "RIL_REQUEST_SIP_HEADER_REPORT"

    return-object v0

    .line 4355
    :sswitch_5
    const-string v0, "RIL_REQUEST_SET_SIP_HEADER"

    return-object v0

    .line 4255
    :sswitch_6
    const-string v0, "HANGUP_WITH_REASON"

    return-object v0

    .line 4352
    :sswitch_7
    const-string v0, "RIL_REQUEST_QUERY_VOPS_STATUS"

    return-object v0

    .line 4351
    :sswitch_8
    const-string v0, "RIL_REQUEST_RTT_MODIFY_REQUST_RESPONSE"

    return-object v0

    .line 4349
    :sswitch_9
    const-string v0, "RIL_REQUEST_SEND_RTT_TEXT"

    return-object v0

    .line 4347
    :sswitch_a
    const-string v0, "RIL_REQUEST_SEND_RTT_MODIFY_REQUEST"

    return-object v0

    .line 4345
    :sswitch_b
    const-string v0, "RIL_REQUEST_SET_RTT_MODE"

    return-object v0

    .line 4316
    :sswitch_c
    const-string v0, "CDMA_SMS_ACKNOWLEDGE_EX"

    return-object v0

    .line 4315
    :sswitch_d
    const-string v0, "RIL_REQUEST_SMS_ACKNOWLEDGE_EX"

    return-object v0

    .line 4340
    :sswitch_e
    const-string v0, "SETUP_XCAP_USER_AGENT_STRING"

    return-object v0

    .line 4342
    :sswitch_f
    const-string v0, "RIL_REQUEST_SET_RCS_UA_ENABLE"

    return-object v0

    .line 4339
    :sswitch_10
    const-string v0, "RIL_REQUEST_RESET_SUPP_SERV"

    return-object v0

    .line 4338
    :sswitch_11
    const-string v0, "RIL_REQUEST_GET_XCAP_STATUS"

    return-object v0

    .line 4282
    :sswitch_12
    const-string v0, "IMS_CONFIG_GET_RESOURCE_CAP"

    return-object v0

    .line 4280
    :sswitch_13
    const-string v0, "IMS_CONFIG_GET_PROVISION"

    return-object v0

    .line 4278
    :sswitch_14
    const-string v0, "IMS_CONFIG_SET_PROVISION"

    return-object v0

    .line 4276
    :sswitch_15
    const-string v0, "IMS_CONFIG_GET_FEATURE"

    return-object v0

    .line 4274
    :sswitch_16
    const-string v0, "IMS_CONFIG_SET_FEATURE"

    return-object v0

    .line 4286
    :sswitch_17
    const-string v0, "RIL_REQUEST_SET_IMS_BEARER_NOTIFICATION"

    return-object v0

    .line 4314
    :sswitch_18
    const-string v0, "RIL_REQUEST_IMS_SEND_SMS_EX"

    return-object v0

    .line 4300
    :sswitch_19
    const-string v0, "IMS_VT_DIAL"

    return-object v0

    .line 4299
    :sswitch_1a
    const-string v0, "IMS_DIAL"

    return-object v0

    .line 4297
    :sswitch_1b
    const-string v0, "SET_IMS_REGISTRATION_REPORT"

    return-object v0

    .line 4298
    :sswitch_1c
    const-string v0, "PULL_CALL"

    return-object v0

    .line 4295
    :sswitch_1d
    const-string v0, "SET_WFC_PROFILE"

    return-object v0

    .line 4294
    :sswitch_1e
    const-string v0, "CANCEL_USSI"

    return-object v0

    .line 4293
    :sswitch_1f
    const-string v0, "SEND_USSI"

    return-object v0

    .line 4292
    :sswitch_20
    const-string v0, "VT_DIAL_WITH_SIP_URI"

    return-object v0

    .line 4307
    :sswitch_21
    const-string v0, "RIL_REQUEST_REMOVE_IMS_CONFERENCE_CALL_MEMBER"

    return-object v0

    .line 4305
    :sswitch_22
    const-string v0, "RIL_REQUEST_ADD_IMS_CONFERENCE_CALL_MEMBER"

    return-object v0

    .line 4303
    :sswitch_23
    const-string v0, "RIL_REQUEST_CONFERENCE_DIAL"

    return-object v0

    .line 4302
    :sswitch_24
    const-string v0, "ImsRILConstants.RIL_REQUEST_SET_IMS_RTP_REPORT"

    return-object v0

    .line 4301
    :sswitch_25
    const-string v0, "IMS_EMERGENCY_DIAL"

    return-object v0

    .line 4291
    :sswitch_26
    const-string v0, "SET_ECC_LIST"

    return-object v0

    .line 4256
    :sswitch_27
    const-string v0, "HANGUP_ALL"

    return-object v0

    .line 4309
    :sswitch_28
    const-string v0, "RIL_REQUEST_SET_CALL_INDICATION"

    return-object v0

    .line 4253
    :sswitch_29
    const-string v0, "GET_ACTIVITY_INFO"

    return-object v0

    .line 4259
    :sswitch_2a
    const-string v0, "SHUTDOWN"

    return-object v0

    .line 4251
    :sswitch_2b
    const-string v0, "EXIT_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 4252
    :sswitch_2c
    const-string v0, "EXPLICIT_CALL_TRANSFER"

    return-object v0

    .line 4328
    :sswitch_2d
    const-string v0, "QUERY_CLIP"

    return-object v0

    .line 4258
    :sswitch_2e
    const-string v0, "SET_MUTE"

    return-object v0

    .line 4244
    :sswitch_2f
    const-string v0, "ANSWER"

    return-object v0

    .line 4247
    :sswitch_30
    const-string v0, "DTMF"

    return-object v0

    .line 4257
    :sswitch_31
    const-string v0, "LAST_CALL_FAIL_CAUSE"

    return-object v0

    .line 4254
    :sswitch_32
    const-string v0, "HANGUP"

    return-object v0

    .line 4246
    :sswitch_33
    const-string v0, "DIAL"

    return-object v0

    .line 4249
    :cond_0
    const-string v0, "DTMF_STOP"

    return-object v0

    .line 4248
    :cond_1
    const-string v0, "DTMF_START"

    return-object v0

    .line 4245
    :cond_2
    const-string v0, "CONFERENCE"

    return-object v0

    .line 4261
    :cond_3
    const-string v0, "SWITCH_WAITING_OR_HOLDING_AND_ACTIVE"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_33
        0xc -> :sswitch_32
        0x12 -> :sswitch_31
        0x18 -> :sswitch_30
        0x28 -> :sswitch_2f
        0x35 -> :sswitch_2e
        0x37 -> :sswitch_2d
        0x48 -> :sswitch_2c
        0x63 -> :sswitch_2b
        0x81 -> :sswitch_2a
        0x87 -> :sswitch_29
        0x7e0 -> :sswitch_28
        0x7e3 -> :sswitch_27
        0x7ee -> :sswitch_26
        0x827 -> :sswitch_25
        0x828 -> :sswitch_24
        0x829 -> :sswitch_23
        0x82a -> :sswitch_22
        0x82b -> :sswitch_21
        0x82c -> :sswitch_20
        0x82d -> :sswitch_1f
        0x82e -> :sswitch_1e
        0x82f -> :sswitch_1d
        0x830 -> :sswitch_1c
        0x831 -> :sswitch_1b
        0x832 -> :sswitch_1a
        0x833 -> :sswitch_19
        0x855 -> :sswitch_18
        0x857 -> :sswitch_17
        0x858 -> :sswitch_16
        0x859 -> :sswitch_15
        0x85a -> :sswitch_14
        0x85b -> :sswitch_13
        0x85d -> :sswitch_12
        0x873 -> :sswitch_11
        0x874 -> :sswitch_10
        0x876 -> :sswitch_f
        0x877 -> :sswitch_e
        0x87a -> :sswitch_d
        0x87c -> :sswitch_c
        0x87e -> :sswitch_b
        0x87f -> :sswitch_a
        0x880 -> :sswitch_9
        0x881 -> :sswitch_8
        0x882 -> :sswitch_7
        0x883 -> :sswitch_6
        0x884 -> :sswitch_5
        0x885 -> :sswitch_4
        0x886 -> :sswitch_3
        0x887 -> :sswitch_2
        0x888 -> :sswitch_1
        0x889 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2a
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x815
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x81b
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x822
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x837
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x84a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private resetMtkProxyAndRequestList()V
    .locals 2

    .line 4580
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    .line 4583
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 4585
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setRadioState(I)V

    .line 4587
    invoke-static {}, Lcom/mediatek/ims/ril/RILRequest;->resetSerial()V

    .line 4589
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->clearRequestList(IZ)V

    .line 4594
    return-void
.end method

.method private resetProxyAndRequestList()V
    .locals 2

    .line 658
    const-string v0, "resetProxyAndRequestList"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 659
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 662
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 664
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setRadioState(I)V

    .line 666
    invoke-static {}, Lcom/mediatek/ims/ril/RILRequest;->resetSerial()V

    .line 668
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->clearRequestList(IZ)V

    .line 673
    return-void
.end method

.method static responseToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "response"    # I

    .line 4163
    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_a

    const/16 v0, 0x3f3

    if-eq p0, v0, :cond_9

    const/16 v0, 0xbc7

    if-eq p0, v0, :cond_8

    const/16 v0, 0xbd0

    if-eq p0, v0, :cond_7

    const/16 v0, 0xbd3

    if-eq p0, v0, :cond_6

    const/16 v0, 0xbe9

    if-eq p0, v0, :cond_5

    const/16 v0, 0xc0d

    if-eq p0, v0, :cond_4

    const/16 v0, 0xc36

    if-eq p0, v0, :cond_3

    const/16 v0, 0xc39

    if-eq p0, v0, :cond_2

    const/16 v0, 0xbeb

    if-eq p0, v0, :cond_1

    const/16 v0, 0xbec

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    .line 4238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<unknown response>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4237
    :pswitch_0
    const-string v0, "RIL_UNSOL_SIP_HEADER"

    return-object v0

    .line 4233
    :pswitch_1
    const-string v0, "RIL_UNSOL_VOPS_INDICATION"

    return-object v0

    .line 4231
    :pswitch_2
    const-string v0, "RIL_UNSOL_AUDIO_INDICATION"

    return-object v0

    .line 4229
    :pswitch_3
    const-string v0, "RIL_UNSOL_RTT_MODIFY_REQUEST_RECEIVE"

    return-object v0

    .line 4227
    :pswitch_4
    const-string v0, "RIL_UNSOL_RTT_CAPABILITY_INDICATION"

    return-object v0

    .line 4225
    :pswitch_5
    const-string v0, "RIL_UNSOL_RTT_TEXT_RECEIVE"

    return-object v0

    .line 4223
    :pswitch_6
    const-string v0, "RIL_UNSOL_RTT_MODIFY_RESPONSE"

    return-object v0

    .line 4215
    :pswitch_7
    const-string v0, "RIL_UNSOL_NO_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 4213
    :pswitch_8
    const-string v0, "UNSOL_CDMA_NEW_SMS_EX"

    return-object v0

    .line 4211
    :pswitch_9
    const-string v0, "RIL_UNSOL_RESPONSE_NEW_SMS_EX"

    return-object v0

    .line 4209
    :pswitch_a
    const-string v0, "RIL_UNSOL_RESPONSE_NEW_SMS_STATUS_REPORT_EX"

    return-object v0

    .line 4198
    :pswitch_b
    const-string v0, "RIL_UNSOL_IMS_DATA_INFO_NOTIFY"

    return-object v0

    .line 4181
    :pswitch_c
    const-string v0, "ImsRILConstants.RIL_UNSOL_ON_VOLTE_SUBSCRIPTION"

    return-object v0

    .line 4207
    :pswitch_d
    const-string v0, "IMS_CONFIG_LOADED"

    return-object v0

    .line 4203
    :pswitch_e
    const-string v0, "IMS_CONFIG_CHANGED"

    return-object v0

    .line 4205
    :pswitch_f
    const-string v0, "IMS_FEATURE_CHANGED"

    return-object v0

    .line 4201
    :pswitch_10
    const-string v0, "DYNAMIC_IMS_SWITCH_COMPLETE"

    return-object v0

    .line 4219
    :pswitch_11
    const-string v0, "RIL_UNSOL_LTE_MESSAGE_WAITING_INDICATION"

    return-object v0

    .line 4217
    :pswitch_12
    const-string v0, "RIL_UNSOL_IMS_CONFERENCE_INFO_INDICATION"

    return-object v0

    .line 4195
    :pswitch_13
    const-string v0, "VOLTE_SETTING"

    return-object v0

    .line 4194
    :pswitch_14
    const-string v0, "ECT_INDICATION"

    return-object v0

    .line 4192
    :pswitch_15
    const-string v0, "IMS_DISABLE_START"

    return-object v0

    .line 4191
    :pswitch_16
    const-string v0, "IMS_ENABLE_START"

    return-object v0

    .line 4190
    :pswitch_17
    const-string v0, "IMS_DISABLE_DONE"

    return-object v0

    .line 4189
    :pswitch_18
    const-string v0, "IMS_ENABLE_DONE"

    return-object v0

    .line 4187
    :pswitch_19
    const-string v0, "IMS_REGISTRATION_INFO"

    return-object v0

    .line 4185
    :pswitch_1a
    const-string v0, "IMS_EVENT_PACKAGE_INDICATION"

    return-object v0

    .line 4179
    :pswitch_1b
    const-string v0, "ON_XUI"

    return-object v0

    .line 4178
    :pswitch_1c
    const-string v0, "UNSOL_IMS_RTP_INFO"

    return-object v0

    .line 4177
    :pswitch_1d
    const-string v0, "GET_PROVISION_DONE"

    return-object v0

    .line 4176
    :pswitch_1e
    const-string v0, "ON_USSI"

    return-object v0

    .line 4175
    :pswitch_1f
    const-string v0, "VIDEO_CAPABILITY_INDICATOR"

    return-object v0

    .line 4173
    :pswitch_20
    const-string v0, "CALLMOD_CHANGE_INDICATOR"

    return-object v0

    .line 4171
    :pswitch_21
    const-string v0, "SIP_CALL_PROGRESS_INDICATOR"

    return-object v0

    .line 4169
    :pswitch_22
    const-string v0, "ECONF_RESULT_INDICATION"

    return-object v0

    .line 4165
    :pswitch_23
    const-string v0, "CALL_INFO_INDICATION"

    return-object v0

    .line 4193
    :cond_0
    const-string v0, "IMS_DEREG_DONE"

    return-object v0

    .line 4197
    :cond_1
    const-string v0, "RIL_UNSOL_IMS_BEARER_INIT"

    return-object v0

    .line 4221
    :cond_2
    const-string v0, "RIL_UNSOL_IMS_DIALOG_INDICATION"

    return-object v0

    .line 4235
    :cond_3
    const-string v0, "RIL_UNSOL_CALL_ADDITIONAL_INFO"

    return-object v0

    .line 4199
    :cond_4
    const-string v0, "IMS_MULTIIMS_COUNT"

    return-object v0

    .line 4196
    :cond_5
    const-string v0, "IMS_BEARER_STATE_NOTIFY"

    return-object v0

    .line 4188
    :cond_6
    const-string v0, "SPEECH_CODEC_INFO"

    return-object v0

    .line 4168
    :cond_7
    const-string v0, "CIPHER_INDICATION"

    return-object v0

    .line 4167
    :cond_8
    const-string v0, "INCOMING_CALL_INDICATION"

    return-object v0

    .line 4183
    :cond_9
    const-string v0, "RIL_UNSOL_SUPP_SVC_NOTIFICATION"

    return-object v0

    .line 4164
    :cond_a
    const-string v0, "RADIO_STATE_CHANGED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xbd7
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc11
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc26
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xc2c
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static retToString(ILjava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p0, "req"    # I
    .param p1, "ret"    # Ljava/lang/Object;

    .line 4370
    if-nez p1, :cond_0

    const-string v0, ""

    return-object v0

    .line 4375
    :cond_0
    instance-of v0, p1, [I

    const-string v1, ", "

    const-string v2, "}"

    const-string v3, "{"

    if-eqz v0, :cond_2

    .line 4376
    move-object v0, p1

    check-cast v0, [I

    .line 4377
    .local v0, "intArray":[I
    array-length v4, v0

    .line 4378
    .local v4, "length":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 4379
    .local v3, "sb":Ljava/lang/StringBuilder;
    if-lez v4, :cond_1

    .line 4380
    const/4 v5, 0x0

    .line 4381
    .local v5, "i":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    aget v5, v0, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4382
    :goto_0
    if-ge v6, v4, :cond_1

    .line 4383
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    aget v6, v0, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v6, v5

    goto :goto_0

    .line 4386
    .end local v5    # "i":I
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4387
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4388
    .local v0, "s":Ljava/lang/String;
    goto :goto_2

    .end local v0    # "s":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "length":I
    :cond_2
    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 4389
    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    .line 4390
    .local v0, "strings":[Ljava/lang/String;
    array-length v4, v0

    .line 4391
    .restart local v4    # "length":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 4392
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    if-lez v4, :cond_3

    .line 4393
    const/4 v5, 0x0

    .line 4394
    .restart local v5    # "i":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    aget-object v5, v0, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4395
    :goto_1
    if-ge v6, v4, :cond_3

    .line 4396
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    aget-object v6, v0, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v5

    goto :goto_1

    .line 4399
    .end local v5    # "i":I
    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4400
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4401
    .local v0, "s":Ljava/lang/String;
    goto :goto_2

    .line 4402
    .end local v0    # "s":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "length":I
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4404
    .restart local v0    # "s":Ljava/lang/String;
    :goto_2
    return-object v0
.end method

.method private sendAck()V
    .locals 5

    .line 3585
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v1, 0x0

    const/16 v2, 0x320

    invoke-static {v2, v1, v0}, Lcom/mediatek/ims/ril/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 3587
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->acquireWakeLock(Lcom/mediatek/ims/ril/RILRequest;I)V

    .line 3588
    invoke-direct {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 3589
    .local v1, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v1, :cond_0

    .line 3591
    :try_start_0
    invoke-interface {v1}, Landroid/hardware/radio/V1_0/IRadio;->responseAcknowledgement()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3595
    :goto_0
    goto :goto_1

    .line 3592
    :catch_0
    move-exception v2

    .line 3593
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "sendAck"

    invoke-direct {p0, v0, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3594
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendAck: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 3597
    :cond_0
    const-string v2, "IMS_RILA"

    const-string v3, "Error trying to send ack, radioProxy = null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3599
    :goto_1
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RILRequest;->release()V

    .line 3600
    return-void
.end method

.method private sendDtmfQueueRR(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V
    .locals 12
    .param p1, "dqrr"    # Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    .line 3314
    iget-object v0, p1, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->rr:Lcom/mediatek/ims/ril/RILRequest;

    .line 3315
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    iget-object v1, v0, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 3316
    .local v1, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    const-string v2, "] request: "

    const-string v3, "get RadioProxy null. (["

    const-string v4, ")"

    if-nez v1, :cond_0

    .line 3317
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3318
    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3317
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 3319
    return-void

    .line 3322
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " (by DtmfQueueRR)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3325
    const/4 v5, 0x0

    .line 3326
    .local v5, "params":[Ljava/lang/Object;
    :try_start_0
    iget v6, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v7, 0xf

    if-eq v6, v7, :cond_8

    const/16 v7, 0x10

    if-eq v6, v7, :cond_7

    const/16 v7, 0x31

    const-string v8, " params error. ("

    const-string v9, "request "

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v6, v7, :cond_5

    const/16 v7, 0x32

    if-eq v6, v7, :cond_4

    const/16 v7, 0x34

    if-eq v6, v7, :cond_2

    const/16 v7, 0x48

    if-eq v6, v7, :cond_1

    .line 3360
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3361
    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3360
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3344
    :cond_1
    iget v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v1, v2}, Landroid/hardware/radio/V1_0/IRadio;->explicitCallTransfer(I)V

    .line 3345
    goto/16 :goto_0

    .line 3334
    :cond_2
    iget-object v2, p1, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->params:[Ljava/lang/Object;

    .line 3335
    .end local v5    # "params":[Ljava/lang/Object;
    .local v2, "params":[Ljava/lang/Object;
    array-length v3, v2

    if-eq v3, v11, :cond_3

    .line 3336
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3337
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3336
    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    goto :goto_0

    .line 3339
    :cond_3
    aget-object v3, v2, v10

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3340
    .local v3, "gsmIndex":I
    iget v5, v0, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v1, v5, v3}, Landroid/hardware/radio/V1_0/IRadio;->separateConnection(II)V

    .line 3342
    .end local v3    # "gsmIndex":I
    goto :goto_0

    .line 3357
    .end local v2    # "params":[Ljava/lang/Object;
    .restart local v5    # "params":[Ljava/lang/Object;
    :cond_4
    iget v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v1, v2}, Landroid/hardware/radio/V1_0/IRadio;->stopDtmf(I)V

    .line 3358
    goto :goto_0

    .line 3347
    :cond_5
    iget-object v2, p1, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->params:[Ljava/lang/Object;

    .line 3348
    .end local v5    # "params":[Ljava/lang/Object;
    .restart local v2    # "params":[Ljava/lang/Object;
    array-length v3, v2

    if-eq v3, v11, :cond_6

    .line 3349
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3350
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3349
    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    goto :goto_0

    .line 3352
    :cond_6
    aget-object v3, v2, v10

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    .line 3353
    .local v3, "c":C
    iget v5, v0, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Landroid/hardware/radio/V1_0/IRadio;->startDtmf(ILjava/lang/String;)V

    .line 3355
    .end local v3    # "c":C
    goto :goto_0

    .line 3331
    .end local v2    # "params":[Ljava/lang/Object;
    .restart local v5    # "params":[Ljava/lang/Object;
    :cond_7
    iget v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v1, v2}, Landroid/hardware/radio/V1_0/IRadio;->conference(I)V

    .line 3332
    goto :goto_0

    .line 3328
    :cond_8
    iget v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v1, v2}, Landroid/hardware/radio/V1_0/IRadio;->switchWaitingOrHoldingAndActive(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3329
    nop

    .line 3366
    .end local v5    # "params":[Ljava/lang/Object;
    :goto_0
    goto :goto_1

    .line 3363
    :catch_0
    move-exception v2

    .line 3364
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DtmfQueueRR("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3365
    invoke-static {v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3364
    invoke-direct {p0, v0, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3367
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private sendMtkAck()V
    .locals 5

    .line 3607
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v1, 0x0

    const/16 v2, 0x320

    invoke-static {v2, v1, v0}, Lcom/mediatek/ims/ril/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 3609
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->acquireWakeLock(Lcom/mediatek/ims/ril/RILRequest;I)V

    .line 3610
    invoke-direct {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v1

    .line 3611
    .local v1, "RadioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v1, :cond_0

    .line 3613
    :try_start_0
    invoke-interface {v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->responseAcknowledgementMtk()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3617
    :goto_0
    goto :goto_1

    .line 3614
    :catch_0
    move-exception v2

    .line 3615
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "sendMtkAck"

    invoke-direct {p0, v0, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3616
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendMtkAck: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 3619
    :cond_0
    const-string v2, "IMS_RILA"

    const-string v3, "Error trying to send MTK ack, RadioProxy = null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3621
    :goto_1
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RILRequest;->release()V

    .line 3622
    return-void
.end method


# virtual methods
.method public accept()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4453
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->accept(Landroid/os/Message;)V

    .line 4454
    return-void
.end method

.method public accept(Landroid/os/Message;)V
    .locals 5
    .param p1, "response"    # Landroid/os/Message;

    .line 944
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 945
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 946
    const/16 v1, 0x28

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 949
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 952
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->acceptCall(I)V

    .line 953
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilAnswer(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 956
    goto :goto_0

    .line 954
    :catch_0
    move-exception v2

    .line 955
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "acceptCall"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 958
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public acceptVideoCall(II)V
    .locals 1
    .param p1, "videoMode"    # I
    .param p2, "callId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4570
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->acceptVideoCall(IILandroid/os/Message;)V

    .line 4571
    return-void
.end method

.method public acceptVideoCall(IILandroid/os/Message;)V
    .locals 4
    .param p1, "videoMode"    # I
    .param p2, "callId"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 971
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 972
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 973
    const/16 v1, 0x81c

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 977
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 978
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " videoMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 977
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 982
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->videoCallAccept(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 985
    goto :goto_0

    .line 983
    :catch_0
    move-exception v2

    .line 984
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "acceptCall"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 987
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public acknowledgeLastIncomingCdmaSmsEx(ZILandroid/os/Message;)V
    .locals 5
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 3752
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 3753
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 3754
    const/16 v1, 0x87c

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3758
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " success = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " cause = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3762
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 3763
    .local v2, "msg":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    xor-int/lit8 v3, p1, 0x1

    iput v3, v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;->errorClass:I

    .line 3764
    iput p2, v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;->smsCauseCode:I

    .line 3767
    :try_start_0
    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v3, v2}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->acknowledgeLastIncomingCdmaSmsEx(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3770
    goto :goto_0

    .line 3768
    :catch_0
    move-exception v3

    .line 3769
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "acknowledgeLastIncomingCdmaSms"

    invoke-direct {p0, v1, v4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3772
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "msg":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 3732
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 3733
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 3734
    const/16 v1, 0x87a

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3738
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " success = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " cause = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3743
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->acknowledgeLastIncomingGsmSmsEx(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3746
    goto :goto_0

    .line 3744
    :catch_0
    move-exception v2

    .line 3745
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "acknowledgeLastIncomingGsmSms"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3748
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public approveEccRedial(IILandroid/os/Message;)V
    .locals 4
    .param p1, "approve"    # I
    .param p2, "callId"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 999
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 1000
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 1001
    const/16 v1, 0x889

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1004
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1005
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " approve = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1004
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1009
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->eccRedialApprove(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1012
    goto :goto_0

    .line 1010
    :catch_0
    move-exception v2

    .line 1011
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "approveEccRedial"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1014
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public cancelPendingUssi(Landroid/os/Message;)V
    .locals 4
    .param p1, "response"    # Landroid/os/Message;

    .line 2357
    const-string v0, "persist.vendor.ims.ussi.ap"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2359
    const-string v0, "Wrap cancelPendingUssi"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2362
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2363
    return-void

    .line 2366
    :cond_0
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 2367
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_1

    .line 2368
    const/16 v1, 0x82e

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2372
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2373
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2372
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2377
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->cancelUssi(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2380
    goto :goto_0

    .line 2378
    :catch_0
    move-exception v2

    .line 2379
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "cancelUssi"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2382
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .locals 4
    .param p1, "response"    # Landroid/os/Message;

    .line 1158
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 1159
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 1160
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1163
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1166
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleChldRelatedRequest(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)V

    .line 1168
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    return-void
.end method

.method public conferenceDial([Ljava/lang/String;IZLandroid/os/Message;)V
    .locals 8
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "isVideoCall"    # Z
    .param p4, "result"    # Landroid/os/Message;

    .line 2221
    if-nez p1, :cond_0

    .line 2222
    const-string v0, "Participants MUST NOT be null in conferenceDial"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 2223
    return-void

    .line 2226
    :cond_0
    invoke-direct {p0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 2227
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_2

    .line 2228
    const/16 v1, 0x829

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2232
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2233
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " clirMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isVideoCall = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2232
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2237
    new-instance v2, Lvendor/mediatek/hardware/mtkradioex/V1_0/ConferenceDial;

    invoke-direct {v2}, Lvendor/mediatek/hardware/mtkradioex/V1_0/ConferenceDial;-><init>()V

    .line 2238
    .local v2, "dialInfo":Lvendor/mediatek/hardware/mtkradioex/V1_0/ConferenceDial;
    iput p2, v2, Lvendor/mediatek/hardware/mtkradioex/V1_0/ConferenceDial;->clir:I

    .line 2239
    iput-boolean p3, v2, Lvendor/mediatek/hardware/mtkradioex/V1_0/ConferenceDial;->isVideoCall:Z

    .line 2240
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, p1, v4

    .line 2241
    .local v5, "dialNumber":Ljava/lang/String;
    iget-object v6, v2, Lvendor/mediatek/hardware/mtkradioex/V1_0/ConferenceDial;->dialNumbers:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2243
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "conferenceDial: dialNumber "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2244
    invoke-static {v5}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2243
    invoke-virtual {p0, v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2240
    .end local v5    # "dialNumber":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2249
    :cond_1
    :try_start_0
    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v3, v2}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->conferenceDial(ILvendor/mediatek/hardware/mtkradioex/V1_0/ConferenceDial;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2253
    goto :goto_1

    .line 2250
    :catch_0
    move-exception v3

    .line 2251
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "IMS_RILA"

    const-string v5, "conferenceDial failed"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2252
    const-string v4, "conferenceDial"

    invoke-direct {p0, v1, v4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2255
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "dialInfo":Lvendor/mediatek/hardware/mtkradioex/V1_0/ConferenceDial;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void
.end method

.method protected constructCdmaSendSmsRilRequest(Landroid/hardware/radio/V1_0/CdmaSmsMessage;[B)V
    .locals 8
    .param p1, "msg"    # Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    .param p2, "pdu"    # [B

    .line 3652
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3653
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3656
    .local v1, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->teleserviceId:I

    .line 3657
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    int-to-byte v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->isServicePresent:Z

    .line 3658
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->serviceCategory:I

    .line 3659
    iget-object v2, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v5

    iput v5, v2, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->digitMode:I

    .line 3660
    iget-object v2, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v5

    iput v5, v2, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->numberMode:I

    .line 3661
    iget-object v2, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v5

    iput v5, v2, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->numberType:I

    .line 3662
    iget-object v2, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v5

    iput v5, v2, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->numberPlan:I

    .line 3663
    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v2

    int-to-byte v2, v2

    .line 3664
    .local v2, "addrNbrOfDigits":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v2, :cond_1

    .line 3665
    iget-object v6, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->digits:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3664
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3667
    .end local v5    # "i":I
    :cond_1
    iget-object v5, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v6

    iput v6, v5, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->subaddressType:I

    .line 3668
    iget-object v5, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v6

    int-to-byte v6, v6

    if-ne v6, v4, :cond_2

    move v3, v4

    :cond_2
    iput-boolean v3, v5, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->odd:Z

    .line 3669
    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v3

    int-to-byte v3, v3

    .line 3670
    .local v3, "subaddrNbrOfDigits":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v3, :cond_3

    .line 3671
    iget-object v5, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    iget-object v5, v5, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->digits:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3670
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 3674
    .end local v4    # "i":I
    :cond_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v4

    .line 3675
    .local v4, "bearerDataLength":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3
    if-ge v5, v4, :cond_4

    .line 3676
    iget-object v6, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->bearerData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3675
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 3683
    .end local v5    # "i":I
    :cond_4
    goto :goto_4

    .line 3678
    .end local v2    # "addrNbrOfDigits":I
    .end local v3    # "subaddrNbrOfDigits":I
    .end local v4    # "bearerDataLength":I
    :catch_0
    move-exception v2

    .line 3680
    .local v2, "ex":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendSmsCdma: conversion from input stream to object failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3684
    .end local v2    # "ex":Ljava/io/IOException;
    :goto_4
    return-void
.end method

.method protected convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 857
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public deregisterIms(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .line 1309
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->deregisterImsWithCause(ILandroid/os/Message;)V

    .line 1310
    return-void
.end method

.method public deregisterImsWithCause(ILandroid/os/Message;)V
    .locals 4
    .param p1, "cause"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1321
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 1322
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 1323
    const/16 v1, 0x822

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1327
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1328
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1327
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1332
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->imsDeregNotification(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1335
    goto :goto_0

    .line 1333
    :catch_0
    move-exception v2

    .line 1334
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "imsDeregNotification"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1337
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 2112
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    .line 2113
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 7
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "response"    # Landroid/os/Message;

    .line 2127
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "> "

    if-nez v0, :cond_2

    .line 2128
    invoke-direct {p0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2129
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_1

    .line 2130
    const/16 v2, 0x832

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v2, p4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v2

    .line 2132
    .local v2, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v3, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 2133
    .local v3, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/hardware/radio/V1_0/Dial;->address:Ljava/lang/String;

    .line 2134
    iput p2, v3, Landroid/hardware/radio/V1_0/Dial;->clir:I

    .line 2135
    if-eqz p3, :cond_0

    .line 2136
    new-instance v4, Landroid/hardware/radio/V1_0/UusInfo;

    invoke-direct {v4}, Landroid/hardware/radio/V1_0/UusInfo;-><init>()V

    .line 2137
    .local v4, "info":Landroid/hardware/radio/V1_0/UusInfo;
    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v5

    iput v5, v4, Landroid/hardware/radio/V1_0/UusInfo;->uusType:I

    .line 2138
    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v5

    iput v5, v4, Landroid/hardware/radio/V1_0/UusInfo;->uusDcs:I

    .line 2139
    new-instance v5, Ljava/lang/String;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v4, Landroid/hardware/radio/V1_0/UusInfo;->uusData:Ljava/lang/String;

    .line 2140
    iget-object v5, v3, Landroid/hardware/radio/V1_0/Dial;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2144
    .end local v4    # "info":Landroid/hardware/radio/V1_0/UusInfo;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2147
    :try_start_0
    iget v1, v2, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v1, v3}, Landroid/hardware/radio/V1_0/IRadio;->dial(ILandroid/hardware/radio/V1_0/Dial;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2150
    goto :goto_0

    .line 2148
    :catch_0
    move-exception v1

    .line 2149
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "dial"

    invoke-direct {p0, v2, v4, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2152
    .end local v0    # "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v3    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :cond_1
    :goto_0
    goto :goto_1

    .line 2154
    :cond_2
    invoke-direct {p0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 2155
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_3

    .line 2156
    const/16 v2, 0x826

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v2, p4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v2

    .line 2161
    .restart local v2    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2164
    :try_start_1
    iget v1, v2, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v1, p1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->dialWithSipUri(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2167
    goto :goto_1

    .line 2165
    :catch_1
    move-exception v1

    .line 2166
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, "dialWithSipUri"

    invoke-direct {p0, v2, v3, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2170
    .end local v0    # "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_3
    :goto_1
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 4
    .param p1, "response"    # Landroid/os/Message;

    .line 1076
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 1077
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 1078
    const/16 v1, 0x48

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1082
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1085
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleChldRelatedRequest(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)V

    .line 1087
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    return-void
.end method

.method public forceHangup(I)V
    .locals 1
    .param p1, "callId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4558
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->forceHangup(ILandroid/os/Message;)V

    .line 4559
    return-void
.end method

.method public forceHangup(II)V
    .locals 2
    .param p1, "callId"    # I
    .param p2, "reason"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceHangup with reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4564
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->forceHangup(ILandroid/os/Message;)V

    .line 4565
    return-void
.end method

.method public forceHangup(ILandroid/os/Message;)V
    .locals 4
    .param p1, "callId"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2971
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 2972
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 2973
    const/16 v1, 0x7f2

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2976
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2981
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->forceReleaseCall(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2984
    goto :goto_0

    .line 2982
    :catch_0
    move-exception v2

    .line 2983
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "forceHangup"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2986
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2564
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2565
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2566
    const/16 v1, 0x1f

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2568
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2570
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->getClir(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2573
    goto :goto_0

    .line 2571
    :catch_0
    move-exception v2

    .line 2572
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getCLIR"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2575
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getCOLP(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2692
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 2693
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 2694
    const/16 v1, 0x838

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2698
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2702
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->getColp(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2705
    goto :goto_0

    .line 2703
    :catch_0
    move-exception v2

    .line 2704
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getCOLP"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2707
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getCOLR(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2645
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 2646
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 2647
    const/16 v1, 0x839

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2651
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2655
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->getColr(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2658
    goto :goto_0

    .line 2656
    :catch_0
    move-exception v2

    .line 2657
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getCOLR"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2660
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getImsCfgFeatureValue(IILandroid/os/Message;)V
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "network"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1866
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 1867
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 1868
    const/16 v1, 0x859

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1872
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->getImsCfgFeatureValue(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1875
    goto :goto_0

    .line 1873
    :catch_0
    move-exception v2

    .line 1874
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getImsCfgFeatureValue"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1877
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getImsCfgProvisionValue(ILandroid/os/Message;)V
    .locals 4
    .param p1, "configId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1907
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 1908
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 1909
    const/16 v1, 0x85b

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1913
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->getImsCfgProvisionValue(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1916
    goto :goto_0

    .line 1914
    :catch_0
    move-exception v2

    .line 1915
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getImsCfgProvisionValue"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1918
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getImsCfgResourceCapValue(ILandroid/os/Message;)V
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1927
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 1928
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 1929
    const/16 v1, 0x85d    # 3.0E-42f

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1933
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->getImsCfgResourceCapValue(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1936
    goto :goto_0

    .line 1934
    :catch_0
    move-exception v2

    .line 1935
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getImsCfgResourceCapValue"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1938
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getLastCallFailCause(ILandroid/os/Message;)V
    .locals 0
    .param p1, "phoneid"    # I
    .param p2, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4498
    invoke-virtual {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getLastCallFailCause(Landroid/os/Message;)V

    .line 4499
    return-void
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2012
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2013
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2014
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2018
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2019
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2018
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2023
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->getLastCallFailCause(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2026
    goto :goto_0

    .line 2024
    :catch_0
    move-exception v2

    .line 2025
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getLastCallFailCause"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2028
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getOpCommandsInterface()Lcom/mediatek/ims/ril/OpImsCommandsInterface;
    .locals 1

    .line 867
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mOpCI:Lcom/mediatek/ims/ril/OpImsCommandsInterface;

    return-object v0
.end method

.method public getProvisionValue(ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "phoneid"    # I
    .param p2, "provisionStr"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4460
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getProvisionValue(Ljava/lang/String;Landroid/os/Message;)V

    .line 4461
    return-void
.end method

.method public getProvisionValue(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "provisionStr"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 1788
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 1789
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 1790
    const/16 v1, 0x81e

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1794
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1795
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " provisionStr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1794
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1799
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->getProvisionValue(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1802
    goto :goto_0

    .line 1800
    :catch_0
    move-exception v2

    .line 1801
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getProvisionValue"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1804
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getXcapStatus(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2868
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 2869
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 2870
    const/16 v1, 0x873

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2874
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2875
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2874
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2879
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->getXcapStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2882
    goto :goto_0

    .line 2880
    :catch_0
    move-exception v2

    .line 2881
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getXcapStatus"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2884
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method handleDtmfQueueNext(I)V
    .locals 6
    .param p1, "serial"    # I

    .line 3375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDtmfQueueNext (serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3377
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    monitor-enter v0

    .line 3378
    const/4 v1, 0x0

    .line 3379
    .local v1, "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->access$900(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3380
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 3381
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->access$900(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    .line 3382
    .local v3, "adqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->rr:Lcom/mediatek/ims/ril/RILRequest;

    iget v4, v4, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    if-ne v4, p1, :cond_0

    .line 3383
    move-object v1, v3

    .line 3384
    goto :goto_1

    .line 3379
    .end local v3    # "adqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3387
    .end local v2    # "i":I
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 3388
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot find serial "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " from mDtmfQueue. (size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 3389
    invoke-virtual {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3388
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    goto :goto_2

    .line 3391
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->remove(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 3393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove first item in dtmf queue done. (size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3397
    :goto_2
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 3398
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->get()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v2

    .line 3399
    .local v2, "dqrr2":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v3, v2, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->rr:Lcom/mediatek/ims/ril/RILRequest;

    .line 3401
    .local v3, "rr2":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3403
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendDtmfQueueRR(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 3404
    .end local v2    # "dqrr2":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    .end local v3    # "rr2":Lcom/mediatek/ims/ril/RILRequest;
    goto :goto_3

    .line 3405
    :cond_3
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->getPendingRequest()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 3406
    const-string v2, "send pending switch request"

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3407
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->getPendingRequest()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v2

    .line 3408
    .local v2, "pendingReq":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendDtmfQueueRR(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 3409
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->setSendChldRequest()V

    .line 3410
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->setPendingRequest(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 3413
    .end local v1    # "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    .end local v2    # "pendingReq":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    :cond_4
    :goto_3
    monitor-exit v0

    .line 3414
    return-void

    .line 3413
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hangup(IILandroid/os/Message;)V
    .locals 4
    .param p1, "callId"    # I
    .param p2, "reason"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 1049
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 1050
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 1052
    const/16 v1, 0x883

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1056
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1057
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1056
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1062
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->hangupWithReason(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1065
    goto :goto_0

    .line 1063
    :catch_0
    move-exception v2

    .line 1064
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "hangupWithReason"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1067
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public hangup(ILandroid/os/Message;)V
    .locals 4
    .param p1, "callId"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1024
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 1025
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 1026
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1030
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1031
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1030
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1034
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Landroid/hardware/radio/V1_0/IRadio;->hangup(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1037
    goto :goto_0

    .line 1035
    :catch_0
    move-exception v2

    .line 1036
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "hangup"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1039
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public hangupAllCall(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2036
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 2037
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 2038
    const/16 v1, 0x7e3

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2042
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2043
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2042
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2047
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->hangupAll(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2050
    goto :goto_0

    .line 2048
    :catch_0
    move-exception v2

    .line 2049
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "hangupAll"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2052
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public hold(ILandroid/os/Message;)V
    .locals 4
    .param p1, "callId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1106
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 1107
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 1108
    const/16 v1, 0x824

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1112
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1113
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1112
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1117
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->controlCall(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1120
    goto :goto_0

    .line 1118
    :catch_0
    move-exception v2

    .line 1119
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "holdCall"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1122
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public inviteParticipants(ILjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "confCallId"    # I
    .param p2, "participant"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 1950
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 1951
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->getInstance(I)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mediatek/ims/ImsServiceCallTracker;->getParticipantCallId(Ljava/lang/String;)I

    move-result v0

    .line 1954
    .local v0, "participantCallId":I
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->internalAddConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V

    .line 1956
    return-void
.end method

.method public inviteParticipantsByCallId(ILcom/mediatek/ims/ImsCallInfo;Landroid/os/Message;)V
    .locals 6
    .param p1, "confCallId"    # I
    .param p2, "callInfo"    # Lcom/mediatek/ims/ImsCallInfo;
    .param p3, "response"    # Landroid/os/Message;

    .line 1986
    const-string v0, "IMS_RILA"

    if-nez p2, :cond_0

    .line 1987
    const-string v1, "Invite participants failed, call info is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    return-void

    .line 1990
    :cond_0
    iget-object v1, p2, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    .line 1992
    .local v1, "callId":Ljava/lang/String;
    const/4 v2, -0x1

    .line 1994
    .local v2, "id":I
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1999
    .end local v2    # "id":I
    .local v0, "id":I
    nop

    .line 2001
    iget-object v2, p2, Lcom/mediatek/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->internalAddConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V

    .line 2002
    return-void

    .line 1995
    .end local v0    # "id":I
    .restart local v2    # "id":I
    :catch_0
    move-exception v3

    .line 1996
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invite participants failed: id is not integer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    return-void
.end method

.method public merge(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4552
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->conference(Landroid/os/Message;)V

    .line 4553
    return-void
.end method

.method public notifyImsServiceReady()V
    .locals 4

    .line 4648
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 4649
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 4651
    :try_start_0
    invoke-interface {v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->notifyImsServiceReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4654
    goto :goto_0

    .line 4652
    :catch_0
    move-exception v1

    .line 4653
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyImsServiceReady error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 4656
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method processIndication(I)V
    .locals 1
    .param p1, "indicationType"    # I

    .line 3424
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 3425
    invoke-direct {p0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendAck()V

    .line 3430
    :cond_0
    return-void
.end method

.method processMtkIndication(I)V
    .locals 1
    .param p1, "indicationType"    # I

    .line 3438
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 3439
    invoke-direct {p0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendMtkAck()V

    .line 3444
    :cond_0
    return-void
.end method

.method processRequestAck(I)V
    .locals 3
    .param p1, "serial"    # I

    .line 3448
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 3449
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/ril/RILRequest;

    .line 3450
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3451
    if-nez v1, :cond_0

    .line 3452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processRequestAck: Unexpected solicited ack response! serial: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "IMS_RILA"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3456
    :cond_0
    invoke-direct {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->decrementWakeLock(Lcom/mediatek/ims/ril/RILRequest;)V

    .line 3458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Ack < "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3461
    :goto_0
    return-void

    .line 3450
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)Lcom/mediatek/ims/ril/RILRequest;
    .locals 7
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "isProprietary"    # Z

    .line 3471
    iget v0, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->serial:I

    .line 3472
    .local v0, "serial":I
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    .line 3473
    .local v1, "error":I
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->type:I

    .line 3475
    .local v2, "type":I
    const/4 v3, 0x0

    .line 3477
    .local v3, "rr":Lcom/mediatek/ims/ril/RILRequest;
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 3478
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v4

    .line 3479
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/ims/ril/RILRequest;

    move-object v3, v5

    .line 3480
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3481
    if-nez v3, :cond_0

    .line 3482
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected solicited ack response! sn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "IMS_RILA"

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3484
    :cond_0
    invoke-direct {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->decrementWakeLock(Lcom/mediatek/ims/ril/RILRequest;)V

    .line 3486
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Ack < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3489
    :goto_0
    return-object v3

    .line 3480
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 3492
    :cond_1
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->findAndRemoveRequestFromList(I)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v3

    .line 3493
    if-nez v3, :cond_2

    .line 3494
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processResponse: Unexpected response! serial: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "IMS_RILA"

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3496
    const/4 v4, 0x0

    return-object v4

    .line 3500
    :cond_2
    invoke-direct {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->addToRilHistogram(Lcom/mediatek/ims/ril/RILRequest;)V

    .line 3502
    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    .line 3503
    if-eqz p2, :cond_3

    .line 3504
    invoke-direct {p0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendMtkAck()V

    goto :goto_1

    .line 3506
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendAck()V

    .line 3509
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Response received for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3510
    invoke-static {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Sending ack to ril.cpp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3509
    invoke-virtual {p0, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3519
    :cond_4
    iget v5, v3, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/16 v6, 0x81

    if-eq v5, v6, :cond_5

    goto :goto_2

    .line 3521
    :cond_5
    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setRadioState(I)V

    .line 3525
    :goto_2
    nop

    .line 3530
    return-object v3
.end method

.method processResponseDone(Lcom/mediatek/ims/ril/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V
    .locals 7
    .param p1, "rr"    # Lcom/mediatek/ims/ril/RILRequest;
    .param p2, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p3, "ret"    # Ljava/lang/Object;

    .line 3542
    iget v0, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const-string v1, "< "

    if-nez v0, :cond_0

    .line 3544
    iget v0, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/16 v2, 0x858

    if-eq v0, v2, :cond_1

    iget v0, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/16 v2, 0x859

    if-eq v0, v2, :cond_1

    iget v0, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/16 v2, 0x85a

    if-eq v0, v2, :cond_1

    iget v0, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/16 v2, 0x85b

    if-eq v0, v2, :cond_1

    iget v0, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/16 v2, 0x85d    # 3.0E-42f

    if-eq v0, v2, :cond_1

    .line 3549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3550
    invoke-static {v1, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3549
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    .line 3555
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3558
    iget v0, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    invoke-virtual {p1, v0, p3}, Lcom/mediatek/ims/ril/RILRequest;->onError(ILjava/lang/Object;)V

    .line 3560
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    iget v4, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    iget v5, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnRilSolicitedResponse(IIIILjava/lang/Object;)V

    .line 3563
    iget v0, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_2

    iget v0, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    iget v0, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/16 v1, 0x34

    if-eq v0, v1, :cond_2

    iget v0, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/16 v1, 0x48

    if-ne v0, v1, :cond_3

    .line 3567
    :cond_2
    const-string v0, "clear mIsSendChldRequest"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3568
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v0}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->resetSendChldRequest()V

    .line 3571
    :cond_3
    nop

    .line 3572
    iget v0, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->type:I

    if-nez v0, :cond_4

    .line 3573
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->decrementWakeLock(Lcom/mediatek/ims/ril/RILRequest;)V

    .line 3575
    :cond_4
    invoke-virtual {p1}, Lcom/mediatek/ims/ril/RILRequest;->release()V

    .line 3577
    return-void
.end method

.method public pullCall(Ljava/lang/String;ZLandroid/os/Message;)V
    .locals 4
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "isVideoCall"    # Z
    .param p3, "response"    # Landroid/os/Message;

    .line 3049
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 3050
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 3051
    const/16 v1, 0x830

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3054
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " target = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isVideoCall = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3060
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->pullCall(ILjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3063
    goto :goto_0

    .line 3061
    :catch_0
    move-exception v2

    .line 3062
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "pullCall"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3065
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2602
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2603
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2604
    const/16 v1, 0x37

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2606
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2608
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->getClip(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2611
    goto :goto_0

    .line 2609
    :catch_0
    move-exception v2

    .line 2610
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "queryCLIP"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2613
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public queryCallForwardInTimeSlotStatus(IILandroid/os/Message;)V
    .locals 8
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 2738
    const-string v0, ""

    .line 2739
    .local v0, "number":Ljava/lang/String;
    const-string v1, ""

    .line 2740
    .local v1, "timeSlotBegin":Ljava/lang/String;
    const-string v2, ""

    .line 2742
    .local v2, "timeSlotEnd":Ljava/lang/String;
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v3

    .line 2743
    .local v3, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v3, :cond_0

    .line 2744
    const/16 v4, 0x84d

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v4, p3, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v4

    .line 2748
    .local v4, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " cfreason = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " serviceClass = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2752
    new-instance v5, Lvendor/mediatek/hardware/mtkradioex/V1_0/CallForwardInfoEx;

    invoke-direct {v5}, Lvendor/mediatek/hardware/mtkradioex/V1_0/CallForwardInfoEx;-><init>()V

    .line 2754
    .local v5, "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/V1_0/CallForwardInfoEx;
    iput p1, v5, Lvendor/mediatek/hardware/mtkradioex/V1_0/CallForwardInfoEx;->reason:I

    .line 2755
    iput p2, v5, Lvendor/mediatek/hardware/mtkradioex/V1_0/CallForwardInfoEx;->serviceClass:I

    .line 2756
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lvendor/mediatek/hardware/mtkradioex/V1_0/CallForwardInfoEx;->toa:I

    .line 2757
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lvendor/mediatek/hardware/mtkradioex/V1_0/CallForwardInfoEx;->number:Ljava/lang/String;

    .line 2758
    const/4 v6, 0x0

    iput v6, v5, Lvendor/mediatek/hardware/mtkradioex/V1_0/CallForwardInfoEx;->timeSeconds:I

    .line 2759
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lvendor/mediatek/hardware/mtkradioex/V1_0/CallForwardInfoEx;->timeSlotBegin:Ljava/lang/String;

    .line 2760
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lvendor/mediatek/hardware/mtkradioex/V1_0/CallForwardInfoEx;->timeSlotEnd:Ljava/lang/String;

    .line 2763
    :try_start_0
    iget v6, v4, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v3, v6, v5}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->queryCallForwardInTimeSlotStatus(ILvendor/mediatek/hardware/mtkradioex/V1_0/CallForwardInfoEx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2766
    goto :goto_0

    .line 2764
    :catch_0
    move-exception v6

    .line 2765
    .local v6, "e":Ljava/lang/Exception;
    const-string v7, "queryCallForwardInTimeSlotStatus"

    invoke-direct {p0, v4, v7, v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2768
    .end local v4    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v5    # "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/V1_0/CallForwardInfoEx;
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .line 2494
    invoke-direct {p0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2495
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2496
    const/16 v1, 0x21

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2499
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cfreason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " serviceClass = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2502
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 2504
    .local v2, "cfInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    iput p1, v2, Landroid/hardware/radio/V1_0/CallForwardInfo;->reason:I

    .line 2505
    iput p2, v2, Landroid/hardware/radio/V1_0/CallForwardInfo;->serviceClass:I

    .line 2506
    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/hardware/radio/V1_0/CallForwardInfo;->toa:I

    .line 2507
    invoke-virtual {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/radio/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    .line 2508
    const/4 v3, 0x0

    iput v3, v2, Landroid/hardware/radio/V1_0/CallForwardInfo;->timeSeconds:I

    .line 2510
    :try_start_0
    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v3, v2}, Landroid/hardware/radio/V1_0/IRadio;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2513
    goto :goto_0

    .line 2511
    :catch_0
    move-exception v3

    .line 2512
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "queryCallForwardStatus"

    invoke-direct {p0, v1, v4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2515
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "cfInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 4
    .param p1, "serviceClass"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2522
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2523
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2524
    const/16 v1, 0x23

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2527
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " serviceClass = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2531
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Landroid/hardware/radio/V1_0/IRadio;->getCallWaiting(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2534
    goto :goto_0

    .line 2532
    :catch_0
    move-exception v2

    .line 2533
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "queryCallWaiting"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2536
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 2390
    const-string v4, "A0000000871002"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 2391
    return-void
.end method

.method public queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "appId"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/os/Message;

    .line 2399
    invoke-direct {p0, p5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v6

    .line 2400
    .local v6, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v6, :cond_0

    .line 2401
    const/16 v0, 0x2a

    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p5, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v7

    .line 2404
    .local v7, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " facility = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " appId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2409
    :try_start_0
    iget v1, v7, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2410
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2411
    invoke-virtual {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2413
    invoke-virtual {p0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2409
    move-object v0, v6

    move v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/hardware/radio/V1_0/IRadio;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2416
    goto :goto_0

    .line 2414
    :catch_0
    move-exception v0

    .line 2415
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "getFacilityLockForApp"

    invoke-direct {p0, v7, v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2418
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    :goto_0
    return-void
.end method

.method public querySsacStatus(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 4659
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 4660
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 4661
    const/16 v1, 0x887

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 4665
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->querySsacStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4668
    goto :goto_0

    .line 4666
    :catch_0
    move-exception v2

    .line 4667
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "queryVopsStatus"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4670
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public queryVopsStatus(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 4634
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 4635
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 4636
    const/16 v1, 0x882

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 4640
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->queryVopsStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4643
    goto :goto_0

    .line 4641
    :catch_0
    move-exception v2

    .line 4642
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "queryVopsStatus"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4645
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public reject(I)V
    .locals 1
    .param p1, "callId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4528
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->hangup(ILandroid/os/Message;)V

    .line 4529
    return-void
.end method

.method public reject(II)V
    .locals 2
    .param p1, "callId"    # I
    .param p2, "reason"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " reject with reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4534
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->hangup(IILandroid/os/Message;)V

    .line 4535
    return-void
.end method

.method public removeParticipants(ILjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "confCallId"    # I
    .param p2, "participant"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 1968
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 1969
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->getInstance(I)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mediatek/ims/ImsServiceCallTracker;->getParticipantCallId(Ljava/lang/String;)I

    move-result v0

    .line 1971
    .local v0, "participantCallId":I
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->internalRemoveConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V

    .line 1973
    return-void
.end method

.method public requestExitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 4
    .param p1, "response"    # Landroid/os/Message;

    .line 2944
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2945
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2946
    const/16 v1, 0x63

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2950
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2951
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2950
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2955
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->exitEmergencyCallbackMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2958
    goto :goto_0

    .line 2956
    :catch_0
    move-exception v2

    .line 2957
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "exitEmergencyCallbackMode"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2960
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public resetSuppServ(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2892
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 2893
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 2894
    const/16 v1, 0x874

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2898
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2899
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2898
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2903
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->resetSuppServ(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2906
    goto :goto_0

    .line 2904
    :catch_0
    move-exception v2

    .line 2905
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getXcapStatus"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2908
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public responseBearerStateConfirm(IIII)V
    .locals 1
    .param p1, "phoneid"    # I
    .param p2, "aid"    # I
    .param p3, "action"    # I
    .param p4, "status"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4479
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, p4, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->responseBearerStateConfirm(IIILandroid/os/Message;)V

    .line 4480
    return-void
.end method

.method public responseBearerStateConfirm(IIILandroid/os/Message;)V
    .locals 4
    .param p1, "aid"    # I
    .param p2, "action"    # I
    .param p3, "status"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 2998
    invoke-direct {p0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 2999
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 3000
    const/16 v1, 0x820

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3003
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " aid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " action ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " status ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3008
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->imsBearerStateConfirm(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3011
    goto :goto_0

    .line 3009
    :catch_0
    move-exception v2

    .line 3010
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "imsBearerStateConfirm"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3013
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public resume(ILandroid/os/Message;)V
    .locals 4
    .param p1, "callId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1132
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 1133
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 1134
    const/16 v1, 0x825

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1138
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1139
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1138
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1143
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->controlCall(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1146
    goto :goto_0

    .line 1144
    :catch_0
    move-exception v2

    .line 1145
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "resumeCall"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1149
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method riljLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 4413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4414
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [SUB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4413
    const-string v1, "IMS_RILA"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4415
    return-void
.end method

.method riljLoge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 4418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4419
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [SUB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4418
    const-string v1, "IMS_RILA"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4420
    return-void
.end method

.method riljLoge(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 4423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4424
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [SUB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4423
    const-string v1, "IMS_RILA"

    invoke-static {v1, v0, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4425
    return-void
.end method

.method riljLogi(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 4408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4409
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [SUB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4408
    const-string v1, "IMS_RILA"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4410
    return-void
.end method

.method riljLogv(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 4428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4429
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [SUB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4428
    const-string v1, "IMS_RILA"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4430
    return-void
.end method

.method public runGbaAuthentication(Ljava/lang/String;Ljava/lang/String;ZILandroid/os/Message;)V
    .locals 8
    .param p1, "nafFqdn"    # Ljava/lang/String;
    .param p2, "nafSecureProtocolId"    # Ljava/lang/String;
    .param p3, "forceRun"    # Z
    .param p4, "netId"    # I
    .param p5, "result"    # Landroid/os/Message;

    .line 2839
    invoke-direct {p0, p5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v6

    .line 2840
    .local v6, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v6, :cond_0

    .line 2841
    const/16 v0, 0x84f

    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p5, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v7

    .line 2844
    .local v7, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2845
    invoke-static {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " nafFqdn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " nafSecureProtocolId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " forceRun = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " netId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2844
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2853
    :try_start_0
    iget v1, v7, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->runGbaAuthentication(ILjava/lang/String;Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2857
    goto :goto_0

    .line 2855
    :catch_0
    move-exception v0

    .line 2856
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "runGbaAuthentication"

    invoke-direct {p0, v7, v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2860
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    :goto_0
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 5
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 1178
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 1179
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 1180
    const/16 v1, 0x18

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1185
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1189
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/hardware/radio/V1_0/IRadio;->sendDtmf(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1192
    goto :goto_0

    .line 1190
    :catch_0
    move-exception v2

    .line 1191
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "sendDtmf"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1194
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public sendRttModifyRequest(IILandroid/os/Message;)V
    .locals 4
    .param p1, "callId"    # I
    .param p2, "newMode"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 4079
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 4080
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 4081
    const/16 v1, 0x87f

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 4085
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 4086
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " newMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4085
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4091
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->sendRttModifyRequest(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4094
    goto :goto_0

    .line 4092
    :catch_0
    move-exception v2

    .line 4093
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "sendRttModifyRequest"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4097
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public sendRttText(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 4
    .param p1, "callId"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "length"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 4110
    invoke-direct {p0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 4111
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 4112
    const/16 v1, 0x880

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 4116
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 4117
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " text = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4116
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4124
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p3, p2}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->sendRttText(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4127
    goto :goto_0

    .line 4125
    :catch_0
    move-exception v2

    .line 4126
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "sendRttText"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4129
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public sendSms(IILjava/lang/String;Ljava/lang/String;Z[BLandroid/os/Message;)V
    .locals 16
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "smsc"    # Ljava/lang/String;
    .param p5, "isRetry"    # Z
    .param p6, "pdu"    # [B
    .param p7, "response"    # Landroid/os/Message;

    .line 3693
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p7

    invoke-direct {v1, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v4

    .line 3694
    .local v4, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v4, :cond_3

    .line 3695
    const/16 v0, 0x855

    iget-object v5, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {v1, v0, v3, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v5

    .line 3698
    .local v5, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "> "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v5, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3700
    new-instance v0, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    move-object v6, v0

    .line 3701
    .local v6, "msg":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    move/from16 v7, p5

    iput-boolean v7, v6, Landroid/hardware/radio/V1_0/ImsSmsMessage;->retry:Z

    .line 3702
    move/from16 v8, p2

    iput v8, v6, Landroid/hardware/radio/V1_0/ImsSmsMessage;->messageRef:I

    .line 3704
    const-string v0, "3gpp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v9, :cond_0

    .line 3705
    iput v11, v6, Landroid/hardware/radio/V1_0/ImsSmsMessage;->tech:I

    .line 3706
    nop

    .line 3707
    invoke-static/range {p6 .. p6}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    .line 3706
    move-object/from16 v12, p4

    invoke-direct {v1, v12, v9}, Lcom/mediatek/ims/ril/ImsRILAdapter;->constructGsmSendSmsRilRequest(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/V1_0/GsmSmsMessage;

    move-result-object v9

    .line 3708
    .local v9, "gsmMsg":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    iget-object v13, v6, Landroid/hardware/radio/V1_0/ImsSmsMessage;->gsmMessage:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3709
    .end local v9    # "gsmMsg":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    move-object/from16 v13, p6

    goto :goto_0

    :cond_0
    move-object/from16 v12, p4

    const-string v9, "3gpp2"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3710
    iput v10, v6, Landroid/hardware/radio/V1_0/ImsSmsMessage;->tech:I

    .line 3711
    new-instance v9, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v9}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 3712
    .local v9, "cdmaMsg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    move-object/from16 v13, p6

    invoke-virtual {v1, v9, v13}, Lcom/mediatek/ims/ril/ImsRILAdapter;->constructCdmaSendSmsRilRequest(Landroid/hardware/radio/V1_0/CdmaSmsMessage;[B)V

    .line 3713
    iget-object v14, v6, Landroid/hardware/radio/V1_0/ImsSmsMessage;->cdmaMessage:Ljava/util/ArrayList;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3714
    .end local v9    # "cdmaMsg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    nop

    .line 3719
    :goto_0
    :try_start_0
    iget v9, v5, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v4, v9, v6}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->sendImsSmsEx(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 3720
    iget-object v9, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v14, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iget v15, v5, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/4 v10, 0x3

    .line 3721
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3722
    goto :goto_1

    .line 3723
    :cond_1
    const/4 v11, 0x2

    .line 3720
    :goto_1
    invoke-virtual {v9, v14, v15, v10, v11}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3726
    goto :goto_2

    .line 3724
    :catch_0
    move-exception v0

    .line 3725
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "sendImsGsmSms"

    invoke-direct {v1, v5, v9, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 3715
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    move-object/from16 v13, p6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "> SMS format Error"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3716
    return-void

    .line 3694
    .end local v5    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v6    # "msg":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :cond_3
    move/from16 v8, p2

    move-object/from16 v12, p4

    move/from16 v7, p5

    move-object/from16 v13, p6

    .line 3728
    :goto_2
    return-void
.end method

.method public sendUSSI(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "ussiString"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 2321
    const-string v0, "persist.vendor.ims.ussi.ap"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrap sendUSSI, ussiString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2326
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 2327
    return-void

    .line 2330
    :cond_0
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 2331
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_1

    .line 2332
    const/16 v1, 0x82d

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2336
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2337
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ussiString = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2336
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2342
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->sendUssi(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2345
    goto :goto_0

    .line 2343
    :catch_0
    move-exception v2

    .line 2344
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "sendUssi"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2347
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public sendWfcProfileInfo(IILandroid/os/Message;)V
    .locals 0
    .param p1, "wfcPreference"    # I
    .param p2, "phoneid"    # I
    .param p3, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4473
    invoke-virtual {p0, p1, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendWfcProfileInfo(ILandroid/os/Message;)V

    .line 4474
    return-void
.end method

.method public sendWfcProfileInfo(ILandroid/os/Message;)V
    .locals 4
    .param p1, "wfcPreference"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2083
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 2084
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 2085
    const/16 v1, 0x82f

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2089
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2090
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " wfcPreference = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2089
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2095
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->setWfcProfile(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2098
    goto :goto_0

    .line 2096
    :catch_0
    move-exception v2

    .line 2097
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setWfcProfile"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2100
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCLIP(ILandroid/os/Message;)V
    .locals 4
    .param p1, "clipEnable"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2621
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 2622
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 2623
    const/16 v1, 0x837

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2627
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " clipEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2632
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->setClip(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2635
    goto :goto_0

    .line 2633
    :catch_0
    move-exception v2

    .line 2634
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setCLIP"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2637
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 4
    .param p1, "clirMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2582
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2583
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2584
    const/16 v1, 0x20

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2586
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " clirMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2590
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Landroid/hardware/radio/V1_0/IRadio;->setClir(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2593
    goto :goto_0

    .line 2591
    :catch_0
    move-exception v2

    .line 2592
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setCLIR"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2595
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCOLP(ILandroid/os/Message;)V
    .locals 4
    .param p1, "colpEnable"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2715
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 2716
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 2717
    const/16 v1, 0x84b

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2721
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " colpEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2726
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->setColp(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2729
    goto :goto_0

    .line 2727
    :catch_0
    move-exception v2

    .line 2728
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setCOLP"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2731
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCOLR(ILandroid/os/Message;)V
    .locals 4
    .param p1, "colrEnable"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2668
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 2669
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 2670
    const/16 v1, 0x84c

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2674
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " colrEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2679
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->setColr(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2682
    goto :goto_0

    .line 2680
    :catch_0
    move-exception v2

    .line 2681
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setCOLR"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2684
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 5
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "result"    # Landroid/os/Message;

    .line 2463
    invoke-direct {p0, p6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2464
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2465
    const/16 v1, 0x22

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p6, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2468
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " cfReason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " serviceClass = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " timeSeconds = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2472
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 2474
    .local v2, "cfInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    iput p1, v2, Landroid/hardware/radio/V1_0/CallForwardInfo;->status:I

    .line 2475
    iput p2, v2, Landroid/hardware/radio/V1_0/CallForwardInfo;->reason:I

    .line 2476
    iput p3, v2, Landroid/hardware/radio/V1_0/CallForwardInfo;->serviceClass:I

    .line 2477
    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/hardware/radio/V1_0/CallForwardInfo;->toa:I

    .line 2478
    invoke-virtual {p0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/radio/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    .line 2479
    iput p5, v2, Landroid/hardware/radio/V1_0/CallForwardInfo;->timeSeconds:I

    .line 2481
    :try_start_0
    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v3, v2}, Landroid/hardware/radio/V1_0/IRadio;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2484
    goto :goto_0

    .line 2482
    :catch_0
    move-exception v3

    .line 2483
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "setCallForward"

    invoke-direct {p0, v1, v4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2486
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "cfInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCallForwardInTimeSlot(IIILjava/lang/String;I[JLandroid/os/Message;)V
    .locals 7
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "timeSlot"    # [J
    .param p7, "result"    # Landroid/os/Message;

    .line 2776
    const-string v0, ""

    .line 2777
    .local v0, "timeSlotBegin":Ljava/lang/String;
    const-string v1, ""

    .line 2780
    .local v1, "timeSlotEnd":Ljava/lang/String;
    if-eqz p6, :cond_1

    array-length v2, p6

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 2781
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p6

    if-ge v2, v3, :cond_1

    .line 2782
    new-instance v3, Ljava/util/Date;

    aget-wide v4, p6, v2

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 2783
    .local v3, "date":Ljava/util/Date;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "HH:mm"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2784
    .local v4, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v5, "GMT+8"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2786
    if-nez v2, :cond_0

    .line 2787
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2789
    :cond_0
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 2781
    .end local v3    # "date":Ljava/util/Date;
    .end local v4    # "dateFormat":Ljava/text/SimpleDateFormat;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2794
    .end local v2    # "i":I
    :cond_1
    invoke-direct {p0, p7}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v2

    .line 2795
    .local v2, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v2, :cond_2

    .line 2796
    const/16 v3, 0x84e

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v3, p7, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v3

    .line 2800
    .local v3, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " cfReason = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " serviceClass = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " timeSeconds = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "timeSlot = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2806
    new-instance v4, Lvendor/mediatek/hardware/mtkradioex/V1_0/CallForwardInfoEx;

    invoke-direct {v4}, Lvendor/mediatek/hardware/mtkradioex/V1_0/CallForwardInfoEx;-><init>()V

    .line 2808
    .local v4, "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/V1_0/CallForwardInfoEx;
    iput p1, v4, Lvendor/mediatek/hardware/mtkradioex/V1_0/CallForwardInfoEx;->status:I

    .line 2809
    iput p2, v4, Lvendor/mediatek/hardware/mtkradioex/V1_0/CallForwardInfoEx;->reason:I

    .line 2810
    iput p3, v4, Lvendor/mediatek/hardware/mtkradioex/V1_0/CallForwardInfoEx;->serviceClass:I

    .line 2811
    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lvendor/mediatek/hardware/mtkradioex/V1_0/CallForwardInfoEx;->toa:I

    .line 2812
    invoke-virtual {p0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lvendor/mediatek/hardware/mtkradioex/V1_0/CallForwardInfoEx;->number:Ljava/lang/String;

    .line 2813
    iput p5, v4, Lvendor/mediatek/hardware/mtkradioex/V1_0/CallForwardInfoEx;->timeSeconds:I

    .line 2814
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lvendor/mediatek/hardware/mtkradioex/V1_0/CallForwardInfoEx;->timeSlotBegin:Ljava/lang/String;

    .line 2815
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lvendor/mediatek/hardware/mtkradioex/V1_0/CallForwardInfoEx;->timeSlotEnd:Ljava/lang/String;

    .line 2818
    :try_start_0
    iget v5, v3, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v2, v5, v4}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->setCallForwardInTimeSlot(ILvendor/mediatek/hardware/mtkradioex/V1_0/CallForwardInfoEx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2822
    goto :goto_2

    .line 2819
    :catch_0
    move-exception v5

    .line 2820
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "setCallForwardInTimeSlot"

    invoke-direct {p0, v3, v6, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2824
    .end local v3    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v4    # "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/V1_0/CallForwardInfoEx;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void
.end method

.method public setCallIndication(IIII)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "callId"    # I
    .param p3, "seqNum"    # I
    .param p4, "cause"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4576
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setCallIndication(IIIILandroid/os/Message;)V

    .line 4577
    return-void
.end method

.method public setCallIndication(IIIILandroid/os/Message;)V
    .locals 8
    .param p1, "mode"    # I
    .param p2, "callId"    # I
    .param p3, "seqNum"    # I
    .param p4, "cause"    # I
    .param p5, "response"    # Landroid/os/Message;

    .line 1281
    invoke-direct {p0, p5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v6

    .line 1282
    .local v6, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v6, :cond_0

    .line 1283
    const/16 v0, 0x7e0

    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p5, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v7

    .line 1287
    .local v7, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1288
    invoke-static {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " callId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " seqNum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1287
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1293
    :try_start_0
    iget v1, v7, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    move-object v0, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->setCallIndication(IIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1296
    goto :goto_0

    .line 1294
    :catch_0
    move-exception v0

    .line 1295
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "setCallIndication"

    invoke-direct {p0, v7, v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1298
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 2543
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2544
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2545
    const/16 v1, 0x24

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2548
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " serviceClass = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2552
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->setCallWaiting(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2555
    goto :goto_0

    .line 2553
    :catch_0
    move-exception v2

    .line 2554
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setCallWaiting"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2557
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "result"    # Landroid/os/Message;

    .line 2426
    const-string v5, "A0000000871002"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 2427
    return-void
.end method

.method public setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 9
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "appId"    # Ljava/lang/String;
    .param p6, "result"    # Landroid/os/Message;

    .line 2435
    invoke-direct {p0, p6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v7

    .line 2436
    .local v7, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v7, :cond_0

    .line 2437
    const/16 v0, 0x2b

    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p6, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v8

    .line 2440
    .local v8, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " facility = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " lockstate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " appId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2445
    :try_start_0
    iget v1, v8, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2446
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2448
    invoke-virtual {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2450
    invoke-virtual {p0, p5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2445
    move-object v0, v7

    move v3, p2

    move v5, p4

    invoke-interface/range {v0 .. v6}, Landroid/hardware/radio/V1_0/IRadio;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2453
    goto :goto_0

    .line 2451
    :catch_0
    move-exception v0

    .line 2452
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "setFacilityLockForApp"

    invoke-direct {p0, v8, v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2455
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    :goto_0
    return-void
.end method

.method public setImsBearerNotification(II)V
    .locals 1
    .param p1, "phoneid"    # I
    .param p2, "enable"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4485
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setImsBearerNotification(ILandroid/os/Message;)V

    .line 4486
    return-void
.end method

.method public setImsBearerNotification(ILandroid/os/Message;)V
    .locals 4
    .param p1, "enable"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 3023
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 3024
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 3025
    const/16 v1, 0x857

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3028
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3033
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->setImsBearerNotification(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3036
    goto :goto_0

    .line 3034
    :catch_0
    move-exception v2

    .line 3035
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setImsBearerNotification"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3038
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setImsCallMode(ILandroid/os/Message;)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 3847
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 3848
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 3849
    const/16 v1, 0x886

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3853
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3858
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->setImsCallMode(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3861
    goto :goto_0

    .line 3859
    :catch_0
    move-exception v2

    .line 3860
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setImsCallMode"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3863
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setImsCfg([IILandroid/os/Message;)V
    .locals 0
    .param p1, "params"    # [I
    .param p2, "phoneid"    # I
    .param p3, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4504
    invoke-virtual {p0, p1, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setImsCfg([ILandroid/os/Message;)V

    .line 4505
    return-void
.end method

.method public setImsCfg([ILandroid/os/Message;)V
    .locals 16
    .param p1, "params"    # [I
    .param p2, "response"    # Landroid/os/Message;

    .line 1348
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const/4 v0, 0x0

    aget v3, p1, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v7, v4

    goto :goto_0

    :cond_0
    move v7, v0

    .line 1349
    .local v7, "volteEnable":Z
    :goto_0
    aget v3, p1, v4

    if-ne v3, v4, :cond_1

    move v8, v4

    goto :goto_1

    :cond_1
    move v8, v0

    .line 1350
    .local v8, "vilteEnable":Z
    :goto_1
    const/4 v3, 0x2

    aget v5, p1, v3

    if-ne v5, v4, :cond_2

    move v9, v4

    goto :goto_2

    :cond_2
    move v9, v0

    .line 1351
    .local v9, "vowifiEnable":Z
    :goto_2
    const/4 v5, 0x3

    aget v6, p1, v5

    if-ne v6, v4, :cond_3

    move v10, v4

    goto :goto_3

    :cond_3
    move v10, v0

    .line 1352
    .local v10, "viwifiEnable":Z
    :goto_3
    const/4 v6, 0x4

    aget v11, p1, v6

    if-ne v11, v4, :cond_4

    move v11, v4

    goto :goto_4

    :cond_4
    move v11, v0

    .line 1353
    .local v11, "smsEnable":Z
    :goto_4
    const/4 v13, 0x5

    aget v12, p1, v13

    if-ne v12, v4, :cond_5

    move v12, v4

    goto :goto_5

    :cond_5
    move v12, v0

    .line 1355
    .local v12, "eimsEnable":Z
    :goto_5
    invoke-direct {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v14

    .line 1356
    .local v14, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v14, :cond_7

    .line 1357
    const/16 v15, 0x81d

    iget-object v13, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {v1, v15, v2, v13}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v13

    .line 1361
    .local v13, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ">  "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v13, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1362
    invoke-static {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " volteEnable = "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p1, v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " vilteEnable = "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p1, v4

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " vowifiEnable = "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p1, v3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " viwifiEnable = "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p1, v5

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " smsEnable = "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    aget v0, p1, v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " eimsEnable = "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x5

    aget v0, p1, v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1361
    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1372
    :try_start_0
    iget v6, v13, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    move-object v5, v14

    invoke-interface/range {v5 .. v12}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->setImscfg(IZZZZZZ)V

    .line 1378
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1379
    iget v0, v13, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-direct {v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->findAndRemoveRequestFromList(I)Lcom/mediatek/ims/ril/RILRequest;

    .line 1380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v13, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1381
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " sent and removed"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1380
    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1386
    :cond_6
    goto :goto_6

    .line 1384
    :catch_0
    move-exception v0

    .line 1385
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "setImsCfg"

    invoke-direct {v1, v13, v3, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1388
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v13    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_7
    :goto_6
    return-void
.end method

.method public setImsCfgFeatureValue(IIIILandroid/os/Message;)V
    .locals 8
    .param p1, "featureId"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "isLast"    # I
    .param p5, "result"    # Landroid/os/Message;

    .line 1844
    invoke-direct {p0, p5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v6

    .line 1845
    .local v6, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v6, :cond_0

    .line 1846
    const/16 v0, 0x858

    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p5, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v7

    .line 1850
    .local v7, "rr":Lcom/mediatek/ims/ril/RILRequest;
    :try_start_0
    iget v1, v7, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    move-object v0, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->setImsCfgFeatureValue(IIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1854
    goto :goto_0

    .line 1852
    :catch_0
    move-exception v0

    .line 1853
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "setImsCfgFeatureValue"

    invoke-direct {p0, v7, v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1856
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    :goto_0
    return-void
.end method

.method public setImsCfgProvisionValue(ILjava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "configId"    # I
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 1887
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 1888
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 1889
    const/16 v1, 0x85a

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1893
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->setImsCfgProvisionValue(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1896
    goto :goto_0

    .line 1894
    :catch_0
    move-exception v2

    .line 1895
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setImsCfgProvisionValue"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1898
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setImsRegistrationReport(ILandroid/os/Message;)V
    .locals 0
    .param p1, "phoneid"    # I
    .param p2, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4510
    invoke-virtual {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setImsRegistrationReport(Landroid/os/Message;)V

    .line 4511
    return-void
.end method

.method public setImsRegistrationReport(Landroid/os/Message;)V
    .locals 4
    .param p1, "response"    # Landroid/os/Message;

    .line 3076
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 3077
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 3078
    const/16 v1, 0x831

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3082
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3086
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->setImsRegistrationReport(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3089
    goto :goto_0

    .line 3087
    :catch_0
    move-exception v2

    .line 3088
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setImsRegistrationReport"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3091
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setImsRtpInfo(IIILandroid/os/Message;)V
    .locals 4
    .param p1, "pdnId"    # I
    .param p2, "networkId"    # I
    .param p3, "timer"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 3103
    invoke-direct {p0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 3104
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 3105
    const/16 v1, 0x828

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3108
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " PDN id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " network Id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Timer = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3114
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->setImsRtpReport(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3117
    goto :goto_0

    .line 3115
    :catch_0
    move-exception v2

    .line 3116
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setImsRtpReport"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3119
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setModemImsCfg(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 4
    .param p1, "keys"    # Ljava/lang/String;
    .param p2, "values"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 1399
    invoke-direct {p0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 1400
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 1401
    const/16 v1, 0x850

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1405
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1406
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " keys = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " values = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1405
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1413
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->setModemImsCfg(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1416
    goto :goto_0

    .line 1414
    :catch_0
    move-exception v2

    .line 1415
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "sendModemImsCfg"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1418
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setMute(ZLandroid/os/Message;)V
    .locals 4
    .param p1, "enableMute"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 878
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 879
    .local v1, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v1, :cond_0

    .line 880
    const/16 v2, 0x35

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v2, v0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 884
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 885
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mute = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 884
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 890
    :try_start_0
    iget v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Landroid/hardware/radio/V1_0/IRadio;->setMute(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 893
    goto :goto_0

    .line 891
    :catch_0
    move-exception v2

    .line 892
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setMute"

    invoke-direct {p0, v0, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 895
    .end local v0    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setProvisionValue(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "phoneid"    # I
    .param p2, "provisionStr"    # Ljava/lang/String;
    .param p3, "provisionValue"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4467
    invoke-virtual {p0, p2, p3, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setProvisionValue(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 4468
    return-void
.end method

.method public setProvisionValue(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "provisionStr"    # Ljava/lang/String;
    .param p2, "provisionValue"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 1816
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 1817
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 1818
    const/16 v1, 0x81f

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1822
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1823
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " provisionStr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " provisionValue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1822
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1827
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->setProvisionValue(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1830
    goto :goto_0

    .line 1828
    :catch_0
    move-exception v2

    .line 1829
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setProvisionValue"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1832
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setRttMode(ILandroid/os/Message;)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 4140
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 4141
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 4142
    const/16 v1, 0x87e

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 4146
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 4147
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4146
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4152
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->setRttMode(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4155
    goto :goto_0

    .line 4153
    :catch_0
    move-exception v2

    .line 4154
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setRttMode"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4157
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setRttModifyRequestResponse(IILandroid/os/Message;)V
    .locals 4
    .param p1, "callId"    # I
    .param p2, "result"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 4050
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 4051
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 4052
    const/16 v1, 0x881

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 4056
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 4057
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4056
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4062
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->rttModifyRequestResponse(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4065
    goto :goto_0

    .line 4063
    :catch_0
    move-exception v2

    .line 4064
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "rttModifyRequestResponse"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4067
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setSipHeader(IIILjava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "total"    # I
    .param p2, "index"    # I
    .param p3, "headerCount"    # I
    .param p4, "headerValuePair"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    .line 3787
    invoke-direct {p0, p5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 3788
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 3789
    const/16 v1, 0x884

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p5, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3793
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3796
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3797
    .local v2, "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3798
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3799
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3800
    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3803
    :try_start_0
    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v3, v2}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->setSipHeader(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3806
    goto :goto_0

    .line 3804
    :catch_0
    move-exception v3

    .line 3805
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "setSipHeader"

    invoke-direct {p0, v1, v4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3808
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setSipHeaderReport(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "headerType"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 3818
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 3819
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 3820
    const/16 v1, 0x885

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3824
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " headerType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3828
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3829
    .local v2, "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3830
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3833
    :try_start_0
    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v3, v2}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->setSipHeaderReport(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3836
    goto :goto_0

    .line 3834
    :catch_0
    move-exception v3

    .line 3835
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "setSipHeaderReport"

    invoke-direct {p0, v1, v4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3838
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setVoiceDomainPreference(ILandroid/os/Message;)V
    .locals 4
    .param p1, "vdp"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 3128
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 3129
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 3130
    const/16 v1, 0x84a

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3133
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " vdp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3137
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->setVoiceDomainPreference(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3140
    goto :goto_0

    .line 3138
    :catch_0
    move-exception v2

    .line 3139
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setVoiceDomainPreference"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3142
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setupXcapUserAgentString(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "userAgent"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 2917
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 2918
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 2919
    const/16 v1, 0x877

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2923
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2924
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userAgent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2923
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2929
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->setupXcapUserAgentString(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2932
    goto :goto_0

    .line 2930
    :catch_0
    move-exception v2

    .line 2931
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setupXcapUserAgentString"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2934
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;IZZLandroid/os/Message;)V
    .locals 7
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "callProfile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "clirMode"    # I
    .param p4, "isEmergency"    # Z
    .param p5, "isVideoCall"    # Z
    .param p6, "result"    # Landroid/os/Message;

    .line 912
    if-eqz p5, :cond_0

    .line 913
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0, p6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_0

    .line 914
    :cond_0
    if-eqz p4, :cond_1

    .line 915
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->emergencyDial(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_0

    .line 917
    :cond_1
    invoke-virtual {p0, p1, p3, p6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->dial(Ljava/lang/String;ILandroid/os/Message;)V

    .line 919
    :goto_0
    return-void
.end method

.method public startConference([Ljava/lang/String;IZILandroid/os/Message;)V
    .locals 0
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "isVideoCall"    # Z
    .param p4, "phoneid"    # I
    .param p5, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4492
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->startConference([Ljava/lang/String;IZLandroid/os/Message;)V

    .line 4493
    return-void
.end method

.method public startConference([Ljava/lang/String;IZLandroid/os/Message;)V
    .locals 0
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "isVideoCall"    # Z
    .param p4, "result"    # Landroid/os/Message;

    .line 935
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->conferenceDial([Ljava/lang/String;IZLandroid/os/Message;)V

    .line 936
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 7
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 1205
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    monitor-enter v0

    .line 1206
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->hasSendChldRequest()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 1207
    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x20

    if-ge v1, v2, :cond_2

    .line 1208
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->isStart()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1209
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 1210
    .local v1, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v1, :cond_0

    .line 1211
    const/16 v2, 0x31

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v2, p2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v2

    .line 1213
    .local v2, "rr":Lcom/mediatek/ims/ril/RILRequest;
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->start()V

    .line 1214
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1215
    .local v4, "param":[Ljava/lang/Object;
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v5, v2, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->buildDtmfQueueRR(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v5

    .line 1217
    .local v5, "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v6, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->add(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 1218
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v6

    if-ne v6, v3, :cond_0

    .line 1219
    const-string v3, "send start dtmf"

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "> "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1223
    invoke-direct {p0, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendDtmfQueueRR(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 1226
    .end local v1    # "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    .end local v2    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v4    # "param":[Ljava/lang/Object;
    .end local v5    # "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    :cond_0
    goto :goto_0

    .line 1227
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DTMF status conflict, want to start DTMF when status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 1228
    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->isStart()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1227
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1231
    :cond_2
    :goto_0
    monitor-exit v0

    .line 1232
    return-void

    .line 1231
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .locals 7
    .param p1, "result"    # Landroid/os/Message;

    .line 1243
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    monitor-enter v0

    .line 1244
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->hasSendChldRequest()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 1245
    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x20

    if-ge v1, v2, :cond_2

    .line 1246
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->isStart()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1247
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 1248
    .local v1, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v1, :cond_0

    .line 1249
    const/16 v2, 0x32

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v2, p1, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v2

    .line 1251
    .local v2, "rr":Lcom/mediatek/ims/ril/RILRequest;
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->stop()V

    .line 1252
    const/4 v3, 0x0

    .line 1253
    .local v3, "param":[Ljava/lang/Object;
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v4, v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->buildDtmfQueueRR(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v4

    .line 1255
    .local v4, "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v5, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->add(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 1256
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v5}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1257
    const-string v5, "send stop dtmf"

    invoke-virtual {p0, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1259
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1260
    invoke-direct {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendDtmfQueueRR(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 1263
    .end local v1    # "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    .end local v2    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v3    # "param":[Ljava/lang/Object;
    .end local v4    # "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    :cond_0
    goto :goto_0

    .line 1264
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DTMF status conflict, want to start DTMF when status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 1265
    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->isStart()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1264
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1268
    :cond_2
    :goto_0
    monitor-exit v0

    .line 1269
    return-void

    .line 1268
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public swap(Landroid/os/Message;)V
    .locals 4
    .param p1, "response"    # Landroid/os/Message;

    .line 2061
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2062
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2063
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2068
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2071
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleChldRelatedRequest(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)V

    .line 2073
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    return-void
.end method

.method public terminate(I)V
    .locals 1
    .param p1, "callId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4540
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->hangup(ILandroid/os/Message;)V

    .line 4541
    return-void
.end method

.method public terminate(II)V
    .locals 2
    .param p1, "callId"    # I
    .param p2, "reason"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "terminate with reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4546
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->hangup(IILandroid/os/Message;)V

    .line 4547
    return-void
.end method

.method public toggleRttAudioIndication(IILandroid/os/Message;)V
    .locals 4
    .param p1, "callId"    # I
    .param p2, "enable"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 4673
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 4674
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 4675
    const/16 v1, 0x888

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 4678
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4683
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->toggleRttAudioIndication(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4686
    goto :goto_0

    .line 4684
    :catch_0
    move-exception v2

    .line 4685
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "toggleRttAudioIndication"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4688
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOffIms(ILandroid/os/Message;)V
    .locals 0
    .param p1, "phoneid"    # I
    .param p2, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4516
    invoke-virtual {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->turnOffIms(Landroid/os/Message;)V

    .line 4517
    return-void
.end method

.method public turnOffIms(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1452
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 1453
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 1454
    const/16 v1, 0x815

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1458
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1459
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " switch = OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1458
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1463
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->setImsEnable(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1466
    goto :goto_0

    .line 1464
    :catch_0
    move-exception v2

    .line 1465
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setImsEnable"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1469
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOffImsVideo(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1762
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 1763
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 1764
    const/16 v1, 0x81b

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1768
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1769
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " switch = OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1768
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1773
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->setImsVideoEnable(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1776
    goto :goto_0

    .line 1774
    :catch_0
    move-exception v2

    .line 1775
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setImsVideoEnable"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1778
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOffRcsUa(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 1711
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 1712
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 1713
    const/16 v1, 0x876

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1717
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1718
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " switch = OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1717
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1722
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/16 v3, 0xe

    const/4 v4, 0x0

    .line 1723
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 1722
    invoke-interface {v0, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1726
    goto :goto_0

    .line 1724
    :catch_0
    move-exception v2

    .line 1725
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setVendorSetting"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1728
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOffVilte(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 1607
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 1608
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 1609
    const/16 v1, 0x818

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1613
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1614
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " switch = OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1613
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1618
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/16 v3, 0xc

    const/4 v4, 0x0

    .line 1619
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 1618
    invoke-interface {v0, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1622
    goto :goto_0

    .line 1620
    :catch_0
    move-exception v2

    .line 1621
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setVendorSetting"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1624
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOffViwifi(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 1659
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 1660
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 1661
    const/16 v1, 0x819

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1665
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1666
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " switch = OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1665
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1670
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/16 v3, 0xd

    const/4 v4, 0x0

    .line 1671
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 1670
    invoke-interface {v0, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1674
    goto :goto_0

    .line 1672
    :catch_0
    move-exception v2

    .line 1673
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setVendorSetting"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1676
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOffVolte(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 1503
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 1504
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 1505
    const/16 v1, 0x816

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1509
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1510
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " switch = OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1509
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1514
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/16 v3, 0xb

    const/4 v4, 0x0

    .line 1515
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 1514
    invoke-interface {v0, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1518
    goto :goto_0

    .line 1516
    :catch_0
    move-exception v2

    .line 1517
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setVendorSetting"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1520
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOffWfc(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 1555
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 1556
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 1557
    const/16 v1, 0x817

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1561
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1562
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " switch = OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1561
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1566
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/16 v3, 0x10

    const/4 v4, 0x0

    .line 1567
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 1566
    invoke-interface {v0, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1570
    goto :goto_0

    .line 1568
    :catch_0
    move-exception v2

    .line 1569
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setVendorSetting"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1572
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOnIms(ILandroid/os/Message;)V
    .locals 0
    .param p1, "phoneid"    # I
    .param p2, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4522
    invoke-virtual {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->turnOnIms(Landroid/os/Message;)V

    .line 4523
    return-void
.end method

.method public turnOnIms(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1427
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 1428
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 1429
    const/16 v1, 0x815

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1433
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1434
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " switch = ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1433
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1438
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->setImsEnable(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1441
    goto :goto_0

    .line 1439
    :catch_0
    move-exception v2

    .line 1440
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setImsEnable"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1443
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOnImsVideo(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1737
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 1738
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 1739
    const/16 v1, 0x81b

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1743
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1744
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " switch = ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1743
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1748
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->setImsVideoEnable(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1751
    goto :goto_0

    .line 1749
    :catch_0
    move-exception v2

    .line 1750
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setImsVideoEnable"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1753
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOnRcsUa(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 1685
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 1686
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 1687
    const/16 v1, 0x876

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1691
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1692
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " switch = ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1691
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1696
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/16 v3, 0xe

    const/4 v4, 0x1

    .line 1697
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 1696
    invoke-interface {v0, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1700
    goto :goto_0

    .line 1698
    :catch_0
    move-exception v2

    .line 1699
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setVendorSetting"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1702
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOnVilte(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 1581
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 1582
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 1583
    const/16 v1, 0x818

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1587
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1588
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " switch = ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1587
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1592
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/16 v3, 0xc

    const/4 v4, 0x1

    .line 1593
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 1592
    invoke-interface {v0, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1596
    goto :goto_0

    .line 1594
    :catch_0
    move-exception v2

    .line 1595
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setVendorSetting"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1598
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOnViwifi(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 1633
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 1634
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 1635
    const/16 v1, 0x819

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1639
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1640
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " switch = ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1639
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1644
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/16 v3, 0xd

    const/4 v4, 0x1

    .line 1645
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 1644
    invoke-interface {v0, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1648
    goto :goto_0

    .line 1646
    :catch_0
    move-exception v2

    .line 1647
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setVendorSetting"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1650
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOnVolte(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 1477
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 1478
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 1479
    const/16 v1, 0x816

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1483
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1484
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " switch = ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1483
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1488
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/16 v3, 0xb

    const/4 v4, 0x1

    .line 1489
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 1488
    invoke-interface {v0, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1492
    goto :goto_0

    .line 1490
    :catch_0
    move-exception v2

    .line 1491
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setVendorSetting"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1494
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOnWfc(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 1529
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 1530
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 1531
    const/16 v1, 0x817

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1535
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1536
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " switch = ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1535
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1540
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/16 v3, 0x10

    const/4 v4, 0x1

    .line 1541
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 1540
    invoke-interface {v0, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1544
    goto :goto_0

    .line 1542
    :catch_0
    move-exception v2

    .line 1543
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setVendorSetting"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1546
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public unattendedCallTransfer(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 1095
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->internalImsEct(Ljava/lang/String;ILandroid/os/Message;)V

    .line 1096
    return-void
.end method

.method unsljLog(I)V
    .locals 2
    .param p1, "response"    # I

    .line 4433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4434
    return-void
.end method

.method unsljLogMore(ILjava/lang/String;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "more"    # Ljava/lang/String;

    .line 4437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4438
    return-void
.end method

.method unsljLogRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 4441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4442
    return-void
.end method

.method unsljLogvRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 4445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogv(Ljava/lang/String;)V

    .line 4446
    return-void
.end method

.method public vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 7
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "response"    # Landroid/os/Message;

    .line 2270
    invoke-direct {p0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 2271
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_2

    .line 2272
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "> "

    if-nez v1, :cond_1

    .line 2273
    const/16 v1, 0x833

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2275
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v3, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 2276
    .local v3, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/hardware/radio/V1_0/Dial;->address:Ljava/lang/String;

    .line 2277
    iput p2, v3, Landroid/hardware/radio/V1_0/Dial;->clir:I

    .line 2278
    if-eqz p3, :cond_0

    .line 2279
    new-instance v4, Landroid/hardware/radio/V1_0/UusInfo;

    invoke-direct {v4}, Landroid/hardware/radio/V1_0/UusInfo;-><init>()V

    .line 2280
    .local v4, "info":Landroid/hardware/radio/V1_0/UusInfo;
    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v5

    iput v5, v4, Landroid/hardware/radio/V1_0/UusInfo;->uusType:I

    .line 2281
    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v5

    iput v5, v4, Landroid/hardware/radio/V1_0/UusInfo;->uusDcs:I

    .line 2282
    new-instance v5, Ljava/lang/String;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v4, Landroid/hardware/radio/V1_0/UusInfo;->uusData:Ljava/lang/String;

    .line 2283
    iget-object v5, v3, Landroid/hardware/radio/V1_0/Dial;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2287
    .end local v4    # "info":Landroid/hardware/radio/V1_0/UusInfo;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2290
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->vtDial(ILandroid/hardware/radio/V1_0/Dial;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2293
    goto :goto_0

    .line 2291
    :catch_0
    move-exception v2

    .line 2292
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "vtDial"

    invoke-direct {p0, v1, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2294
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :goto_0
    goto :goto_1

    .line 2296
    :cond_1
    const/16 v1, 0x82c

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2301
    .restart local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2304
    :try_start_1
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->vtDialWithSipUri(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2307
    goto :goto_1

    .line 2305
    :catch_1
    move-exception v2

    .line 2306
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v3, "vtDialWithSipUri"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2310
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void
.end method

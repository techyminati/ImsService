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

.field static final IRADIO_GET_SERVICE_DELAY_MILLIS:I = 0x3e8

.field static final MTK_IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

.field static final MTK_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

.field static final MTK_RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

.field static final MTK_RADIO_HAL_VERSION_2_2:Lcom/android/internal/telephony/HalVersion;

.field static final MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

.field static final PROPERTY_WAKE_LOCK_TIMEOUT:Ljava/lang/String; = "ro.ril.wake_lock_timeout"

.field static final RADIO_HAL_VERSION_1_0:Lcom/android/internal/telephony/HalVersion;

.field static final RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

.field static final RADIO_HAL_VERSION_1_2:Lcom/android/internal/telephony/HalVersion;

.field static final RADIO_HAL_VERSION_1_3:Lcom/android/internal/telephony/HalVersion;

.field static final RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

.field static final RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

.field static final RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

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

.field mImsRadioIndicationV2:Lcom/mediatek/ims/ril/ImsRadioIndicationV2;

.field mImsRadioResponse:Lcom/mediatek/ims/ril/ImsRadioResponse;

.field mImsRadioResponseV2:Lcom/mediatek/ims/ril/ImsRadioResponseV2;

.field mIsMobileNetworkSupported:Z

.field mLastNITZTimeInfo:[Ljava/lang/Object;

.field private mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

.field volatile mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

.field final mMtkRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

.field final mMtkRadioProxyDeathRecipient:Lcom/mediatek/ims/ril/ImsRILAdapter$MtkRadioProxyDeathRecipient;

.field private mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

.field private mOpCI:Lcom/mediatek/ims/ril/OpImsCommandsInterface;

.field final mPhoneId:Ljava/lang/Integer;

.field private mRILDefaultWorkSource:Landroid/os/WorkSource;

.field mRadioIndication:Lcom/mediatek/ims/ril/RadioIndicationImpl;

.field volatile mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

.field final mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

.field final mRadioProxyDeathRecipient:Lcom/mediatek/ims/ril/ImsRILAdapter$RadioProxyDeathRecipient;

.field mRadioResponse:Lcom/mediatek/ims/ril/RadioResponseImpl;

.field private mRadioVersion:Lcom/android/internal/telephony/HalVersion;

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
    .locals 6

    .line 356
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    .line 367
    sget-object v0, Lcom/android/internal/telephony/HalVersion;->UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    .line 370
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_0:Lcom/android/internal/telephony/HalVersion;

    .line 373
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v1, v1}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    .line 376
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_2:Lcom/android/internal/telephony/HalVersion;

    .line 379
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v4, 0x3

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_3:Lcom/android/internal/telephony/HalVersion;

    .line 382
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v5, 0x4

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    .line 385
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v5, 0x5

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    .line 394
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v3, v2}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    .line 397
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v3, v1}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

    .line 400
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v3, v3}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_2_2:Lcom/android/internal/telephony/HalVersion;

    .line 403
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v4, v2}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    .line 451
    const-string v0, "imsSlot1"

    const-string v1, "imsSlot2"

    const-string v2, "imsSlot3"

    const-string v3, "imsSlot4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

    .line 454
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

    .line 829
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ril/ImsBaseCommands;-><init>(Landroid/content/Context;I)V

    .line 340
    new-instance v0, Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-direct {v0}, Lcom/android/internal/telephony/ClientWakelockTracker;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    .line 353
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWlSequenceNum:I

    .line 354
    iput v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWlSequenceNum:I

    .line 355
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    .line 362
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 388
    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 391
    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 412
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    .line 419
    new-instance v1, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 429
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRadioResponseV2:Lcom/mediatek/ims/ril/ImsRadioResponseV2;

    .line 430
    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRadioIndicationV2:Lcom/mediatek/ims/ril/ImsRadioIndicationV2;

    .line 431
    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 432
    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    .line 433
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 434
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 831
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ims-RIL: init phone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 834
    iput-object p1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mContext:Landroid/content/Context;

    .line 835
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 837
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 839
    .local v2, "cm":Landroid/net/ConnectivityManager;
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mIsMobileNetworkSupported:Z

    .line 841
    new-instance v4, Lcom/mediatek/ims/ril/RadioResponseImpl;

    invoke-direct {v4, p0, p2}, Lcom/mediatek/ims/ril/RadioResponseImpl;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioResponse:Lcom/mediatek/ims/ril/RadioResponseImpl;

    .line 842
    new-instance v4, Lcom/mediatek/ims/ril/RadioIndicationImpl;

    invoke-direct {v4, p0, p2}, Lcom/mediatek/ims/ril/RadioIndicationImpl;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioIndication:Lcom/mediatek/ims/ril/RadioIndicationImpl;

    .line 843
    new-instance v4, Lcom/mediatek/ims/ril/ImsRadioResponse;

    invoke-direct {v4, p0, p2}, Lcom/mediatek/ims/ril/ImsRadioResponse;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRadioResponse:Lcom/mediatek/ims/ril/ImsRadioResponse;

    .line 844
    new-instance v4, Lcom/mediatek/ims/ril/ImsRadioIndication;

    invoke-direct {v4, p0, p2}, Lcom/mediatek/ims/ril/ImsRadioIndication;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRadioIndication:Lcom/mediatek/ims/ril/ImsRadioIndication;

    .line 846
    new-instance v4, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    invoke-direct {v4, p0}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    .line 847
    new-instance v4, Lcom/mediatek/ims/ril/ImsRILAdapter$RadioProxyDeathRecipient;

    invoke-direct {v4, p0}, Lcom/mediatek/ims/ril/ImsRILAdapter$RadioProxyDeathRecipient;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxyDeathRecipient:Lcom/mediatek/ims/ril/ImsRILAdapter$RadioProxyDeathRecipient;

    .line 848
    new-instance v4, Lcom/mediatek/ims/ril/ImsRILAdapter$MtkRadioProxyDeathRecipient;

    invoke-direct {v4, p0}, Lcom/mediatek/ims/ril/ImsRILAdapter$MtkRadioProxyDeathRecipient;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxyDeathRecipient:Lcom/mediatek/ims/ril/ImsRILAdapter$MtkRadioProxyDeathRecipient;

    .line 850
    const-string v4, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 851
    .local v4, "pm":Landroid/os/PowerManager;
    const-string v5, "IMS_RILA"

    invoke-virtual {v4, v3, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 852
    invoke-virtual {v5, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 853
    const-string v5, "IMSRIL_ACK_WL"

    invoke-virtual {v4, v3, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 854
    invoke-virtual {v5, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 855
    const-string v5, "ro.ril.wake_lock_timeout"

    const v6, 0xea60

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockTimeout:I

    .line 857
    const/16 v6, 0xc8

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLockTimeout:I

    .line 859
    iput v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    .line 860
    new-instance v5, Landroid/os/WorkSource;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 861
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    iput-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 865
    invoke-direct {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v5

    .line 867
    .local v5, "proxy":Landroid/hardware/radio/V1_0/IRadio;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ims-RIL: proxy = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v5, :cond_0

    move v7, v3

    goto :goto_0

    :cond_0
    move v7, v0

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 870
    invoke-direct {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v1

    .line 872
    .local v1, "mtkProxy":Landroid/hidl/base/V1_0/IBase;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Mtk-Ims-RIL: proxy = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_1

    move v0, v3

    :cond_1
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 875
    invoke-static {p1, p2}, Lcom/mediatek/ims/ril/OpImsRILUtil;->makeCommandInterface(Landroid/content/Context;I)Lcom/mediatek/ims/ril/OpImsCommandsInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mOpCI:Lcom/mediatek/ims/ril/OpImsCommandsInterface;

    .line 876
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/ril/ImsRILAdapter;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;
    .param p1, "x1"    # I

    .line 318
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->clearWakeLock(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/ims/ril/ImsRILAdapter;I)Lcom/mediatek/ims/ril/RILRequest;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;
    .param p1, "x1"    # I

    .line 318
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->findAndRemoveRequestFromList(I)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/ims/ril/RILRequest;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ril/RILRequest;

    .line 318
    invoke-static {p0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getResponseForTimedOutRILRequest(Lcom/mediatek/ims/ril/RILRequest;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/ims/ril/ImsRILAdapter;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 318
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/ims/ril/ImsRILAdapter;Lcom/mediatek/ims/ril/RILRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;
    .param p1, "x1"    # Lcom/mediatek/ims/ril/RILRequest;

    .line 318
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->decrementWakeLock(Lcom/mediatek/ims/ril/RILRequest;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/ims/ril/ImsRILAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 318
    invoke-direct {p0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->resetProxyAndRequestList()V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/ims/ril/ImsRILAdapter;Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;
    .param p1, "x1"    # Landroid/os/Message;

    .line 318
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/ims/ril/ImsRILAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 318
    invoke-direct {p0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->resetMtkProxyAndRequestList()V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/ims/ril/ImsRILAdapter;Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;
    .param p1, "x1"    # Landroid/os/Message;

    .line 318
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    return-object v0
.end method

.method private acquireWakeLock(Lcom/mediatek/ims/ril/RILRequest;I)V
    .locals 7
    .param p1, "rr"    # Lcom/mediatek/ims/ril/RILRequest;
    .param p2, "wakeLockType"    # I

    .line 4339
    monitor-enter p1

    .line 4340
    :try_start_0
    iget v0, p1, Lcom/mediatek/ims/ril/RILRequest;->mWakeLockType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4341
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

    .line 4342
    monitor-exit p1

    return-void

    .line 4345
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 4381
    const-string v0, "IMS_RILA"

    goto/16 :goto_2

    .line 4371
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4372
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4373
    iget v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWlSequenceNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWlSequenceNum:I

    .line 4375
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4376
    .local v1, "msg":Landroid/os/Message;
    iget v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWlSequenceNum:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 4377
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    iget v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLockTimeout:I

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4378
    nop

    .end local v1    # "msg":Landroid/os/Message;
    monitor-exit v0

    .line 4379
    goto :goto_1

    .line 4378
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    .end local p1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local p2    # "wakeLockType":I
    :try_start_2
    throw v1

    .line 4347
    .restart local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    .restart local p1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .restart local p2    # "wakeLockType":I
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4348
    :try_start_3
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4349
    iget v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    .line 4350
    iget v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWlSequenceNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWlSequenceNum:I

    .line 4352
    iget-object v1, p1, Lcom/mediatek/ims/ril/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getWorkSourceClientId(Landroid/os/WorkSource;)Ljava/lang/String;

    move-result-object v1

    .line 4353
    .local v1, "clientId":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/ClientWakelockTracker;->isClientActive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4354
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    if-eqz v2, :cond_1

    .line 4355
    iget-object v3, p1, Lcom/mediatek/ims/ril/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    goto :goto_0

    .line 4357
    :cond_1
    iget-object v2, p1, Lcom/mediatek/ims/ril/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    iput-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 4359
    :goto_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 4362
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    iget-object v3, p1, Lcom/mediatek/ims/ril/RILRequest;->mClientId:Ljava/lang/String;

    iget v4, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    iget v5, p1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    iget v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/ClientWakelockTracker;->startTracking(Ljava/lang/String;III)V

    .line 4365
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 4366
    .local v2, "msg":Landroid/os/Message;
    iget v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWlSequenceNum:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 4367
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    iget v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockTimeout:I

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4368
    nop

    .end local v1    # "clientId":Ljava/lang/String;
    .end local v2    # "msg":Landroid/os/Message;
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4369
    nop

    .line 4384
    :goto_1
    :try_start_4
    iput p2, p1, Lcom/mediatek/ims/ril/RILRequest;->mWakeLockType:I

    .line 4385
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 4386
    return-void

    .line 4368
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    .end local p1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local p2    # "wakeLockType":I
    :try_start_6
    throw v1

    .line 4381
    .restart local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    .restart local p1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .restart local p2    # "wakeLockType":I
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Acquiring Invalid Wakelock type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4382
    monitor-exit p1

    return-void

    .line 4385
    :catchall_2
    move-exception v0

    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private addRequest(Lcom/mediatek/ims/ril/RILRequest;)V
    .locals 3
    .param p1, "rr"    # Lcom/mediatek/ims/ril/RILRequest;

    .line 879
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->acquireWakeLock(Lcom/mediatek/ims/ril/RILRequest;I)V

    .line 880
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 881
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/mediatek/ims/ril/RILRequest;->mStartTimeMs:J

    .line 882
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    iget v2, p1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 883
    monitor-exit v0

    .line 884
    return-void

    .line 883
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

    .line 4488
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 4489
    .local v0, "endTime":J
    iget-wide v2, p1, Lcom/mediatek/ims/ril/RILRequest;->mStartTimeMs:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    .line 4491
    .local v2, "totalTime":I
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    monitor-enter v3

    .line 4492
    :try_start_0
    sget-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    iget v5, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyHistogram;

    .line 4493
    .local v4, "entry":Landroid/telephony/TelephonyHistogram;
    if-nez v4, :cond_0

    .line 4495
    new-instance v5, Landroid/telephony/TelephonyHistogram;

    const/4 v6, 0x1

    iget v7, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/4 v8, 0x5

    invoke-direct {v5, v6, v7, v8}, Landroid/telephony/TelephonyHistogram;-><init>(III)V

    move-object v4, v5

    .line 4497
    sget-object v5, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    iget v6, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4499
    :cond_0
    invoke-virtual {v4, v2}, Landroid/telephony/TelephonyHistogram;->addTimeTaken(I)V

    .line 4500
    .end local v4    # "entry":Landroid/telephony/TelephonyHistogram;
    monitor-exit v3

    .line 4501
    return-void

    .line 4500
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private clearWakeLock(I)Z
    .locals 6
    .param p1, "wakeLockType"    # I

    .line 4427
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 4428
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 4429
    :try_start_0
    iget v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v2

    return v1

    .line 4430
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

    .line 4432
    iput v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    .line 4433
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4434
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ClientWakelockTracker;->stopTrackingAll()V

    .line 4435
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 4436
    monitor-exit v2

    return v0

    .line 4437
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4439
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 4440
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_2

    monitor-exit v2

    return v1

    .line 4441
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4442
    monitor-exit v2

    return v0

    .line 4443
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

    .line 4068
    new-instance v0, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 4069
    .local v0, "msg":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    const-string v1, ""

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    iput-object v2, v0, Landroid/hardware/radio/V1_0/GsmSmsMessage;->smscPdu:Ljava/lang/String;

    .line 4070
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    iput-object v1, v0, Landroid/hardware/radio/V1_0/GsmSmsMessage;->pdu:Ljava/lang/String;

    .line 4071
    return-object v0
.end method

.method private decrementWakeLock(Lcom/mediatek/ims/ril/RILRequest;)V
    .locals 8
    .param p1, "rr"    # Lcom/mediatek/ims/ril/RILRequest;

    .line 4389
    monitor-enter p1

    .line 4390
    :try_start_0
    iget v0, p1, Lcom/mediatek/ims/ril/RILRequest;->mWakeLockType:I

    packed-switch v0, :pswitch_data_0

    .line 4420
    const-string v0, "IMS_RILA"

    goto :goto_2

    .line 4416
    :pswitch_0
    goto :goto_3

    .line 4392
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4393
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    iget-object v2, p1, Lcom/mediatek/ims/ril/RILRequest;->mClientId:Ljava/lang/String;

    iget v3, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    iget v4, p1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 4395
    iget v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-le v5, v7, :cond_0

    sub-int/2addr v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    .line 4393
    :goto_0
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/ClientWakelockTracker;->stopTracking(Ljava/lang/String;III)V

    .line 4396
    iget-object v1, p1, Lcom/mediatek/ims/ril/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getWorkSourceClientId(Landroid/os/WorkSource;)Ljava/lang/String;

    move-result-object v1

    .line 4397
    .local v1, "clientId":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/ClientWakelockTracker;->isClientActive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    if-eqz v2, :cond_2

    .line 4399
    iget-object v3, p1, Lcom/mediatek/ims/ril/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->remove(Landroid/os/WorkSource;)Z

    .line 4400
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 4401
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 4403
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 4406
    :cond_2
    iget v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    if-le v2, v7, :cond_3

    .line 4407
    sub-int/2addr v2, v7

    iput v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    goto :goto_1

    .line 4409
    :cond_3
    iput v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    .line 4410
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4412
    .end local v1    # "clientId":Ljava/lang/String;
    :goto_1
    monitor-exit v0

    .line 4413
    goto :goto_3

    .line 4412
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    .end local p1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :try_start_2
    throw v1

    .line 4418
    .restart local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    .restart local p1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :pswitch_2
    goto :goto_3

    .line 4420
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decrementing Invalid Wakelock type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/mediatek/ims/ril/RILRequest;->mWakeLockType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4422
    :goto_3
    const/4 v0, -0x1

    iput v0, p1, Lcom/mediatek/ims/ril/RILRequest;->mWakeLockType:I

    .line 4423
    monitor-exit p1

    .line 4424
    return-void

    .line 4423
    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private emergencyDial(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 16
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "callprofile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "clirMode"    # I
    .param p4, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p5, "result"    # Landroid/os/Message;

    .line 2398
    move-object/from16 v1, p0

    move-object/from16 v2, p5

    invoke-direct {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v3

    .line 2400
    .local v3, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    move-object v12, v3

    check-cast v12, Landroid/hardware/radio/V1_4/IRadio;

    .line 2402
    .local v12, "radioProxy14":Landroid/hardware/radio/V1_4/IRadio;
    if-eqz v3, :cond_2

    .line 2403
    const/16 v0, 0x827

    iget-object v4, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {v1, v0, v2, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v13

    .line 2405
    .local v13, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v0, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    move-object v14, v0

    .line 2406
    .local v14, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Landroid/hardware/radio/V1_0/Dial;->address:Ljava/lang/String;

    .line 2407
    move/from16 v15, p3

    iput v15, v14, Landroid/hardware/radio/V1_0/Dial;->clir:I

    .line 2408
    if-eqz p4, :cond_0

    .line 2409
    new-instance v0, Landroid/hardware/radio/V1_0/UusInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/UusInfo;-><init>()V

    .line 2410
    .local v0, "info":Landroid/hardware/radio/V1_0/UusInfo;
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v4

    iput v4, v0, Landroid/hardware/radio/V1_0/UusInfo;->uusType:I

    .line 2411
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v4

    iput v4, v0, Landroid/hardware/radio/V1_0/UusInfo;->uusDcs:I

    .line 2412
    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    iput-object v4, v0, Landroid/hardware/radio/V1_0/UusInfo;->uusData:Ljava/lang/String;

    .line 2413
    iget-object v4, v14, Landroid/hardware/radio/V1_0/Dial;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2418
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

    .line 2423
    :try_start_0
    iget v5, v13, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2424
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyServiceCategories()I

    move-result v7

    .line 2426
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyUrns()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2427
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyUrns()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v8, v0

    goto :goto_0

    .line 2428
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 2429
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyCallRouting()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 2423
    move-object v4, v12

    move-object v6, v14

    invoke-interface/range {v4 .. v11}, Landroid/hardware/radio/V1_4/IRadio;->emergencyDial(ILandroid/hardware/radio/V1_0/Dial;ILjava/util/ArrayList;IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2432
    goto :goto_1

    .line 2430
    :catch_0
    move-exception v0

    .line 2431
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "emergencyDial"

    invoke-direct {v1, v13, v4, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 2402
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v13    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v14    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :cond_2
    move/from16 v15, p3

    .line 2434
    :goto_1
    return-void
.end method

.method private findAndRemoveRequestFromList(I)Lcom/mediatek/ims/ril/RILRequest;
    .locals 3
    .param p1, "serial"    # I

    .line 4476
    const/4 v0, 0x0

    .line 4477
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v1

    .line 4478
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ril/RILRequest;

    move-object v0, v2

    .line 4479
    if-eqz v0, :cond_0

    .line 4480
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4482
    :cond_0
    monitor-exit v1

    .line 4484
    return-object v0

    .line 4482
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

    .line 4051
    if-nez p1, :cond_0

    .line 4052
    iget-object p1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 4055
    :cond_0
    return-object p1
.end method

.method private getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 5100
    iget-boolean v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mIsMobileNetworkSupported:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5102
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleProxyNotExist(Landroid/os/Message;)V

    .line 5103
    return-object v1

    .line 5106
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    if-eqz v0, :cond_1

    .line 5107
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    return-object v0

    .line 5110
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    const/4 v2, 0x7

    .line 5111
    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_8

    .line 5120
    :cond_2
    const/4 v0, 0x0

    :try_start_0
    sget-object v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

    .line 5123
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    if-nez v3, :cond_3

    move v3, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_0
    aget-object v2, v2, v3

    .line 5122
    invoke-static {v2, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->getService(Ljava/lang/String;Z)Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5127
    goto :goto_1

    .line 5124
    :catch_0
    move-exception v2

    .line 5125
    .local v2, "e":Ljava/lang/Exception;
    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 5126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMtkRadioProxy getServiceV3_0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 5129
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    const-string v3, "getMtkRadioProxy mMtkRadioVersion = "

    if-eqz v2, :cond_5

    .line 5131
    :try_start_1
    sget-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 5132
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    .line 5133
    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->castFrom(Landroid/os/IHwInterface;)Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    .line 5135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 5136
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    if-eqz v0, :cond_4

    .line 5137
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxyDeathRecipient:Lcom/mediatek/ims/ril/ImsRILAdapter$MtkRadioProxyDeathRecipient;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 5138
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 5139
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRadioResponse:Lcom/mediatek/ims/ril/ImsRadioResponse;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRadioIndication:Lcom/mediatek/ims/ril/ImsRadioIndication;

    .line 5140
    invoke-interface {v0, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setResponseFunctionsIms(Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication;)V

    goto :goto_2

    .line 5142
    :cond_4
    const-string v0, "getMtkRadioProxy setResponseFunctionsMtkV3_0: error, castFrom failed."

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 5144
    :catch_1
    move-exception v0

    .line 5145
    .local v0, "e":Ljava/lang/Exception;
    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 5146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMtkRadioProxy setResponseFunctionsMtkV3_0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 5147
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    goto/16 :goto_7

    .line 5150
    :cond_5
    :try_start_2
    sget-object v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

    .line 5153
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    if-nez v4, :cond_6

    move v4, v0

    goto :goto_3

    :cond_6
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_3
    aget-object v2, v2, v4

    .line 5152
    invoke-static {v2, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getService(Ljava/lang/String;Z)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 5157
    goto :goto_4

    .line 5154
    :catch_2
    move-exception v0

    .line 5155
    .restart local v0    # "e":Ljava/lang/Exception;
    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    .line 5156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMtkRadioProxy getServiceV2_0: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 5158
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    if-eqz v0, :cond_c

    .line 5159
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRadioResponseV2:Lcom/mediatek/ims/ril/ImsRadioResponseV2;

    if-nez v0, :cond_7

    .line 5160
    new-instance v0, Lcom/mediatek/ims/ril/ImsRadioResponseV2;

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, p0, v2}, Lcom/mediatek/ims/ril/ImsRadioResponseV2;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRadioResponseV2:Lcom/mediatek/ims/ril/ImsRadioResponseV2;

    .line 5162
    :cond_7
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRadioIndicationV2:Lcom/mediatek/ims/ril/ImsRadioIndicationV2;

    if-nez v0, :cond_8

    .line 5163
    new-instance v0, Lcom/mediatek/ims/ril/ImsRadioIndicationV2;

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, p0, v2}, Lcom/mediatek/ims/ril/ImsRadioIndicationV2;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRadioIndicationV2:Lcom/mediatek/ims/ril/ImsRadioIndicationV2;

    .line 5166
    :cond_8
    :try_start_3
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx;->castFrom(Landroid/os/IHwInterface;)Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 5168
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    .line 5169
    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx;->castFrom(Landroid/os/IHwInterface;)Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    .line 5171
    sget-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_2_2:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    goto :goto_5

    .line 5172
    :cond_9
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_1/IMtkRadioEx;->castFrom(Landroid/os/IHwInterface;)Lvendor/mediatek/hardware/mtkradioex/V2_1/IMtkRadioEx;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 5174
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    .line 5175
    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_1/IMtkRadioEx;->castFrom(Landroid/os/IHwInterface;)Lvendor/mediatek/hardware/mtkradioex/V2_1/IMtkRadioEx;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    .line 5177
    sget-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    goto :goto_5

    .line 5179
    :cond_a
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    .line 5181
    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->castFrom(Landroid/os/IHwInterface;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    .line 5182
    sget-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 5184
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 5185
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    if-eqz v0, :cond_b

    .line 5186
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxyDeathRecipient:Lcom/mediatek/ims/ril/ImsRILAdapter$MtkRadioProxyDeathRecipient;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 5187
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 5188
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRadioResponseV2:Lcom/mediatek/ims/ril/ImsRadioResponseV2;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRadioIndicationV2:Lcom/mediatek/ims/ril/ImsRadioIndicationV2;

    .line 5189
    invoke-interface {v0, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setResponseFunctionsIms(Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioIndication;)V

    goto :goto_6

    .line 5191
    :cond_b
    const-string v0, "getMtkRadioProxy setResponseFunctionsV2: error, castFrom failed."

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 5196
    :goto_6
    goto :goto_7

    .line 5193
    :catch_3
    move-exception v0

    .line 5194
    .restart local v0    # "e":Ljava/lang/Exception;
    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    .line 5195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMtkRadioProxy setResponseFunctionsV2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 5200
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_c
    :goto_7
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    if-nez v0, :cond_d

    .line 5201
    if-eqz p1, :cond_d

    .line 5202
    const/4 v0, 0x1

    .line 5203
    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 5202
    invoke-static {p1, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 5204
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 5208
    :cond_d
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    return-object v0

    .line 5114
    :cond_e
    :goto_8
    const-string v0, "getMtkRadioProxy service died, we try again later"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 5115
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleProxyNotExist(Landroid/os/Message;)V

    .line 5116
    return-object v1
.end method

.method private getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;
    .locals 8
    .param p1, "result"    # Landroid/os/Message;

    .line 724
    iget-boolean v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mIsMobileNetworkSupported:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 726
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleProxyNotExist(Landroid/os/Message;)V

    .line 727
    return-object v1

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-eqz v0, :cond_1

    .line 731
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    return-object v0

    .line 734
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 737
    const-string v0, "getRadioProxy service died, we try again later"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 738
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleProxyNotExist(Landroid/os/Message;)V

    .line 739
    return-object v1

    .line 744
    :cond_2
    const/4 v0, 0x1

    :try_start_0
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

    .line 745
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    const/4 v5, 0x0

    if-nez v4, :cond_3

    move v4, v5

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_0
    aget-object v3, v3, v4

    .line 744
    invoke-static {v3, v5}, Landroid/hardware/radio/V1_0/IRadio;->getService(Ljava/lang/String;Z)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 746
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_0:Lcom/android/internal/telephony/HalVersion;

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    goto :goto_1

    .line 805
    :catch_0
    move-exception v3

    goto/16 :goto_5

    .line 747
    :catch_1
    move-exception v3

    .line 748
    .local v3, "e":Ljava/util/NoSuchElementException;
    :try_start_1
    const-string v4, "getRadioProxy: NoSuchElementException "

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 751
    .end local v3    # "e":Ljava/util/NoSuchElementException;
    :goto_1
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-eqz v3, :cond_9

    .line 752
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v3}, Landroid/hardware/radio/V1_5/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_5/IRadio;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 753
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v3}, Landroid/hardware/radio/V1_5/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_5/IRadio;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 754
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    goto :goto_2

    .line 755
    :cond_4
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v3}, Landroid/hardware/radio/V1_4/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_4/IRadio;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 756
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v3}, Landroid/hardware/radio/V1_4/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_4/IRadio;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 757
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    goto :goto_2

    .line 758
    :cond_5
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v3}, Landroid/hardware/radio/V1_3/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_3/IRadio;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 759
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v3}, Landroid/hardware/radio/V1_3/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_3/IRadio;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 760
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_3:Lcom/android/internal/telephony/HalVersion;

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    goto :goto_2

    .line 761
    :cond_6
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v3}, Landroid/hardware/radio/V1_2/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_2/IRadio;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 762
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v3}, Landroid/hardware/radio/V1_2/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_2/IRadio;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 763
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_2:Lcom/android/internal/telephony/HalVersion;

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    goto :goto_2

    .line 764
    :cond_7
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v3}, Landroid/hardware/radio/V1_1/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_1/IRadio;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 765
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v3}, Landroid/hardware/radio/V1_1/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_1/IRadio;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 766
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 768
    :cond_8
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRadioProxy: mRadioVersion "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 771
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRadioProxy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 772
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-eqz v3, :cond_d

    .line 773
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxyDeathRecipient:Lcom/mediatek/ims/ril/ImsRILAdapter$RadioProxyDeathRecipient;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 774
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v5

    .line 773
    invoke-interface {v3, v4, v5, v6}, Landroid/hardware/radio/V1_0/IRadio;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 775
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioResponse:Lcom/mediatek/ims/ril/RadioResponseImpl;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioIndication:Lcom/mediatek/ims/ril/RadioIndicationImpl;

    invoke-interface {v3, v4, v5}, Landroid/hardware/radio/V1_0/IRadio;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    .line 776
    const-string v3, "setResponseFunctionsIms"

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 778
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    if-eqz v3, :cond_e

    .line 779
    monitor-enter v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 781
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queue size  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v5}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 782
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v4

    sub-int/2addr v4, v0

    .local v4, "i":I
    :goto_3
    if-ltz v4, :cond_a

    .line 783
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v5, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->remove(I)V

    .line 782
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 785
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "queue size  after "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 786
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v5}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->getPendingRequest()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 787
    const-string v5, "reset pending switch request"

    invoke-virtual {p0, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 789
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 790
    invoke-virtual {v5}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->getPendingRequest()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v5

    .line 791
    .local v5, "pendingDqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v6, v5, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->rr:Lcom/mediatek/ims/ril/RILRequest;

    .line 792
    .local v6, "pendingRequest":Lcom/mediatek/ims/ril/RILRequest;
    iget-object v7, v6, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v7, :cond_b

    .line 793
    iget-object v7, v6, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v7, v1, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 794
    iget-object v7, v6, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 797
    :cond_b
    iget-object v7, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v7}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->resetSendChldRequest()V

    .line 798
    iget-object v7, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v7, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->setPendingRequest(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 800
    .end local v4    # "i":I
    .end local v5    # "pendingDqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    .end local v6    # "pendingRequest":Lcom/mediatek/ims/ril/RILRequest;
    :cond_c
    monitor-exit v3

    goto :goto_4

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    .end local p1    # "result":Landroid/os/Message;
    :try_start_3
    throw v4

    .line 803
    .restart local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    .restart local p1    # "result":Landroid/os/Message;
    :cond_d
    const-string v3, "getRadioProxy: mRadioProxy == null"

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 808
    :cond_e
    :goto_4
    goto :goto_6

    .line 806
    .local v3, "e":Ljava/lang/Exception;
    :goto_5
    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 807
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RadioProxy getService/setResponseFunctions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 810
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_6
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-nez v3, :cond_10

    .line 811
    if-eqz p1, :cond_f

    .line 812
    nop

    .line 813
    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 812
    invoke-static {p1, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 814
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 817
    :cond_f
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->removeMessages(I)V

    .line 818
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 819
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    .line 818
    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 823
    :cond_10
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    return-object v0
.end method

.method private static getResponseForTimedOutRILRequest(Lcom/mediatek/ims/ril/RILRequest;)Ljava/lang/Object;
    .locals 9
    .param p0, "rr"    # Lcom/mediatek/ims/ril/RILRequest;

    .line 671
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 673
    :cond_0
    const/4 v0, 0x0

    .line 674
    .local v0, "timeoutResponse":Ljava/lang/Object;
    iget v1, p0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 676
    :pswitch_0
    new-instance v1, Landroid/telephony/ModemActivityInfo;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 677
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v2

    new-array v7, v2, [I

    const/4 v8, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Landroid/telephony/ModemActivityInfo;-><init>(JII[II)V

    move-object v0, v1

    .line 680
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x87
        :pswitch_0
    .end packed-switch
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

    .line 466
    sget-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    monitor-enter v0

    .line 467
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 468
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 469
    new-instance v3, Landroid/telephony/TelephonyHistogram;

    sget-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyHistogram;

    invoke-direct {v3, v4}, Landroid/telephony/TelephonyHistogram;-><init>(Landroid/telephony/TelephonyHistogram;)V

    .line 470
    .local v3, "entry":Landroid/telephony/TelephonyHistogram;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    nop

    .end local v3    # "entry":Landroid/telephony/TelephonyHistogram;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 472
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    .line 473
    return-object v1

    .line 472
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

    .line 4059
    if-eqz p1, :cond_0

    .line 4060
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

    .line 4063
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleChldRelatedRequest(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)V
    .locals 11
    .param p1, "rr"    # Lcom/mediatek/ims/ril/RILRequest;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 3666
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    monitor-enter v0

    .line 3667
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v1

    .line 3669
    .local v1, "queueSize":I
    if-lez v1, :cond_5

    .line 3670
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->get()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v2

    .line 3671
    .local v2, "dqrr2":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v3, v2, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->rr:Lcom/mediatek/ims/ril/RILRequest;

    .line 3672
    .local v3, "rr2":Lcom/mediatek/ims/ril/RILRequest;
    iget v4, v3, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/16 v5, 0x31

    const/4 v6, 0x0

    if-ne v4, v5, :cond_2

    .line 3674
    const-string v4, "DTMF queue isn\'t 0, first request is START, send stop dtmf and pending switch"

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3676
    const/4 v4, 0x1

    if-le v1, v4, :cond_0

    .line 3677
    const/4 v5, 0x2

    .local v5, "j":I
    goto :goto_0

    .line 3680
    .end local v5    # "j":I
    :cond_0
    const/4 v5, 0x1

    .line 3682
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

    .line 3683
    add-int/lit8 v7, v1, -0x1

    .local v7, "i":I
    :goto_1
    if-lt v7, v5, :cond_1

    .line 3684
    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v8, v7}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->remove(I)V

    .line 3683
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 3686
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

    .line 3687
    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v8}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v8

    if-ne v8, v4, :cond_3

    .line 3689
    const-string v8, "add dummy stop dtmf request"

    invoke-virtual {p0, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3690
    const/16 v8, 0x32

    iget-object v9, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v8, v6, v9}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v8

    .line 3693
    .local v8, "rr3":Lcom/mediatek/ims/ril/RILRequest;
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, v8, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v9

    .line 3694
    .local v4, "myParam":[Ljava/lang/Object;
    iget-object v9, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v9, v8, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->buildDtmfQueueRR(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v9

    .line 3696
    .local v9, "dqrr3":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v10, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v10}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->stop()V

    .line 3697
    iget-object v10, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v10, v9}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->add(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 3698
    .end local v4    # "myParam":[Ljava/lang/Object;
    .end local v8    # "rr3":Lcom/mediatek/ims/ril/RILRequest;
    .end local v9    # "dqrr3":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    goto :goto_3

    .line 3703
    .end local v5    # "j":I
    .end local v7    # "i":I
    :cond_2
    const-string v4, "DTMF queue isn\'t 0, first request is STOP, penging switch"

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3704
    const/4 v5, 0x1

    .line 3705
    .restart local v5    # "j":I
    add-int/lit8 v4, v1, -0x1

    move v7, v4

    .restart local v7    # "i":I
    :goto_2
    if-lt v7, v5, :cond_3

    .line 3706
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v4, v7}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->remove(I)V

    .line 3705
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 3712
    :cond_3
    :goto_3
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->getPendingRequest()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 3713
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->getPendingRequest()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v4

    .line 3714
    .local v4, "pendingDqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v8, v4, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->rr:Lcom/mediatek/ims/ril/RILRequest;

    .line 3715
    .local v8, "pendingRequest":Lcom/mediatek/ims/ril/RILRequest;
    iget-object v9, v8, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v9, :cond_4

    .line 3716
    iget-object v9, v8, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v9, v6, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3717
    iget-object v6, v8, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 3721
    .end local v4    # "pendingDqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    .end local v8    # "pendingRequest":Lcom/mediatek/ims/ril/RILRequest;
    :cond_4
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v4, p1, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->buildDtmfQueueRR(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v4

    .line 3722
    .local v4, "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v6, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->setPendingRequest(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 3723
    .end local v2    # "dqrr2":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    .end local v3    # "rr2":Lcom/mediatek/ims/ril/RILRequest;
    .end local v4    # "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    goto :goto_4

    .line 3724
    .end local v5    # "j":I
    .end local v7    # "i":I
    :cond_5
    const-string v2, "DTMF queue is 0, send switch Immediately"

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3725
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->setSendChldRequest()V

    .line 3726
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2, p1, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->buildDtmfQueueRR(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v2

    .line 3727
    .local v2, "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendDtmfQueueRR(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 3729
    .end local v1    # "queueSize":I
    .end local v2    # "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    :goto_4
    monitor-exit v0

    .line 3730
    return-void

    .line 3729
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

    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 900
    invoke-direct {p0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->resetMtkProxyAndRequestList()V

    .line 901
    return-void
.end method

.method private handleProxyNotExist(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .line 5092
    if-eqz p1, :cond_0

    .line 5093
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 5094
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v1

    .line 5093
    invoke-static {p1, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 5095
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 5097
    :cond_0
    return-void
.end method

.method private handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "rr"    # Lcom/mediatek/ims/ril/RILRequest;
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    .line 893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 894
    invoke-direct {p0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->resetProxyAndRequestList()V

    .line 895
    return-void
.end method

.method private internalAddConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 9
    .param p1, "confCallId"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "callIdToAdd"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 3560
    invoke-direct {p0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 3561
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 3562
    const/16 v1, 0x82a

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3566
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3567
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " confCallId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " address = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3568
    invoke-static {p2}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " callIdToAdd ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3566
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3573
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3574
    move-object v3, v0

    check-cast v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/4 v5, 0x1

    .line 3575
    move v6, p1

    move-object v7, p2

    move v8, p3

    invoke-interface/range {v3 .. v8}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->controlImsConferenceCallMember(IIILjava/lang/String;I)V

    goto :goto_0

    .line 3578
    :cond_0
    move-object v3, v0

    check-cast v3, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/4 v5, 0x1

    .line 3579
    move v6, p1

    move-object v7, p2

    move v8, p3

    invoke-interface/range {v3 .. v8}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->controlImsConferenceCallMember(IIILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3584
    :goto_0
    goto :goto_1

    .line 3582
    :catch_0
    move-exception v2

    .line 3583
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "addImsConferenceCallMember"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3586
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method private internalImsEct(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 3634
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 3635
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 3636
    const/16 v1, 0x823

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3640
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

    .line 3644
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3645
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 3646
    invoke-interface {v2, v3, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->imsEctCommand(ILjava/lang/String;I)V

    goto :goto_0

    .line 3648
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 3649
    invoke-interface {v2, v3, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->imsEctCommand(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3653
    :goto_0
    goto :goto_1

    .line 3651
    :catch_0
    move-exception v2

    .line 3652
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "imsEctCommand"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3655
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method private internalRemoveConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 9
    .param p1, "confCallId"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "callIdToRemove"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 3598
    invoke-direct {p0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 3599
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 3600
    const/16 v1, 0x82b

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3604
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3605
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " confCallId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " address = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3606
    invoke-static {p2}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " callIdToRemove ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3604
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3611
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3612
    move-object v3, v0

    check-cast v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/4 v5, 0x0

    .line 3613
    move v6, p1

    move-object v7, p2

    move v8, p3

    invoke-interface/range {v3 .. v8}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->controlImsConferenceCallMember(IIILjava/lang/String;I)V

    goto :goto_0

    .line 3616
    :cond_0
    move-object v3, v0

    check-cast v3, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/4 v5, 0x0

    .line 3617
    move v6, p1

    move-object v7, p2

    move v8, p3

    invoke-interface/range {v3 .. v8}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->controlImsConferenceCallMember(IIILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3622
    :goto_0
    goto :goto_1

    .line 3620
    :catch_0
    move-exception v2

    .line 3621
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "removeImsConferenceCallMember"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3624
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method private obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;
    .locals 1
    .param p1, "request"    # I
    .param p2, "result"    # Landroid/os/Message;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .line 887
    invoke-static {p1, p2, p3}, Lcom/mediatek/ims/ril/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 888
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->addRequest(Lcom/mediatek/ims/ril/RILRequest;)V

    .line 889
    return-object v0
.end method

.method static requestToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "request"    # I

    .line 4733
    sparse-switch p0, :sswitch_data_0

    .line 4860
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

    .line 4858
    :sswitch_0
    const-string v0, "RIL_REQUEST_VIDEO_RINGTONE_EVENT"

    return-object v0

    .line 4855
    :sswitch_1
    const-string v0, "RIL_REQUEST_SET_CALL_ADDITIONAL_INFO"

    return-object v0

    .line 4758
    :sswitch_2
    const-string v0, "ECC_REDIAL_APPROVE"

    return-object v0

    .line 4852
    :sswitch_3
    const-string v0, "RIL_REQUEST_TOGGLE_RTT_AUDIO_INDICATION"

    return-object v0

    .line 4850
    :sswitch_4
    const-string v0, "RIL_REQUEST_QUERY_SSAC_STATUS"

    return-object v0

    .line 4848
    :sswitch_5
    const-string v0, "RIL_REQUEST_SET_IMS_CALL_MODE"

    return-object v0

    .line 4846
    :sswitch_6
    const-string v0, "RIL_REQUEST_SIP_HEADER_REPORT"

    return-object v0

    .line 4844
    :sswitch_7
    const-string v0, "RIL_REQUEST_SET_SIP_HEADER"

    return-object v0

    .line 4745
    :sswitch_8
    const-string v0, "HANGUP_WITH_REASON"

    return-object v0

    .line 4841
    :sswitch_9
    const-string v0, "RIL_REQUEST_QUERY_VOPS_STATUS"

    return-object v0

    .line 4840
    :sswitch_a
    const-string v0, "RIL_REQUEST_RTT_MODIFY_REQUST_RESPONSE"

    return-object v0

    .line 4838
    :sswitch_b
    const-string v0, "RIL_REQUEST_SEND_RTT_TEXT"

    return-object v0

    .line 4836
    :sswitch_c
    const-string v0, "RIL_REQUEST_SEND_RTT_MODIFY_REQUEST"

    return-object v0

    .line 4834
    :sswitch_d
    const-string v0, "RIL_REQUEST_SET_RTT_MODE"

    return-object v0

    .line 4805
    :sswitch_e
    const-string v0, "CDMA_SMS_ACKNOWLEDGE_EX"

    return-object v0

    .line 4804
    :sswitch_f
    const-string v0, "RIL_REQUEST_SMS_ACKNOWLEDGE_EX"

    return-object v0

    .line 4829
    :sswitch_10
    const-string v0, "SETUP_XCAP_USER_AGENT_STRING"

    return-object v0

    .line 4831
    :sswitch_11
    const-string v0, "RIL_REQUEST_SET_RCS_UA_ENABLE"

    return-object v0

    .line 4828
    :sswitch_12
    const-string v0, "RIL_REQUEST_RESET_SUPP_SERV"

    return-object v0

    .line 4827
    :sswitch_13
    const-string v0, "RIL_REQUEST_GET_XCAP_STATUS"

    return-object v0

    .line 4771
    :sswitch_14
    const-string v0, "IMS_CONFIG_GET_RESOURCE_CAP"

    return-object v0

    .line 4769
    :sswitch_15
    const-string v0, "IMS_CONFIG_GET_PROVISION"

    return-object v0

    .line 4767
    :sswitch_16
    const-string v0, "IMS_CONFIG_SET_PROVISION"

    return-object v0

    .line 4765
    :sswitch_17
    const-string v0, "IMS_CONFIG_GET_FEATURE"

    return-object v0

    .line 4763
    :sswitch_18
    const-string v0, "IMS_CONFIG_SET_FEATURE"

    return-object v0

    .line 4775
    :sswitch_19
    const-string v0, "RIL_REQUEST_SET_IMS_BEARER_NOTIFICATION"

    return-object v0

    .line 4803
    :sswitch_1a
    const-string v0, "RIL_REQUEST_IMS_SEND_SMS_EX"

    return-object v0

    .line 4801
    :sswitch_1b
    const-string v0, "ImsRILConstants.RIL_REQUEST_SET_MD_IMSCFG"

    return-object v0

    .line 4826
    :sswitch_1c
    const-string v0, "RIL_REQUEST_RUN_GBA"

    return-object v0

    .line 4825
    :sswitch_1d
    const-string v0, "SET_CALL_FORWARD_IN_TIME_SLOT"

    return-object v0

    .line 4824
    :sswitch_1e
    const-string v0, "QUERY_CALL_FORWARD_IN_TIME_SLOT"

    return-object v0

    .line 4822
    :sswitch_1f
    const-string v0, "SET_COLR"

    return-object v0

    .line 4820
    :sswitch_20
    const-string v0, "SET_COLP"

    return-object v0

    .line 4800
    :sswitch_21
    const-string v0, "RIL_REQUEST_SET_VOICE_DOMAIN_PREFERENCE"

    return-object v0

    .line 4821
    :sswitch_22
    const-string v0, "GET_COLR"

    return-object v0

    .line 4819
    :sswitch_23
    const-string v0, "GET_COLP"

    return-object v0

    .line 4818
    :sswitch_24
    const-string v0, "SET_CLIP"

    return-object v0

    .line 4789
    :sswitch_25
    const-string v0, "IMS_VT_DIAL"

    return-object v0

    .line 4788
    :sswitch_26
    const-string v0, "IMS_DIAL"

    return-object v0

    .line 4786
    :sswitch_27
    const-string v0, "SET_IMS_REGISTRATION_REPORT"

    return-object v0

    .line 4787
    :sswitch_28
    const-string v0, "PULL_CALL"

    return-object v0

    .line 4784
    :sswitch_29
    const-string v0, "SET_WFC_PROFILE"

    return-object v0

    .line 4783
    :sswitch_2a
    const-string v0, "CANCEL_USSI"

    return-object v0

    .line 4782
    :sswitch_2b
    const-string v0, "SEND_USSI"

    return-object v0

    .line 4781
    :sswitch_2c
    const-string v0, "VT_DIAL_WITH_SIP_URI"

    return-object v0

    .line 4796
    :sswitch_2d
    const-string v0, "RIL_REQUEST_REMOVE_IMS_CONFERENCE_CALL_MEMBER"

    return-object v0

    .line 4794
    :sswitch_2e
    const-string v0, "RIL_REQUEST_ADD_IMS_CONFERENCE_CALL_MEMBER"

    return-object v0

    .line 4792
    :sswitch_2f
    const-string v0, "RIL_REQUEST_CONFERENCE_DIAL"

    return-object v0

    .line 4791
    :sswitch_30
    const-string v0, "ImsRILConstants.RIL_REQUEST_SET_IMS_RTP_REPORT"

    return-object v0

    .line 4790
    :sswitch_31
    const-string v0, "IMS_EMERGENCY_DIAL"

    return-object v0

    .line 4779
    :sswitch_32
    const-string v0, "RESUME_CALL"

    return-object v0

    .line 4778
    :sswitch_33
    const-string v0, "HOLD_CALL"

    return-object v0

    .line 4777
    :sswitch_34
    const-string v0, "IMS_ECT"

    return-object v0

    .line 4776
    :sswitch_35
    const-string v0, "IMS_DEREG_NOTIFICATION"

    return-object v0

    .line 4773
    :sswitch_36
    const-string v0, "IMS_BEARER_STATE_CONFIRM"

    return-object v0

    .line 4761
    :sswitch_37
    const-string v0, "SET_PROVISION_VALUE"

    return-object v0

    .line 4760
    :sswitch_38
    const-string v0, "GET_PROVISION_VALUE"

    return-object v0

    .line 4759
    :sswitch_39
    const-string v0, "SET_IMSCFG"

    return-object v0

    .line 4757
    :sswitch_3a
    const-string v0, "VIDEO_CALL_ACCEPT"

    return-object v0

    .line 4756
    :sswitch_3b
    const-string v0, "SET_VIWIFI_ENABLE"

    return-object v0

    .line 4755
    :sswitch_3c
    const-string v0, "SET_VILTE_ENABLE"

    return-object v0

    .line 4754
    :sswitch_3d
    const-string v0, "SET_WFC_ENABLE"

    return-object v0

    .line 4753
    :sswitch_3e
    const-string v0, "SET_VOLTE_ENABLE"

    return-object v0

    .line 4752
    :sswitch_3f
    const-string v0, "SET_IMS_ENABLE"

    return-object v0

    .line 4780
    :sswitch_40
    const-string v0, "SET_ECC_LIST"

    return-object v0

    .line 4746
    :sswitch_41
    const-string v0, "HANGUP_ALL"

    return-object v0

    .line 4798
    :sswitch_42
    const-string v0, "RIL_REQUEST_SET_CALL_INDICATION"

    return-object v0

    .line 4743
    :sswitch_43
    const-string v0, "GET_ACTIVITY_INFO"

    return-object v0

    .line 4749
    :sswitch_44
    const-string v0, "SHUTDOWN"

    return-object v0

    .line 4741
    :sswitch_45
    const-string v0, "EXIT_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 4742
    :sswitch_46
    const-string v0, "EXPLICIT_CALL_TRANSFER"

    return-object v0

    .line 4817
    :sswitch_47
    const-string v0, "QUERY_CLIP"

    return-object v0

    .line 4748
    :sswitch_48
    const-string v0, "SET_MUTE"

    return-object v0

    .line 4739
    :sswitch_49
    const-string v0, "DTMF_STOP"

    return-object v0

    .line 4738
    :sswitch_4a
    const-string v0, "DTMF_START"

    return-object v0

    .line 4816
    :sswitch_4b
    const-string v0, "CHANGE_BARRING_PASSWORD"

    return-object v0

    .line 4815
    :sswitch_4c
    const-string v0, "SET_FACILITY_LOCK"

    return-object v0

    .line 4814
    :sswitch_4d
    const-string v0, "QUERY_FACILITY_LOCK"

    return-object v0

    .line 4734
    :sswitch_4e
    const-string v0, "ANSWER"

    return-object v0

    .line 4813
    :sswitch_4f
    const-string v0, "SET_CALL_WAITING"

    return-object v0

    .line 4812
    :sswitch_50
    const-string v0, "QUERY_CALL_WAITING"

    return-object v0

    .line 4809
    :sswitch_51
    const-string v0, "SET_CALL_FORWARD"

    return-object v0

    .line 4808
    :sswitch_52
    const-string v0, "QUERY_CALL_FORWARD_STATUS"

    return-object v0

    .line 4811
    :sswitch_53
    const-string v0, "SET_CLIR"

    return-object v0

    .line 4810
    :sswitch_54
    const-string v0, "GET_CLIR"

    return-object v0

    .line 4737
    :sswitch_55
    const-string v0, "DTMF"

    return-object v0

    .line 4747
    :sswitch_56
    const-string v0, "LAST_CALL_FAIL_CAUSE"

    return-object v0

    .line 4735
    :sswitch_57
    const-string v0, "CONFERENCE"

    return-object v0

    .line 4751
    :sswitch_58
    const-string v0, "SWITCH_WAITING_OR_HOLDING_AND_ACTIVE"

    return-object v0

    .line 4744
    :sswitch_59
    const-string v0, "HANGUP"

    return-object v0

    .line 4736
    :sswitch_5a
    const-string v0, "DIAL"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_5a
        0xc -> :sswitch_59
        0xf -> :sswitch_58
        0x10 -> :sswitch_57
        0x12 -> :sswitch_56
        0x18 -> :sswitch_55
        0x1f -> :sswitch_54
        0x20 -> :sswitch_53
        0x21 -> :sswitch_52
        0x22 -> :sswitch_51
        0x23 -> :sswitch_50
        0x24 -> :sswitch_4f
        0x28 -> :sswitch_4e
        0x2a -> :sswitch_4d
        0x2b -> :sswitch_4c
        0x2c -> :sswitch_4b
        0x31 -> :sswitch_4a
        0x32 -> :sswitch_49
        0x35 -> :sswitch_48
        0x37 -> :sswitch_47
        0x48 -> :sswitch_46
        0x63 -> :sswitch_45
        0x81 -> :sswitch_44
        0x87 -> :sswitch_43
        0x7e0 -> :sswitch_42
        0x7e3 -> :sswitch_41
        0x7ee -> :sswitch_40
        0x815 -> :sswitch_3f
        0x816 -> :sswitch_3e
        0x817 -> :sswitch_3d
        0x818 -> :sswitch_3c
        0x819 -> :sswitch_3b
        0x81c -> :sswitch_3a
        0x81d -> :sswitch_39
        0x81e -> :sswitch_38
        0x81f -> :sswitch_37
        0x820 -> :sswitch_36
        0x822 -> :sswitch_35
        0x823 -> :sswitch_34
        0x824 -> :sswitch_33
        0x825 -> :sswitch_32
        0x827 -> :sswitch_31
        0x828 -> :sswitch_30
        0x829 -> :sswitch_2f
        0x82a -> :sswitch_2e
        0x82b -> :sswitch_2d
        0x82c -> :sswitch_2c
        0x82d -> :sswitch_2b
        0x82e -> :sswitch_2a
        0x82f -> :sswitch_29
        0x830 -> :sswitch_28
        0x831 -> :sswitch_27
        0x832 -> :sswitch_26
        0x833 -> :sswitch_25
        0x837 -> :sswitch_24
        0x838 -> :sswitch_23
        0x839 -> :sswitch_22
        0x84a -> :sswitch_21
        0x84b -> :sswitch_20
        0x84c -> :sswitch_1f
        0x84d -> :sswitch_1e
        0x84e -> :sswitch_1d
        0x84f -> :sswitch_1c
        0x850 -> :sswitch_1b
        0x855 -> :sswitch_1a
        0x857 -> :sswitch_19
        0x858 -> :sswitch_18
        0x859 -> :sswitch_17
        0x85a -> :sswitch_16
        0x85b -> :sswitch_15
        0x85d -> :sswitch_14
        0x873 -> :sswitch_13
        0x874 -> :sswitch_12
        0x876 -> :sswitch_11
        0x877 -> :sswitch_10
        0x87a -> :sswitch_f
        0x87c -> :sswitch_e
        0x87e -> :sswitch_d
        0x87f -> :sswitch_c
        0x880 -> :sswitch_b
        0x881 -> :sswitch_a
        0x882 -> :sswitch_9
        0x883 -> :sswitch_8
        0x884 -> :sswitch_7
        0x885 -> :sswitch_6
        0x886 -> :sswitch_5
        0x887 -> :sswitch_4
        0x888 -> :sswitch_3
        0x889 -> :sswitch_2
        0x88a -> :sswitch_1
        0x88b -> :sswitch_0
    .end sparse-switch
.end method

.method private resetMtkProxyAndRequestList()V
    .locals 2

    .line 5075
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    .line 5078
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 5080
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setRadioState(I)V

    .line 5082
    invoke-static {}, Lcom/mediatek/ims/ril/RILRequest;->resetSerial()V

    .line 5084
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->clearRequestList(IZ)V

    .line 5089
    return-void
.end method

.method private resetProxyAndRequestList()V
    .locals 2

    .line 706
    const-string v0, "resetProxyAndRequestList"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 707
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 710
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 712
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setRadioState(I)V

    .line 714
    invoke-static {}, Lcom/mediatek/ims/ril/RILRequest;->resetSerial()V

    .line 716
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->clearRequestList(IZ)V

    .line 721
    return-void
.end method

.method static responseToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "response"    # I

    .line 4647
    sparse-switch p0, :sswitch_data_0

    .line 4728
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

    .line 4684
    :sswitch_0
    const-string v0, "RIL_UNSOL_IMS_REG_FLAG_IND"

    return-object v0

    .line 4727
    :sswitch_1
    const-string v0, "RIL_UNSOL_VIDEO_RINGTONE_EVENT_IND"

    return-object v0

    .line 4709
    :sswitch_2
    const-string v0, "RIL_UNSOL_IMS_DIALOG_INDICATION"

    return-object v0

    .line 4723
    :sswitch_3
    const-string v0, "RIL_UNSOL_CALL_ADDITIONAL_INFO"

    return-object v0

    .line 4725
    :sswitch_4
    const-string v0, "RIL_UNSOL_SIP_HEADER"

    return-object v0

    .line 4721
    :sswitch_5
    const-string v0, "RIL_UNSOL_VOPS_INDICATION"

    return-object v0

    .line 4719
    :sswitch_6
    const-string v0, "RIL_UNSOL_AUDIO_INDICATION"

    return-object v0

    .line 4717
    :sswitch_7
    const-string v0, "RIL_UNSOL_RTT_MODIFY_REQUEST_RECEIVE"

    return-object v0

    .line 4715
    :sswitch_8
    const-string v0, "RIL_UNSOL_RTT_CAPABILITY_INDICATION"

    return-object v0

    .line 4713
    :sswitch_9
    const-string v0, "RIL_UNSOL_RTT_TEXT_RECEIVE"

    return-object v0

    .line 4711
    :sswitch_a
    const-string v0, "RIL_UNSOL_RTT_MODIFY_RESPONSE"

    return-object v0

    .line 4703
    :sswitch_b
    const-string v0, "RIL_UNSOL_NO_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 4701
    :sswitch_c
    const-string v0, "UNSOL_CDMA_NEW_SMS_EX"

    return-object v0

    .line 4699
    :sswitch_d
    const-string v0, "RIL_UNSOL_RESPONSE_NEW_SMS_EX"

    return-object v0

    .line 4697
    :sswitch_e
    const-string v0, "RIL_UNSOL_RESPONSE_NEW_SMS_STATUS_REPORT_EX"

    return-object v0

    .line 4687
    :sswitch_f
    const-string v0, "RIL_UNSOL_IMS_DATA_INFO_NOTIFY"

    return-object v0

    .line 4669
    :sswitch_10
    const-string v0, "ImsRILConstants.RIL_UNSOL_ON_VOLTE_SUBSCRIPTION"

    return-object v0

    .line 4695
    :sswitch_11
    const-string v0, "IMS_CONFIG_LOADED"

    return-object v0

    .line 4691
    :sswitch_12
    const-string v0, "IMS_CONFIG_CHANGED"

    return-object v0

    .line 4693
    :sswitch_13
    const-string v0, "IMS_FEATURE_CHANGED"

    return-object v0

    .line 4689
    :sswitch_14
    const-string v0, "DYNAMIC_IMS_SWITCH_COMPLETE"

    return-object v0

    .line 4707
    :sswitch_15
    const-string v0, "RIL_UNSOL_LTE_MESSAGE_WAITING_INDICATION"

    return-object v0

    .line 4705
    :sswitch_16
    const-string v0, "RIL_UNSOL_IMS_CONFERENCE_INFO_INDICATION"

    return-object v0

    .line 4681
    :sswitch_17
    const-string v0, "IMS_DEREG_DONE"

    return-object v0

    .line 4686
    :sswitch_18
    const-string v0, "RIL_UNSOL_IMS_BEARER_INIT"

    return-object v0

    .line 4685
    :sswitch_19
    const-string v0, "IMS_BEARER_STATE_NOTIFY"

    return-object v0

    .line 4683
    :sswitch_1a
    const-string v0, "VOLTE_SETTING"

    return-object v0

    .line 4682
    :sswitch_1b
    const-string v0, "ECT_INDICATION"

    return-object v0

    .line 4680
    :sswitch_1c
    const-string v0, "IMS_DISABLE_START"

    return-object v0

    .line 4679
    :sswitch_1d
    const-string v0, "IMS_ENABLE_START"

    return-object v0

    .line 4678
    :sswitch_1e
    const-string v0, "IMS_DISABLE_DONE"

    return-object v0

    .line 4677
    :sswitch_1f
    const-string v0, "IMS_ENABLE_DONE"

    return-object v0

    .line 4675
    :sswitch_20
    const-string v0, "IMS_REGISTRATION_INFO"

    return-object v0

    .line 4673
    :sswitch_21
    const-string v0, "IMS_EVENT_PACKAGE_INDICATION"

    return-object v0

    .line 4667
    :sswitch_22
    const-string v0, "ON_XUI"

    return-object v0

    .line 4666
    :sswitch_23
    const-string v0, "UNSOL_IMS_RTP_INFO"

    return-object v0

    .line 4665
    :sswitch_24
    const-string v0, "GET_PROVISION_DONE"

    return-object v0

    .line 4664
    :sswitch_25
    const-string v0, "ON_USSI"

    return-object v0

    .line 4663
    :sswitch_26
    const-string v0, "VIDEO_CAPABILITY_INDICATOR"

    return-object v0

    .line 4661
    :sswitch_27
    const-string v0, "CALLMOD_CHANGE_INDICATOR"

    return-object v0

    .line 4659
    :sswitch_28
    const-string v0, "SIP_CALL_PROGRESS_INDICATOR"

    return-object v0

    .line 4657
    :sswitch_29
    const-string v0, "ECONF_RESULT_INDICATION"

    return-object v0

    .line 4653
    :sswitch_2a
    const-string v0, "CALL_INFO_INDICATION"

    return-object v0

    .line 4676
    :sswitch_2b
    const-string v0, "SPEECH_CODEC_INFO"

    return-object v0

    .line 4656
    :sswitch_2c
    const-string v0, "CIPHER_INDICATION"

    return-object v0

    .line 4655
    :sswitch_2d
    const-string v0, "INCOMING_CALL_INDICATION"

    return-object v0

    .line 4652
    :sswitch_2e
    const-string v0, "RIL_UNSOL_EXIT_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 4650
    :sswitch_2f
    const-string v0, "RIL_UNSOL_ENTER_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 4671
    :sswitch_30
    const-string v0, "RIL_UNSOL_SUPP_SVC_NOTIFICATION"

    return-object v0

    .line 4648
    :sswitch_31
    const-string v0, "RADIO_STATE_CHANGED"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_31
        0x3f3 -> :sswitch_30
        0x400 -> :sswitch_2f
        0x409 -> :sswitch_2e
        0xbc7 -> :sswitch_2d
        0xbd0 -> :sswitch_2c
        0xbd3 -> :sswitch_2b
        0xbd7 -> :sswitch_2a
        0xbd8 -> :sswitch_29
        0xbd9 -> :sswitch_28
        0xbda -> :sswitch_27
        0xbdb -> :sswitch_26
        0xbdc -> :sswitch_25
        0xbdd -> :sswitch_24
        0xbde -> :sswitch_23
        0xbdf -> :sswitch_22
        0xbe0 -> :sswitch_21
        0xbe1 -> :sswitch_20
        0xbe2 -> :sswitch_1f
        0xbe3 -> :sswitch_1e
        0xbe4 -> :sswitch_1d
        0xbe5 -> :sswitch_1c
        0xbe6 -> :sswitch_1b
        0xbe7 -> :sswitch_1a
        0xbe9 -> :sswitch_19
        0xbeb -> :sswitch_18
        0xbec -> :sswitch_17
        0xc11 -> :sswitch_16
        0xc12 -> :sswitch_15
        0xc13 -> :sswitch_14
        0xc14 -> :sswitch_13
        0xc15 -> :sswitch_12
        0xc16 -> :sswitch_11
        0xc26 -> :sswitch_10
        0xc27 -> :sswitch_f
        0xc28 -> :sswitch_e
        0xc29 -> :sswitch_d
        0xc2c -> :sswitch_c
        0xc2d -> :sswitch_b
        0xc2e -> :sswitch_a
        0xc2f -> :sswitch_9
        0xc30 -> :sswitch_8
        0xc31 -> :sswitch_7
        0xc32 -> :sswitch_6
        0xc33 -> :sswitch_5
        0xc34 -> :sswitch_4
        0xc36 -> :sswitch_3
        0xc39 -> :sswitch_2
        0xc3a -> :sswitch_1
        0xc3b -> :sswitch_0
    .end sparse-switch
.end method

.method static retToString(ILjava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p0, "req"    # I
    .param p1, "ret"    # Ljava/lang/Object;

    .line 4865
    if-nez p1, :cond_0

    const-string v0, ""

    return-object v0

    .line 4870
    :cond_0
    instance-of v0, p1, [I

    const-string v1, ", "

    const-string v2, "}"

    const-string v3, "{"

    if-eqz v0, :cond_2

    .line 4871
    move-object v0, p1

    check-cast v0, [I

    .line 4872
    .local v0, "intArray":[I
    array-length v4, v0

    .line 4873
    .local v4, "length":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 4874
    .local v3, "sb":Ljava/lang/StringBuilder;
    if-lez v4, :cond_1

    .line 4875
    const/4 v5, 0x0

    .line 4876
    .local v5, "i":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    aget v5, v0, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4877
    :goto_0
    if-ge v6, v4, :cond_1

    .line 4878
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    aget v6, v0, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v6, v5

    goto :goto_0

    .line 4881
    .end local v5    # "i":I
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4882
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4883
    .local v0, "s":Ljava/lang/String;
    goto :goto_2

    .end local v0    # "s":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "length":I
    :cond_2
    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 4884
    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    .line 4885
    .local v0, "strings":[Ljava/lang/String;
    array-length v4, v0

    .line 4886
    .restart local v4    # "length":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 4887
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    if-lez v4, :cond_3

    .line 4888
    const/4 v5, 0x0

    .line 4889
    .restart local v5    # "i":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    aget-object v5, v0, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4890
    :goto_1
    if-ge v6, v4, :cond_3

    .line 4891
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    aget-object v6, v0, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v5

    goto :goto_1

    .line 4894
    .end local v5    # "i":I
    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4895
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4896
    .local v0, "s":Ljava/lang/String;
    goto :goto_2

    .line 4897
    .end local v0    # "s":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "length":I
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4899
    .restart local v0    # "s":Ljava/lang/String;
    :goto_2
    return-object v0
.end method

.method private sendAck()V
    .locals 5

    .line 4005
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x320

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/mediatek/ims/ril/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 4007
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->acquireWakeLock(Lcom/mediatek/ims/ril/RILRequest;I)V

    .line 4008
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 4009
    .local v1, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v1, :cond_0

    .line 4011
    :try_start_0
    invoke-interface {v1}, Landroid/hardware/radio/V1_0/IRadio;->responseAcknowledgement()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4015
    :goto_0
    goto :goto_1

    .line 4012
    :catch_0
    move-exception v2

    .line 4013
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "sendAck"

    invoke-direct {p0, v0, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4014
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

    .line 4017
    :cond_0
    const-string v2, "IMS_RILA"

    const-string v3, "Error trying to send ack, radioProxy = null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4019
    :goto_1
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RILRequest;->release()V

    .line 4020
    return-void
.end method

.method private sendDtmfQueueRR(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V
    .locals 11
    .param p1, "dqrr"    # Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    .line 3736
    iget-object v0, p1, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->rr:Lcom/mediatek/ims/ril/RILRequest;

    .line 3737
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    iget-object v1, v0, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 3738
    .local v1, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    const-string v2, "] request: "

    const-string v3, "get RadioProxy null. (["

    const-string v4, ")"

    if-nez v1, :cond_0

    .line 3739
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3740
    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3739
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 3741
    return-void

    .line 3744
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

    .line 3747
    const/4 v5, 0x0

    .line 3748
    .local v5, "params":[Ljava/lang/Object;
    :try_start_0
    iget v6, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, " params error. ("

    const-string v8, "request "

    const/4 v9, 0x0

    const/4 v10, 0x1

    sparse-switch v6, :sswitch_data_0

    .line 3782
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3766
    :sswitch_0
    iget v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v1, v2}, Landroid/hardware/radio/V1_0/IRadio;->explicitCallTransfer(I)V

    .line 3767
    goto/16 :goto_1

    .line 3756
    :sswitch_1
    iget-object v2, p1, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->params:[Ljava/lang/Object;

    .line 3757
    .end local v5    # "params":[Ljava/lang/Object;
    .local v2, "params":[Ljava/lang/Object;
    array-length v3, v2

    if-eq v3, v10, :cond_1

    .line 3758
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3759
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3758
    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3761
    :cond_1
    aget-object v3, v2, v9

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3762
    .local v3, "gsmIndex":I
    iget v5, v0, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v1, v5, v3}, Landroid/hardware/radio/V1_0/IRadio;->separateConnection(II)V

    .line 3764
    .end local v3    # "gsmIndex":I
    goto/16 :goto_1

    .line 3779
    .end local v2    # "params":[Ljava/lang/Object;
    .restart local v5    # "params":[Ljava/lang/Object;
    :sswitch_2
    iget v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v1, v2}, Landroid/hardware/radio/V1_0/IRadio;->stopDtmf(I)V

    .line 3780
    goto/16 :goto_1

    .line 3769
    :sswitch_3
    iget-object v2, p1, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->params:[Ljava/lang/Object;

    .line 3770
    .end local v5    # "params":[Ljava/lang/Object;
    .restart local v2    # "params":[Ljava/lang/Object;
    array-length v3, v2

    if-eq v3, v10, :cond_2

    .line 3771
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3772
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3771
    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    goto :goto_1

    .line 3774
    :cond_2
    aget-object v3, v2, v9

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    .line 3775
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

    .line 3777
    .end local v3    # "c":C
    goto :goto_1

    .line 3753
    .end local v2    # "params":[Ljava/lang/Object;
    .restart local v5    # "params":[Ljava/lang/Object;
    :sswitch_4
    iget v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v1, v2}, Landroid/hardware/radio/V1_0/IRadio;->conference(I)V

    .line 3754
    goto :goto_1

    .line 3750
    :sswitch_5
    iget v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v1, v2}, Landroid/hardware/radio/V1_0/IRadio;->switchWaitingOrHoldingAndActive(I)V

    .line 3751
    goto :goto_1

    .line 3782
    :goto_0
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3783
    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3782
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3788
    .end local v5    # "params":[Ljava/lang/Object;
    :goto_1
    goto :goto_2

    .line 3785
    :catch_0
    move-exception v2

    .line 3786
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DtmfQueueRR("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3787
    invoke-static {v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3786
    invoke-direct {p0, v0, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3789
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_5
        0x10 -> :sswitch_4
        0x31 -> :sswitch_3
        0x32 -> :sswitch_2
        0x34 -> :sswitch_1
        0x48 -> :sswitch_0
    .end sparse-switch
.end method

.method private sendMtkAck()V
    .locals 5

    .line 4027
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x320

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/mediatek/ims/ril/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 4029
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->acquireWakeLock(Lcom/mediatek/ims/ril/RILRequest;I)V

    .line 4030
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v1

    .line 4031
    .local v1, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v1, :cond_1

    .line 4033
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4034
    move-object v2, v1

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 4035
    invoke-interface {v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->responseAcknowledgementMtk()V

    goto :goto_0

    .line 4037
    :cond_0
    move-object v2, v1

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 4038
    invoke-interface {v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->responseAcknowledgementMtk()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4040
    :catch_0
    move-exception v2

    .line 4041
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "sendMtkAck"

    invoke-direct {p0, v0, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4042
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendMtkAck: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 4043
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 4045
    :cond_1
    const-string v2, "IMS_RILA"

    const-string v3, "Error trying to send MTK ack, radioProxy = null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4047
    :goto_1
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RILRequest;->release()V

    .line 4048
    return-void
.end method


# virtual methods
.method public accept()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4948
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->accept(Landroid/os/Message;)V

    .line 4949
    return-void
.end method

.method public accept(Landroid/os/Message;)V
    .locals 5
    .param p1, "response"    # Landroid/os/Message;

    .line 997
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 998
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 999
    const/16 v1, 0x28

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1002
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

    .line 1005
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->acceptCall(I)V

    .line 1006
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilAnswer(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1009
    goto :goto_0

    .line 1007
    :catch_0
    move-exception v2

    .line 1008
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "acceptCall"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1011
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

    .line 5065
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->acceptVideoCall(IILandroid/os/Message;)V

    .line 5066
    return-void
.end method

.method public acceptVideoCall(IILandroid/os/Message;)V
    .locals 4
    .param p1, "videoMode"    # I
    .param p2, "callId"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 1024
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 1025
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 1026
    const/16 v1, 0x81c

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

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

    const-string v3, " videoMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1030
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1035
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1036
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 1037
    invoke-interface {v2, v3, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->videoCallAccept(III)V

    goto :goto_0

    .line 1039
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 1040
    invoke-interface {v2, v3, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->videoCallAccept(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1044
    :goto_0
    goto :goto_1

    .line 1042
    :catch_0
    move-exception v2

    .line 1043
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "acceptCall"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1046
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public acknowledgeLastIncomingCdmaSmsEx(ZILandroid/os/Message;)V
    .locals 5
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 4191
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 4192
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 4193
    const/16 v1, 0x87c

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 4197
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

    .line 4201
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 4202
    .local v2, "msg":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    xor-int/lit8 v3, p1, 0x1

    iput v3, v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;->errorClass:I

    .line 4203
    iput p2, v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;->smsCauseCode:I

    .line 4206
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4207
    move-object v3, v0

    check-cast v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 4208
    invoke-interface {v3, v4, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->acknowledgeLastIncomingCdmaSmsEx(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    goto :goto_0

    .line 4210
    :cond_0
    move-object v3, v0

    check-cast v3, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 4211
    invoke-interface {v3, v4, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->acknowledgeLastIncomingCdmaSmsEx(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4215
    :goto_0
    goto :goto_1

    .line 4213
    :catch_0
    move-exception v3

    .line 4214
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "acknowledgeLastIncomingCdmaSms"

    invoke-direct {p0, v1, v4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4217
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "msg":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 4165
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 4166
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 4167
    const/16 v1, 0x87a

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 4171
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

    .line 4176
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4177
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 4178
    invoke-interface {v2, v3, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->acknowledgeLastIncomingGsmSmsEx(IZI)V

    goto :goto_0

    .line 4180
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 4181
    invoke-interface {v2, v3, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->acknowledgeLastIncomingGsmSmsEx(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4185
    :goto_0
    goto :goto_1

    .line 4183
    :catch_0
    move-exception v2

    .line 4184
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "acknowledgeLastIncomingGsmSms"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4187
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public approveEccRedial(IILandroid/os/Message;)V
    .locals 4
    .param p1, "approve"    # I
    .param p2, "callId"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 1058
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 1059
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 1060
    const/16 v1, 0x889

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1063
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1064
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

    .line 1063
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1068
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1069
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 1070
    invoke-interface {v2, v3, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->eccRedialApprove(III)V

    goto :goto_0

    .line 1072
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 1073
    invoke-interface {v2, v3, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->eccRedialApprove(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1077
    :goto_0
    goto :goto_1

    .line 1075
    :catch_0
    move-exception v2

    .line 1076
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "approveEccRedial"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1079
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public cancelPendingUssi(Landroid/os/Message;)V
    .locals 4
    .param p1, "response"    # Landroid/os/Message;

    .line 2622
    const-string v0, "persist.vendor.ims.ussi.ap"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2624
    const-string v0, "Wrap cancelPendingUssi"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2627
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2628
    return-void

    .line 2631
    :cond_0
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 2632
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_2

    .line 2633
    const/16 v1, 0x82e

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2637
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2638
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2637
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2642
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2643
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2644
    invoke-interface {v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->cancelUssi(I)V

    goto :goto_0

    .line 2646
    :cond_1
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2647
    invoke-interface {v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->cancelUssi(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2651
    :goto_0
    goto :goto_1

    .line 2649
    :catch_0
    move-exception v2

    .line 2650
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "cancelUssi"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2653
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void
.end method

.method public clearRequestList(IZ)V
    .locals 7
    .param p1, "error"    # I
    .param p2, "loggable"    # Z

    .line 4454
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4455
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 4456
    .local v1, "count":I
    if-eqz p2, :cond_0

    .line 4457
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

    .line 4461
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 4462
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/ril/RILRequest;

    .line 4463
    .local v3, "rr":Lcom/mediatek/ims/ril/RILRequest;
    if-eqz p2, :cond_1

    .line 4464
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

    .line 4465
    invoke-static {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4464
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4467
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/mediatek/ims/ril/RILRequest;->onError(ILjava/lang/Object;)V

    .line 4468
    invoke-direct {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->decrementWakeLock(Lcom/mediatek/ims/ril/RILRequest;)V

    .line 4469
    invoke-virtual {v3}, Lcom/mediatek/ims/ril/RILRequest;->release()V

    .line 4461
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4471
    .end local v2    # "i":I
    .end local v3    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 4472
    .end local v1    # "count":I
    monitor-exit v0

    .line 4473
    return-void

    .line 4472
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public conference(Landroid/os/Message;)V
    .locals 4
    .param p1, "response"    # Landroid/os/Message;

    .line 1241
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 1242
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 1243
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1246
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

    .line 1249
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleChldRelatedRequest(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)V

    .line 1251
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    return-void
.end method

.method public conferenceDial([Ljava/lang/String;IZLandroid/os/Message;)V
    .locals 9
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "isVideoCall"    # Z
    .param p4, "result"    # Landroid/os/Message;

    .line 2448
    if-nez p1, :cond_0

    .line 2449
    const-string v0, "Participants MUST NOT be null in conferenceDial"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 2450
    return-void

    .line 2453
    :cond_0
    invoke-direct {p0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 2454
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_4

    .line 2455
    const/16 v1, 0x829

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2459
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2460
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

    .line 2459
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2465
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "conferenceDial: dialNumber "

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 2466
    :try_start_1
    new-instance v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/ConferenceDial;

    invoke-direct {v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/ConferenceDial;-><init>()V

    .line 2468
    .local v2, "dialInfo":Lvendor/mediatek/hardware/mtkradioex/V3_0/ConferenceDial;
    iput p2, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/ConferenceDial;->clir:I

    .line 2469
    iput-boolean p3, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/ConferenceDial;->isVideoCall:Z

    .line 2470
    array-length v5, p1

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, p1, v4

    .line 2471
    .local v6, "dialNumber":Ljava/lang/String;
    iget-object v7, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/ConferenceDial;->dialNumbers:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2473
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2474
    invoke-static {v6}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2473
    invoke-virtual {p0, v7}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2470
    .end local v6    # "dialNumber":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2478
    :cond_1
    move-object v3, v0

    check-cast v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2479
    invoke-interface {v3, v4, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->conferenceDial(ILvendor/mediatek/hardware/mtkradioex/V3_0/ConferenceDial;)V

    .line 2480
    .end local v2    # "dialInfo":Lvendor/mediatek/hardware/mtkradioex/V3_0/ConferenceDial;
    goto :goto_2

    .line 2481
    :cond_2
    new-instance v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;

    invoke-direct {v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;-><init>()V

    .line 2483
    .local v2, "dialInfo":Lvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;
    iput p2, v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;->clir:I

    .line 2484
    iput-boolean p3, v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;->isVideoCall:Z

    .line 2485
    array-length v5, p1

    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v6, p1, v4

    .line 2486
    .restart local v6    # "dialNumber":Ljava/lang/String;
    iget-object v7, v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;->dialNumbers:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2488
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2489
    invoke-static {v6}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2488
    invoke-virtual {p0, v7}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2485
    .end local v6    # "dialNumber":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2493
    :cond_3
    move-object v3, v0

    check-cast v3, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2494
    invoke-interface {v3, v4, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->conferenceDial(ILvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2499
    .end local v2    # "dialInfo":Lvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;
    :goto_2
    goto :goto_3

    .line 2496
    :catch_0
    move-exception v2

    .line 2497
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "IMS_RILA"

    const-string v4, "conferenceDial failed"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2498
    const-string v3, "conferenceDial"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2501
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_3
    return-void
.end method

.method protected constructCdmaSendSmsRilRequest(Landroid/hardware/radio/V1_0/CdmaSmsMessage;[B)V
    .locals 8
    .param p1, "msg"    # Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    .param p2, "pdu"    # [B

    .line 4078
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 4079
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4082
    .local v1, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->teleserviceId:I

    .line 4083
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

    .line 4084
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->serviceCategory:I

    .line 4085
    iget-object v2, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v5

    iput v5, v2, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->digitMode:I

    .line 4086
    iget-object v2, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v5

    iput v5, v2, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->numberMode:I

    .line 4087
    iget-object v2, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v5

    iput v5, v2, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->numberType:I

    .line 4088
    iget-object v2, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v5

    iput v5, v2, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->numberPlan:I

    .line 4089
    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v2

    int-to-byte v2, v2

    .line 4090
    .local v2, "addrNbrOfDigits":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v2, :cond_1

    .line 4091
    iget-object v6, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->digits:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4090
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4093
    .end local v5    # "i":I
    :cond_1
    iget-object v5, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v6

    iput v6, v5, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->subaddressType:I

    .line 4094
    iget-object v5, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v6

    int-to-byte v6, v6

    if-ne v6, v4, :cond_2

    move v3, v4

    :cond_2
    iput-boolean v3, v5, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->odd:Z

    .line 4095
    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v3

    int-to-byte v3, v3

    .line 4096
    .local v3, "subaddrNbrOfDigits":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v3, :cond_3

    .line 4097
    iget-object v5, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    iget-object v5, v5, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->digits:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4096
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 4100
    .end local v4    # "i":I
    :cond_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v4

    .line 4101
    .local v4, "bearerDataLength":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3
    if-ge v5, v4, :cond_4

    .line 4102
    iget-object v6, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->bearerData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4101
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 4109
    .end local v5    # "i":I
    :cond_4
    goto :goto_4

    .line 4104
    .end local v2    # "addrNbrOfDigits":I
    .end local v3    # "subaddrNbrOfDigits":I
    .end local v4    # "bearerDataLength":I
    :catch_0
    move-exception v2

    .line 4106
    .local v2, "ex":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendSmsCdma: conversion from input stream to object failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4110
    .end local v2    # "ex":Ljava/io/IOException;
    :goto_4
    return-void
.end method

.method protected convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 910
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

    .line 1398
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->deregisterImsWithCause(ILandroid/os/Message;)V

    .line 1399
    return-void
.end method

.method public deregisterImsWithCause(ILandroid/os/Message;)V
    .locals 4
    .param p1, "cause"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1410
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 1411
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 1412
    const/16 v1, 0x822

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1416
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1417
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1416
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1421
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1422
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 1423
    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->imsDeregNotification(II)V

    goto :goto_0

    .line 1425
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 1426
    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->imsDeregNotification(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1430
    :goto_0
    goto :goto_1

    .line 1428
    :catch_0
    move-exception v2

    .line 1429
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "imsDeregNotification"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1432
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 2330
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    .line 2331
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 7
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "response"    # Landroid/os/Message;

    .line 2345
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "> "

    if-nez v0, :cond_2

    .line 2346
    invoke-direct {p0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2347
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_1

    .line 2348
    const/16 v2, 0x832

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v2, p4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v2

    .line 2350
    .local v2, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v3, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 2351
    .local v3, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/hardware/radio/V1_0/Dial;->address:Ljava/lang/String;

    .line 2352
    iput p2, v3, Landroid/hardware/radio/V1_0/Dial;->clir:I

    .line 2353
    if-eqz p3, :cond_0

    .line 2354
    new-instance v4, Landroid/hardware/radio/V1_0/UusInfo;

    invoke-direct {v4}, Landroid/hardware/radio/V1_0/UusInfo;-><init>()V

    .line 2355
    .local v4, "info":Landroid/hardware/radio/V1_0/UusInfo;
    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v5

    iput v5, v4, Landroid/hardware/radio/V1_0/UusInfo;->uusType:I

    .line 2356
    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v5

    iput v5, v4, Landroid/hardware/radio/V1_0/UusInfo;->uusDcs:I

    .line 2357
    new-instance v5, Ljava/lang/String;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v4, Landroid/hardware/radio/V1_0/UusInfo;->uusData:Ljava/lang/String;

    .line 2358
    iget-object v5, v3, Landroid/hardware/radio/V1_0/Dial;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2362
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

    .line 2365
    :try_start_0
    iget v1, v2, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v1, v3}, Landroid/hardware/radio/V1_0/IRadio;->dial(ILandroid/hardware/radio/V1_0/Dial;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2368
    goto :goto_0

    .line 2366
    :catch_0
    move-exception v1

    .line 2367
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "dial"

    invoke-direct {p0, v2, v4, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2370
    .end local v0    # "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v3    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :cond_1
    :goto_0
    goto :goto_2

    .line 2372
    :cond_2
    invoke-direct {p0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 2373
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_4

    .line 2374
    const/16 v2, 0x826

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v2, p4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v2

    .line 2379
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

    .line 2382
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2383
    move-object v1, v0

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v2, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2384
    invoke-interface {v1, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->dialWithSipUri(ILjava/lang/String;)V

    goto :goto_1

    .line 2386
    :cond_3
    move-object v1, v0

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v2, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2387
    invoke-interface {v1, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->dialWithSipUri(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2391
    :goto_1
    goto :goto_2

    .line 2389
    :catch_1
    move-exception v1

    .line 2390
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, "dialWithSipUri"

    invoke-direct {p0, v2, v3, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2394
    .end local v0    # "radioProxy":Landroid/hidl/base/V1_0/IBase;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_4
    :goto_2
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 4
    .param p1, "response"    # Landroid/os/Message;

    .line 1147
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 1148
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 1149
    const/16 v1, 0x48

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1153
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

    .line 1156
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleChldRelatedRequest(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)V

    .line 1158
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    return-void
.end method

.method public forceHangup(I)V
    .locals 1
    .param p1, "callId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5053
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->forceHangup(ILandroid/os/Message;)V

    .line 5054
    return-void
.end method

.method public forceHangup(II)V
    .locals 2
    .param p1, "callId"    # I
    .param p2, "reason"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5058
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceHangup with reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 5059
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->forceHangup(ILandroid/os/Message;)V

    .line 5060
    return-void
.end method

.method public forceHangup(ILandroid/os/Message;)V
    .locals 4
    .param p1, "callId"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 3331
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 3332
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 3333
    const/16 v1, 0x7f2

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3336
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

    .line 3341
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3342
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 3343
    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->forceReleaseCall(II)V

    goto :goto_0

    .line 3345
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 3346
    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->forceReleaseCall(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3350
    :goto_0
    goto :goto_1

    .line 3348
    :catch_0
    move-exception v2

    .line 3349
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "forceHangup"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3352
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2835
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2836
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2837
    const/16 v1, 0x1f

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2839
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

    .line 2841
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->getClir(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2844
    goto :goto_0

    .line 2842
    :catch_0
    move-exception v2

    .line 2843
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getCLIR"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2846
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getCOLP(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2981
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 2982
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 2983
    const/16 v1, 0x838

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2987
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

    .line 2991
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2992
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2993
    invoke-interface {v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->getColp(I)V

    goto :goto_0

    .line 2995
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2996
    invoke-interface {v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getColp(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3000
    :goto_0
    goto :goto_1

    .line 2998
    :catch_0
    move-exception v2

    .line 2999
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getCOLP"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3002
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public getCOLR(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2922
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 2923
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 2924
    const/16 v1, 0x839

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2928
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

    .line 2932
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2933
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2934
    invoke-interface {v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->getColr(I)V

    goto :goto_0

    .line 2936
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2937
    invoke-interface {v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getColr(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2941
    :goto_0
    goto :goto_1

    .line 2939
    :catch_0
    move-exception v2

    .line 2940
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getCOLR"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2943
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public getImsCfgFeatureValue(IILandroid/os/Message;)V
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "network"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 2048
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 2049
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 2050
    const/16 v1, 0x859

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2054
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2055
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2056
    invoke-interface {v2, v3, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->getImsCfgFeatureValue(III)V

    goto :goto_0

    .line 2058
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2059
    invoke-interface {v2, v3, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getImsCfgFeatureValue(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2063
    :goto_0
    goto :goto_1

    .line 2061
    :catch_0
    move-exception v2

    .line 2062
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getImsCfgFeatureValue"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2065
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public getImsCfgProvisionValue(ILandroid/os/Message;)V
    .locals 4
    .param p1, "configId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2101
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 2102
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 2103
    const/16 v1, 0x85b

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2107
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2108
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2109
    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->getImsCfgProvisionValue(II)V

    goto :goto_0

    .line 2111
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2112
    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getImsCfgProvisionValue(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2116
    :goto_0
    goto :goto_1

    .line 2114
    :catch_0
    move-exception v2

    .line 2115
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getImsCfgProvisionValue"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2118
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public getImsCfgResourceCapValue(ILandroid/os/Message;)V
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2127
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 2128
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 2129
    const/16 v1, 0x85d    # 3.0E-42f

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2133
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2134
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2135
    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->getImsCfgResourceCapValue(II)V

    goto :goto_0

    .line 2137
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2138
    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getImsCfgResourceCapValue(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2142
    :goto_0
    goto :goto_1

    .line 2140
    :catch_0
    move-exception v2

    .line 2141
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getImsCfgResourceCapValue"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2144
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public getLastCallFailCause(ILandroid/os/Message;)V
    .locals 0
    .param p1, "phoneid"    # I
    .param p2, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4993
    invoke-virtual {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getLastCallFailCause(Landroid/os/Message;)V

    .line 4994
    return-void
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2218
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2219
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2220
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2224
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2225
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2224
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2229
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->getLastCallFailCause(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2232
    goto :goto_0

    .line 2230
    :catch_0
    move-exception v2

    .line 2231
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getLastCallFailCause"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2234
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getOpCommandsInterface()Lcom/mediatek/ims/ril/OpImsCommandsInterface;
    .locals 1

    .line 920
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

    .line 4955
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getProvisionValue(Ljava/lang/String;Landroid/os/Message;)V

    .line 4956
    return-void
.end method

.method public getProvisionValue(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "provisionStr"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 1951
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 1952
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 1953
    const/16 v1, 0x81e

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1957
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1958
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " provisionStr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1957
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1962
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1963
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 1964
    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->getProvisionValue(ILjava/lang/String;)V

    goto :goto_0

    .line 1966
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 1967
    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getProvisionValue(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1971
    :goto_0
    goto :goto_1

    .line 1969
    :catch_0
    move-exception v2

    .line 1970
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getProvisionValue"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1973
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public getXcapStatus(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 3210
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 3211
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 3212
    const/16 v1, 0x873

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3216
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3217
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3216
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3221
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3222
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 3223
    invoke-interface {v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->getXcapStatus(I)V

    goto :goto_0

    .line 3225
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 3226
    invoke-interface {v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getXcapStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3230
    :goto_0
    goto :goto_1

    .line 3228
    :catch_0
    move-exception v2

    .line 3229
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getXcapStatus"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3232
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method handleDtmfQueueNext(I)V
    .locals 6
    .param p1, "serial"    # I

    .line 3797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDtmfQueueNext (serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3799
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    monitor-enter v0

    .line 3800
    const/4 v1, 0x0

    .line 3801
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

    .line 3802
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 3803
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->access$900(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    .line 3804
    .local v3, "adqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->rr:Lcom/mediatek/ims/ril/RILRequest;

    iget v4, v4, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    if-ne v4, p1, :cond_0

    .line 3805
    move-object v1, v3

    .line 3806
    goto :goto_1

    .line 3801
    .end local v3    # "adqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3809
    .end local v2    # "i":I
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 3810
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot find serial "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " from mDtmfQueue. (size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 3811
    invoke-virtual {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3810
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    goto :goto_2

    .line 3813
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->remove(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 3815
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

    .line 3819
    :goto_2
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 3820
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->get()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v2

    .line 3821
    .local v2, "dqrr2":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v3, v2, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->rr:Lcom/mediatek/ims/ril/RILRequest;

    .line 3823
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

    .line 3825
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendDtmfQueueRR(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 3826
    .end local v2    # "dqrr2":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    .end local v3    # "rr2":Lcom/mediatek/ims/ril/RILRequest;
    goto :goto_3

    .line 3827
    :cond_3
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->getPendingRequest()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 3828
    const-string v2, "send pending switch request"

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3829
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->getPendingRequest()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v2

    .line 3830
    .local v2, "pendingReq":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendDtmfQueueRR(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 3831
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->setSendChldRequest()V

    .line 3832
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->setPendingRequest(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 3835
    .end local v1    # "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    .end local v2    # "pendingReq":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    :cond_4
    :goto_3
    monitor-exit v0

    .line 3836
    return-void

    .line 3835
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

    .line 1114
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 1115
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 1117
    const/16 v1, 0x883

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1121
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1122
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

    .line 1121
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1127
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1128
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 1129
    invoke-interface {v2, v3, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->hangupWithReason(III)V

    goto :goto_0

    .line 1131
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 1132
    invoke-interface {v2, v3, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->hangupWithReason(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1136
    :goto_0
    goto :goto_1

    .line 1134
    :catch_0
    move-exception v2

    .line 1135
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "hangupWithReason"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1138
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public hangup(ILandroid/os/Message;)V
    .locals 4
    .param p1, "callId"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1089
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 1090
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 1091
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1095
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1096
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1095
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1099
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Landroid/hardware/radio/V1_0/IRadio;->hangup(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1102
    goto :goto_0

    .line 1100
    :catch_0
    move-exception v2

    .line 1101
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "hangup"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1104
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public hangupAllCall(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2242
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 2243
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 2244
    const/16 v1, 0x7e3

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2248
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2249
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2248
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2253
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2254
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2255
    invoke-interface {v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->hangupAll(I)V

    goto :goto_0

    .line 2257
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2258
    invoke-interface {v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->hangupAll(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2262
    :goto_0
    goto :goto_1

    .line 2260
    :catch_0
    move-exception v2

    .line 2261
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "hangupAll"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2264
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public hold(ILandroid/os/Message;)V
    .locals 5
    .param p1, "callId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1177
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 1178
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 1179
    const/16 v1, 0x824

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1183
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1184
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1183
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1188
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1189
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 1190
    invoke-interface {v2, v4, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->controlCall(III)V

    goto :goto_0

    .line 1192
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 1193
    invoke-interface {v2, v4, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->controlCall(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1197
    :goto_0
    goto :goto_1

    .line 1195
    :catch_0
    move-exception v2

    .line 1196
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "holdCall"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1199
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public inviteParticipants(ILjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "confCallId"    # I
    .param p2, "participant"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 2156
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 2157
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->getInstance(I)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mediatek/ims/ImsServiceCallTracker;->getParticipantCallId(Ljava/lang/String;)I

    move-result v0

    .line 2160
    .local v0, "participantCallId":I
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->internalAddConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V

    .line 2162
    return-void
.end method

.method public inviteParticipantsByCallId(ILcom/mediatek/ims/ImsCallInfo;Landroid/os/Message;)V
    .locals 6
    .param p1, "confCallId"    # I
    .param p2, "callInfo"    # Lcom/mediatek/ims/ImsCallInfo;
    .param p3, "response"    # Landroid/os/Message;

    .line 2192
    const-string v0, "IMS_RILA"

    if-nez p2, :cond_0

    .line 2193
    const-string v1, "Invite participants failed, call info is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    return-void

    .line 2196
    :cond_0
    iget-object v1, p2, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    .line 2198
    .local v1, "callId":Ljava/lang/String;
    const/4 v2, -0x1

    .line 2200
    .local v2, "id":I
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2205
    .end local v2    # "id":I
    .local v0, "id":I
    nop

    .line 2207
    iget-object v2, p2, Lcom/mediatek/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->internalAddConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V

    .line 2208
    return-void

    .line 2201
    .end local v0    # "id":I
    .restart local v2    # "id":I
    :catch_0
    move-exception v3

    .line 2202
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invite participants failed: id is not integer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2204
    return-void
.end method

.method public merge(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5047
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->conference(Landroid/os/Message;)V

    .line 5048
    return-void
.end method

.method public notifyImsServiceReady()V
    .locals 6

    .line 5232
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 5233
    .local v1, "proxy":Landroid/hardware/radio/V1_0/IRadio;
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 5234
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 5236
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5237
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 5238
    invoke-interface {v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->notifyImsServiceReady()V

    goto :goto_0

    .line 5240
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 5241
    invoke-interface {v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->notifyImsServiceReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5243
    :catch_0
    move-exception v2

    .line 5244
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyImsServiceReady error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 5245
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 5248
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notify fail, send EVENT_TRIGGER_TO_FIRE_PENDING_URC "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 5249
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->removeMessages(I)V

    .line 5250
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    .line 5251
    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    .line 5250
    invoke-virtual {v2, v3, v4, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5254
    :goto_1
    return-void
.end method

.method processIndication(I)V
    .locals 1
    .param p1, "indicationType"    # I

    .line 3846
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 3847
    invoke-direct {p0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendAck()V

    .line 3852
    :cond_0
    return-void
.end method

.method processMtkIndication(I)V
    .locals 1
    .param p1, "indicationType"    # I

    .line 3860
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 3861
    invoke-direct {p0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendMtkAck()V

    .line 3866
    :cond_0
    return-void
.end method

.method processRequestAck(I)V
    .locals 4
    .param p1, "serial"    # I

    .line 3870
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 3871
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/ril/RILRequest;

    .line 3872
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3873
    if-nez v1, :cond_0

    .line 3874
    const-string v0, "IMS_RILA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processRequestAck: Unexpected solicited ack response! serial: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3878
    :cond_0
    invoke-direct {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->decrementWakeLock(Lcom/mediatek/ims/ril/RILRequest;)V

    .line 3880
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

    .line 3883
    :goto_0
    return-void

    .line 3872
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

    .line 3893
    iget v0, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->serial:I

    .line 3894
    .local v0, "serial":I
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    .line 3895
    .local v1, "error":I
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->type:I

    .line 3897
    .local v2, "type":I
    const/4 v3, 0x0

    .line 3899
    .local v3, "rr":Lcom/mediatek/ims/ril/RILRequest;
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 3900
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v4

    .line 3901
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/ims/ril/RILRequest;

    move-object v3, v5

    .line 3902
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3903
    if-nez v3, :cond_0

    .line 3904
    const-string v4, "IMS_RILA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected solicited ack response! sn: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3906
    :cond_0
    invoke-direct {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->decrementWakeLock(Lcom/mediatek/ims/ril/RILRequest;)V

    .line 3908
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

    .line 3911
    :goto_0
    return-object v3

    .line 3902
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 3914
    :cond_1
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->findAndRemoveRequestFromList(I)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v3

    .line 3915
    if-nez v3, :cond_2

    .line 3916
    const-string v4, "IMS_RILA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processResponse: Unexpected response! serial: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3918
    const/4 v4, 0x0

    return-object v4

    .line 3922
    :cond_2
    invoke-direct {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->addToRilHistogram(Lcom/mediatek/ims/ril/RILRequest;)V

    .line 3924
    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    .line 3925
    if-eqz p2, :cond_3

    .line 3926
    invoke-direct {p0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendMtkAck()V

    goto :goto_1

    .line 3928
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendAck()V

    .line 3931
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

    .line 3932
    invoke-static {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Sending ack to ril.cpp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3931
    invoke-virtual {p0, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3941
    :cond_4
    iget v5, v3, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    packed-switch v5, :pswitch_data_0

    goto :goto_2

    .line 3943
    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setRadioState(I)V

    .line 3947
    :goto_2
    nop

    .line 3952
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_0
    .end packed-switch
.end method

.method processResponseDone(Lcom/mediatek/ims/ril/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V
    .locals 7
    .param p1, "rr"    # Lcom/mediatek/ims/ril/RILRequest;
    .param p2, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p3, "ret"    # Ljava/lang/Object;

    .line 3964
    iget v0, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const-string v1, "< "

    if-nez v0, :cond_0

    .line 3966
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

    .line 3971
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

    .line 3972
    invoke-static {v1, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3971
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    .line 3977
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

    .line 3980
    iget v0, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    invoke-virtual {p1, v0, p3}, Lcom/mediatek/ims/ril/RILRequest;->onError(ILjava/lang/Object;)V

    .line 3982
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

    .line 3985
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

    .line 3989
    :cond_2
    const-string v0, "clear mIsSendChldRequest"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3990
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v0}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->resetSendChldRequest()V

    .line 3993
    :cond_3
    iget v0, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->type:I

    if-nez v0, :cond_4

    .line 3994
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->decrementWakeLock(Lcom/mediatek/ims/ril/RILRequest;)V

    .line 3996
    :cond_4
    invoke-virtual {p1}, Lcom/mediatek/ims/ril/RILRequest;->release()V

    .line 3997
    return-void
.end method

.method public pullCall(Ljava/lang/String;ZLandroid/os/Message;)V
    .locals 4
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "isVideoCall"    # Z
    .param p3, "response"    # Landroid/os/Message;

    .line 3427
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 3428
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 3429
    const/16 v1, 0x830

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3432
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

    .line 3438
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3439
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 3440
    invoke-interface {v2, v3, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->pullCall(ILjava/lang/String;Z)V

    goto :goto_0

    .line 3442
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 3443
    invoke-interface {v2, v3, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->pullCall(ILjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3447
    :goto_0
    goto :goto_1

    .line 3445
    :catch_0
    move-exception v2

    .line 3446
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "pullCall"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3449
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2873
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2874
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2875
    const/16 v1, 0x37

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2877
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

    .line 2879
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->getClip(I)V
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
    const-string v3, "queryCLIP"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2884
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

    .line 3039
    const-string v0, ""

    .line 3040
    .local v0, "number":Ljava/lang/String;
    const-string v1, ""

    .line 3041
    .local v1, "timeSlotBegin":Ljava/lang/String;
    const-string v2, ""

    .line 3043
    .local v2, "timeSlotEnd":Ljava/lang/String;
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v3

    .line 3044
    .local v3, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v3, :cond_1

    .line 3045
    const/16 v4, 0x84d

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v4, p3, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v4

    .line 3049
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

    .line 3056
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v6, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 3057
    new-instance v5, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;

    invoke-direct {v5}, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;-><init>()V

    .line 3059
    .local v5, "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;
    iput p1, v5, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->reason:I

    .line 3060
    iput p2, v5, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->serviceClass:I

    .line 3061
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->toa:I

    .line 3062
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->number:Ljava/lang/String;

    .line 3063
    iput v6, v5, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->timeSeconds:I

    .line 3064
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->timeSlotBegin:Ljava/lang/String;

    .line 3065
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->timeSlotEnd:Ljava/lang/String;

    .line 3067
    move-object v6, v3

    check-cast v6, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v7, v4, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 3068
    invoke-interface {v6, v7, v5}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->queryCallForwardInTimeSlotStatus(ILvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;)V

    .line 3069
    .end local v5    # "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;
    goto :goto_0

    .line 3070
    :cond_0
    new-instance v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;

    invoke-direct {v5}, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;-><init>()V

    .line 3072
    .local v5, "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;
    iput p1, v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->reason:I

    .line 3073
    iput p2, v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->serviceClass:I

    .line 3074
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->toa:I

    .line 3075
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->number:Ljava/lang/String;

    .line 3076
    iput v6, v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->timeSeconds:I

    .line 3077
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->timeSlotBegin:Ljava/lang/String;

    .line 3078
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->timeSlotEnd:Ljava/lang/String;

    .line 3079
    move-object v6, v3

    check-cast v6, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v7, v4, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 3080
    invoke-interface {v6, v7, v5}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->queryCallForwardInTimeSlotStatus(ILvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3084
    .end local v5    # "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;
    :goto_0
    goto :goto_1

    .line 3082
    :catch_0
    move-exception v5

    .line 3083
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "queryCallForwardInTimeSlotStatus"

    invoke-direct {p0, v4, v6, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3086
    .end local v4    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .line 2765
    invoke-direct {p0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2766
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2767
    const/16 v1, 0x21

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2770
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

    .line 2773
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 2775
    .local v2, "cfInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    iput p1, v2, Landroid/hardware/radio/V1_0/CallForwardInfo;->reason:I

    .line 2776
    iput p2, v2, Landroid/hardware/radio/V1_0/CallForwardInfo;->serviceClass:I

    .line 2777
    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/hardware/radio/V1_0/CallForwardInfo;->toa:I

    .line 2778
    invoke-virtual {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/radio/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    .line 2779
    const/4 v3, 0x0

    iput v3, v2, Landroid/hardware/radio/V1_0/CallForwardInfo;->timeSeconds:I

    .line 2781
    :try_start_0
    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v3, v2}, Landroid/hardware/radio/V1_0/IRadio;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2784
    goto :goto_0

    .line 2782
    :catch_0
    move-exception v3

    .line 2783
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "queryCallForwardStatus"

    invoke-direct {p0, v1, v4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2786
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

    .line 2793
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2794
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2795
    const/16 v1, 0x23

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2798
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

    .line 2802
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Landroid/hardware/radio/V1_0/IRadio;->getCallWaiting(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2805
    goto :goto_0

    .line 2803
    :catch_0
    move-exception v2

    .line 2804
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "queryCallWaiting"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2807
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

    .line 2661
    const-string v4, "A0000000871002"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 2662
    return-void
.end method

.method public queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "appId"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/os/Message;

    .line 2670
    invoke-direct {p0, p5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v6

    .line 2671
    .local v6, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v6, :cond_0

    .line 2672
    const/16 v0, 0x2a

    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p5, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v7

    .line 2675
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

    .line 2680
    :try_start_0
    iget v1, v7, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2681
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2682
    invoke-virtual {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2684
    invoke-virtual {p0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2680
    move-object v0, v6

    move v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/hardware/radio/V1_0/IRadio;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2687
    goto :goto_0

    .line 2685
    :catch_0
    move-exception v0

    .line 2686
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "getFacilityLockForApp"

    invoke-direct {p0, v7, v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2689
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    :goto_0
    return-void
.end method

.method public querySsacStatus(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 5257
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 5258
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 5259
    const/16 v1, 0x887

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 5263
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5264
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 5265
    invoke-interface {v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->querySsacStatus(I)V

    goto :goto_0

    .line 5267
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 5268
    invoke-interface {v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->querySsacStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5272
    :goto_0
    goto :goto_1

    .line 5270
    :catch_0
    move-exception v2

    .line 5271
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "queryVopsStatus"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 5274
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public queryVopsStatus(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 5212
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 5213
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 5214
    const/16 v1, 0x882

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 5218
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5219
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 5220
    invoke-interface {v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->queryVopsStatus(I)V

    goto :goto_0

    .line 5222
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 5223
    invoke-interface {v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->queryVopsStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5227
    :goto_0
    goto :goto_1

    .line 5225
    :catch_0
    move-exception v2

    .line 5226
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "queryVopsStatus"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 5229
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public reject(I)V
    .locals 1
    .param p1, "callId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5023
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->hangup(ILandroid/os/Message;)V

    .line 5024
    return-void
.end method

.method public reject(II)V
    .locals 2
    .param p1, "callId"    # I
    .param p2, "reason"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5028
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " reject with reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 5029
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->hangup(IILandroid/os/Message;)V

    .line 5030
    return-void
.end method

.method public removeParticipants(ILjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "confCallId"    # I
    .param p2, "participant"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 2174
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 2175
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->getInstance(I)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mediatek/ims/ImsServiceCallTracker;->getParticipantCallId(Ljava/lang/String;)I

    move-result v0

    .line 2177
    .local v0, "participantCallId":I
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->internalRemoveConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V

    .line 2179
    return-void
.end method

.method public requestExitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 4
    .param p1, "response"    # Landroid/os/Message;

    .line 3304
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 3305
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 3306
    const/16 v1, 0x63

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3310
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3311
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3310
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3315
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/V1_0/IRadio;->exitEmergencyCallbackMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3318
    goto :goto_0

    .line 3316
    :catch_0
    move-exception v2

    .line 3317
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "exitEmergencyCallbackMode"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3320
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public resetSuppServ(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 3240
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 3241
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 3242
    const/16 v1, 0x874

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3246
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3247
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3246
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3251
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3252
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 3253
    invoke-interface {v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->resetSuppServ(I)V

    goto :goto_0

    .line 3255
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 3256
    invoke-interface {v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->resetSuppServ(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3260
    :goto_0
    goto :goto_1

    .line 3258
    :catch_0
    move-exception v2

    .line 3259
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getXcapStatus"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3262
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
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

    .line 4974
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, p4, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->responseBearerStateConfirm(IIILandroid/os/Message;)V

    .line 4975
    return-void
.end method

.method public responseBearerStateConfirm(IIILandroid/os/Message;)V
    .locals 4
    .param p1, "aid"    # I
    .param p2, "action"    # I
    .param p3, "status"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 3364
    invoke-direct {p0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 3365
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 3366
    const/16 v1, 0x820

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3369
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

    .line 3374
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3375
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 3376
    invoke-interface {v2, v3, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->imsBearerStateConfirm(IIII)V

    goto :goto_0

    .line 3378
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 3379
    invoke-interface {v2, v3, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->imsBearerStateConfirm(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3383
    :goto_0
    goto :goto_1

    .line 3381
    :catch_0
    move-exception v2

    .line 3382
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "imsBearerStateConfirm"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3385
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public resume(ILandroid/os/Message;)V
    .locals 5
    .param p1, "callId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1209
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 1210
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 1211
    const/16 v1, 0x825

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1215
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1216
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1215
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1220
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 1221
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 1222
    invoke-interface {v2, v4, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->controlCall(III)V

    goto :goto_0

    .line 1224
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 1225
    invoke-interface {v2, v4, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->controlCall(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1229
    :goto_0
    goto :goto_1

    .line 1227
    :catch_0
    move-exception v2

    .line 1228
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "resumeCall"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1232
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method riljLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 4908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4909
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

    .line 4908
    const-string v1, "IMS_RILA"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4910
    return-void
.end method

.method riljLoge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 4913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4914
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

    .line 4913
    const-string v1, "IMS_RILA"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4915
    return-void
.end method

.method riljLoge(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 4918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4919
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

    .line 4918
    const-string v1, "IMS_RILA"

    invoke-static {v1, v0, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4920
    return-void
.end method

.method riljLogi(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 4903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4904
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

    .line 4903
    const-string v1, "IMS_RILA"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4905
    return-void
.end method

.method riljLogv(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 4923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4924
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

    .line 4923
    const-string v1, "IMS_RILA"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4925
    return-void
.end method

.method public runGbaAuthentication(Ljava/lang/String;Ljava/lang/String;ZILandroid/os/Message;)V
    .locals 9
    .param p1, "nafFqdn"    # Ljava/lang/String;
    .param p2, "nafSecureProtocolId"    # Ljava/lang/String;
    .param p3, "forceRun"    # Z
    .param p4, "netId"    # I
    .param p5, "result"    # Landroid/os/Message;

    .line 3174
    invoke-direct {p0, p5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 3175
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 3176
    const/16 v1, 0x84f

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p5, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3179
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3180
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " nafFqdn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " nafSecureProtocolId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " forceRun = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " netId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3179
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3188
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3189
    move-object v3, v0

    check-cast v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 3190
    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    invoke-interface/range {v3 .. v8}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->runGbaAuthentication(ILjava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_0

    .line 3193
    :cond_0
    move-object v3, v0

    check-cast v3, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 3194
    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    invoke-interface/range {v3 .. v8}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->runGbaAuthentication(ILjava/lang/String;Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3199
    :goto_0
    goto :goto_1

    .line 3197
    :catch_0
    move-exception v2

    .line 3198
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "runGbaAuthentication"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3202
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 5
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 1261
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 1262
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 1263
    const/16 v1, 0x18

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1268
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

    .line 1272
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

    .line 1275
    goto :goto_0

    .line 1273
    :catch_0
    move-exception v2

    .line 1274
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "sendDtmf"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1277
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

    .line 4548
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 4549
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 4550
    const/16 v1, 0x87f

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 4554
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 4555
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

    .line 4554
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4560
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4561
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 4562
    invoke-interface {v2, v3, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->sendRttModifyRequest(III)V

    goto :goto_0

    .line 4564
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 4565
    invoke-interface {v2, v3, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->sendRttModifyRequest(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4569
    :goto_0
    goto :goto_1

    .line 4567
    :catch_0
    move-exception v2

    .line 4568
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "sendRttModifyRequest"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4572
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public sendRttText(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 4
    .param p1, "callId"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "length"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 4585
    invoke-direct {p0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 4586
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 4587
    const/16 v1, 0x880

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 4591
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 4592
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

    .line 4591
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4599
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4600
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 4601
    invoke-interface {v2, v3, p1, p3, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->sendRttText(IIILjava/lang/String;)V

    goto :goto_0

    .line 4603
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 4604
    invoke-interface {v2, v3, p1, p3, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->sendRttText(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4608
    :goto_0
    goto :goto_1

    .line 4606
    :catch_0
    move-exception v2

    .line 4607
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "sendRttText"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4610
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public sendSms(IILjava/lang/String;Ljava/lang/String;Z[BLandroid/os/Message;)V
    .locals 22
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "smsc"    # Ljava/lang/String;
    .param p5, "isRetry"    # Z
    .param p6, "pdu"    # [B
    .param p7, "response"    # Landroid/os/Message;

    .line 4119
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p7

    invoke-direct {v1, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v4

    .line 4120
    .local v4, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v4, :cond_4

    .line 4121
    const/16 v0, 0x855

    iget-object v5, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {v1, v0, v3, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v5

    .line 4124
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

    .line 4126
    new-instance v0, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    move-object v6, v0

    .line 4127
    .local v6, "msg":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    move/from16 v7, p5

    iput-boolean v7, v6, Landroid/hardware/radio/V1_0/ImsSmsMessage;->retry:Z

    .line 4128
    move/from16 v8, p2

    iput v8, v6, Landroid/hardware/radio/V1_0/ImsSmsMessage;->messageRef:I

    .line 4130
    const-string v0, "3gpp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v9, :cond_0

    .line 4131
    iput v11, v6, Landroid/hardware/radio/V1_0/ImsSmsMessage;->tech:I

    .line 4132
    nop

    .line 4133
    invoke-static/range {p6 .. p6}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    .line 4132
    move-object/from16 v12, p4

    invoke-direct {v1, v12, v9}, Lcom/mediatek/ims/ril/ImsRILAdapter;->constructGsmSendSmsRilRequest(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/V1_0/GsmSmsMessage;

    move-result-object v9

    .line 4134
    .local v9, "gsmMsg":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    iget-object v13, v6, Landroid/hardware/radio/V1_0/ImsSmsMessage;->gsmMessage:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4135
    .end local v9    # "gsmMsg":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    move-object/from16 v13, p6

    goto :goto_0

    :cond_0
    move-object/from16 v12, p4

    const-string v9, "3gpp2"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 4136
    iput v10, v6, Landroid/hardware/radio/V1_0/ImsSmsMessage;->tech:I

    .line 4137
    new-instance v9, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v9}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 4138
    .local v9, "cdmaMsg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    move-object/from16 v13, p6

    invoke-virtual {v1, v9, v13}, Lcom/mediatek/ims/ril/ImsRILAdapter;->constructCdmaSendSmsRilRequest(Landroid/hardware/radio/V1_0/CdmaSmsMessage;[B)V

    .line 4139
    iget-object v14, v6, Landroid/hardware/radio/V1_0/ImsSmsMessage;->cdmaMessage:Ljava/util/ArrayList;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4140
    .end local v9    # "cdmaMsg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    nop

    .line 4145
    :goto_0
    :try_start_0
    iget-object v9, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v14, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v9, v14}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 4146
    move-object v9, v4

    check-cast v9, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v14, v5, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 4147
    invoke-interface {v9, v14, v6}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->sendImsSmsEx(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    goto :goto_1

    .line 4149
    :cond_1
    move-object v9, v4

    check-cast v9, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v14, v5, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 4150
    invoke-interface {v9, v14, v6}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->sendImsSmsEx(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 4152
    :goto_1
    iget-object v15, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v9, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v16

    iget v9, v5, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/16 v18, 0x3

    .line 4153
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4154
    move/from16 v19, v11

    goto :goto_2

    .line 4155
    :cond_2
    move/from16 v19, v10

    :goto_2
    const-wide/16 v20, 0x0

    .line 4152
    move/from16 v17, v9

    invoke-virtual/range {v15 .. v21}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIIIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4159
    goto :goto_3

    .line 4157
    :catch_0
    move-exception v0

    .line 4158
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "sendImsGsmSms"

    invoke-direct {v1, v5, v9, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    .line 4141
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
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

    .line 4142
    return-void

    .line 4120
    .end local v5    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v6    # "msg":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :cond_4
    move/from16 v8, p2

    move-object/from16 v12, p4

    move/from16 v7, p5

    move-object/from16 v13, p6

    .line 4161
    :goto_3
    return-void
.end method

.method public sendUSSI(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "ussiString"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 2580
    const-string v0, "persist.vendor.ims.ussi.ap"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrap sendUSSI, ussiString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2585
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 2586
    return-void

    .line 2589
    :cond_0
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 2590
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_2

    .line 2591
    const/16 v1, 0x82d

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2595
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2596
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ussiString = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2595
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2601
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2602
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2603
    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->sendUssi(ILjava/lang/String;)V

    goto :goto_0

    .line 2605
    :cond_1
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2606
    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->sendUssi(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2610
    :goto_0
    goto :goto_1

    .line 2608
    :catch_0
    move-exception v2

    .line 2609
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "sendUssi"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2612
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void
.end method

.method public sendWfcProfileInfo(IILandroid/os/Message;)V
    .locals 0
    .param p1, "wfcPreference"    # I
    .param p2, "phoneid"    # I
    .param p3, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4968
    invoke-virtual {p0, p1, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendWfcProfileInfo(ILandroid/os/Message;)V

    .line 4969
    return-void
.end method

.method public sendWfcProfileInfo(ILandroid/os/Message;)V
    .locals 4
    .param p1, "wfcPreference"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2295
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 2296
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 2297
    const/16 v1, 0x82f

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2301
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2302
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " wfcPreference = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2301
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2307
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2308
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2309
    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setWfcProfile(II)V

    goto :goto_0

    .line 2311
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2312
    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setWfcProfile(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2316
    :goto_0
    goto :goto_1

    .line 2314
    :catch_0
    move-exception v2

    .line 2315
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setWfcProfile"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2318
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public setCLIP(ILandroid/os/Message;)V
    .locals 4
    .param p1, "clipEnable"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2892
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 2893
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 2894
    const/16 v1, 0x837

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2898
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

    .line 2903
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2904
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2905
    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setClip(II)V

    goto :goto_0

    .line 2907
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2908
    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setClip(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2912
    :goto_0
    goto :goto_1

    .line 2910
    :catch_0
    move-exception v2

    .line 2911
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setCLIP"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2914
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 4
    .param p1, "clirMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2853
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2854
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2855
    const/16 v1, 0x20

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2857
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

    .line 2861
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Landroid/hardware/radio/V1_0/IRadio;->setClir(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2864
    goto :goto_0

    .line 2862
    :catch_0
    move-exception v2

    .line 2863
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setCLIR"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2866
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

    .line 3010
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 3011
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 3012
    const/16 v1, 0x84b

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3016
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

    .line 3021
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3022
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 3023
    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setColp(II)V

    goto :goto_0

    .line 3025
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 3026
    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setColp(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3030
    :goto_0
    goto :goto_1

    .line 3028
    :catch_0
    move-exception v2

    .line 3029
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setCOLP"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3032
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public setCOLR(ILandroid/os/Message;)V
    .locals 4
    .param p1, "colrEnable"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2951
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 2952
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 2953
    const/16 v1, 0x84c

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2957
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

    .line 2962
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2963
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2964
    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setColr(II)V

    goto :goto_0

    .line 2966
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2967
    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setColr(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2971
    :goto_0
    goto :goto_1

    .line 2969
    :catch_0
    move-exception v2

    .line 2970
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setCOLR"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2973
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public setCallAdditionalInfo(Ljava/util/ArrayList;Landroid/os/Message;)V
    .locals 4
    .param p2, "result"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 5301
    .local p1, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 5302
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 5303
    const/16 v1, 0x88a

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 5307
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

    .line 5311
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5312
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 5313
    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setCallAdditionalInfo(ILjava/util/ArrayList;)V

    goto :goto_0

    .line 5315
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 5316
    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setCallAdditionalInfo(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5320
    :goto_0
    goto :goto_1

    .line 5318
    :catch_0
    move-exception v2

    .line 5319
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setCallAdditionalInfo"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 5322
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
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

    .line 2734
    invoke-direct {p0, p6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2735
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2736
    const/16 v1, 0x22

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p6, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2739
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

    .line 2743
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 2745
    .local v2, "cfInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    iput p1, v2, Landroid/hardware/radio/V1_0/CallForwardInfo;->status:I

    .line 2746
    iput p2, v2, Landroid/hardware/radio/V1_0/CallForwardInfo;->reason:I

    .line 2747
    iput p3, v2, Landroid/hardware/radio/V1_0/CallForwardInfo;->serviceClass:I

    .line 2748
    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/hardware/radio/V1_0/CallForwardInfo;->toa:I

    .line 2749
    invoke-virtual {p0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/radio/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    .line 2750
    iput p5, v2, Landroid/hardware/radio/V1_0/CallForwardInfo;->timeSeconds:I

    .line 2752
    :try_start_0
    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v3, v2}, Landroid/hardware/radio/V1_0/IRadio;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2755
    goto :goto_0

    .line 2753
    :catch_0
    move-exception v3

    .line 2754
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "setCallForward"

    invoke-direct {p0, v1, v4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2757
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

    .line 3094
    const-string v0, ""

    .line 3095
    .local v0, "timeSlotBegin":Ljava/lang/String;
    const-string v1, ""

    .line 3098
    .local v1, "timeSlotEnd":Ljava/lang/String;
    if-eqz p6, :cond_1

    array-length v2, p6

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 3099
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p6

    if-ge v2, v3, :cond_1

    .line 3100
    new-instance v3, Ljava/util/Date;

    aget-wide v4, p6, v2

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 3101
    .local v3, "date":Ljava/util/Date;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "HH:mm"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3102
    .local v4, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v5, "GMT+8"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 3104
    if-nez v2, :cond_0

    .line 3105
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3107
    :cond_0
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 3099
    .end local v3    # "date":Ljava/util/Date;
    .end local v4    # "dateFormat":Ljava/text/SimpleDateFormat;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3112
    .end local v2    # "i":I
    :cond_1
    invoke-direct {p0, p7}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v2

    .line 3113
    .local v2, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v2, :cond_3

    .line 3114
    const/16 v3, 0x84e

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v3, p7, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v3

    .line 3118
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

    .line 3125
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v5, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3126
    new-instance v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;

    invoke-direct {v4}, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;-><init>()V

    .line 3128
    .local v4, "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;
    iput p1, v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->status:I

    .line 3129
    iput p2, v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->reason:I

    .line 3130
    iput p3, v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->serviceClass:I

    .line 3131
    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->toa:I

    .line 3132
    invoke-virtual {p0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->number:Ljava/lang/String;

    .line 3133
    iput p5, v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->timeSeconds:I

    .line 3134
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->timeSlotBegin:Ljava/lang/String;

    .line 3135
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->timeSlotEnd:Ljava/lang/String;

    .line 3137
    move-object v5, v2

    check-cast v5, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v6, v3, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 3138
    invoke-interface {v5, v6, v4}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setCallForwardInTimeSlot(ILvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;)V

    .line 3139
    .end local v4    # "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;
    goto :goto_2

    .line 3140
    :cond_2
    new-instance v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;

    invoke-direct {v4}, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;-><init>()V

    .line 3142
    .local v4, "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;
    iput p1, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->status:I

    .line 3143
    iput p2, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->reason:I

    .line 3144
    iput p3, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->serviceClass:I

    .line 3145
    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->toa:I

    .line 3146
    invoke-virtual {p0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->number:Ljava/lang/String;

    .line 3147
    iput p5, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->timeSeconds:I

    .line 3148
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->timeSlotBegin:Ljava/lang/String;

    .line 3149
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->timeSlotEnd:Ljava/lang/String;

    .line 3151
    move-object v5, v2

    check-cast v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v6, v3, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 3152
    invoke-interface {v5, v6, v4}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setCallForwardInTimeSlot(ILvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3157
    .end local v4    # "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;
    :goto_2
    goto :goto_3

    .line 3154
    :catch_0
    move-exception v4

    .line 3155
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "setCallForwardInTimeSlot"

    invoke-direct {p0, v3, v5, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3159
    .end local v3    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
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

    .line 5071
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setCallIndication(IIIILandroid/os/Message;)V

    .line 5072
    return-void
.end method

.method public setCallIndication(IIIILandroid/os/Message;)V
    .locals 9
    .param p1, "mode"    # I
    .param p2, "callId"    # I
    .param p3, "seqNum"    # I
    .param p4, "cause"    # I
    .param p5, "response"    # Landroid/os/Message;

    .line 1364
    invoke-direct {p0, p5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 1365
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 1366
    const/16 v1, 0x7e0

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p5, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1370
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1371
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " seqNum = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " cause = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1370
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1376
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1377
    move-object v3, v0

    check-cast v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 1378
    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-interface/range {v3 .. v8}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setCallIndication(IIIII)V

    goto :goto_0

    .line 1380
    :cond_0
    move-object v3, v0

    check-cast v3, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 1381
    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-interface/range {v3 .. v8}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setCallIndication(IIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1385
    :goto_0
    goto :goto_1

    .line 1383
    :catch_0
    move-exception v2

    .line 1384
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setCallIndication"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1387
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 2814
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2815
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2816
    const/16 v1, 0x24

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2819
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

    .line 2823
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->setCallWaiting(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2826
    goto :goto_0

    .line 2824
    :catch_0
    move-exception v2

    .line 2825
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setCallWaiting"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2828
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

    .line 2697
    const-string v5, "A0000000871002"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 2698
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

    .line 2706
    invoke-direct {p0, p6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v7

    .line 2707
    .local v7, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v7, :cond_0

    .line 2708
    const/16 v0, 0x2b

    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p6, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v8

    .line 2711
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

    .line 2716
    :try_start_0
    iget v1, v8, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2717
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2719
    invoke-virtual {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2721
    invoke-virtual {p0, p5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2716
    move-object v0, v7

    move v3, p2

    move v5, p4

    invoke-interface/range {v0 .. v6}, Landroid/hardware/radio/V1_0/IRadio;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2724
    goto :goto_0

    .line 2722
    :catch_0
    move-exception v0

    .line 2723
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "setFacilityLockForApp"

    invoke-direct {p0, v8, v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2726
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

    .line 4980
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setImsBearerNotification(ILandroid/os/Message;)V

    .line 4981
    return-void
.end method

.method public setImsBearerNotification(ILandroid/os/Message;)V
    .locals 4
    .param p1, "enable"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 3395
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 3396
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 3397
    const/16 v1, 0x857

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3400
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

    .line 3405
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3406
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 3407
    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setImsBearerNotification(II)V

    goto :goto_0

    .line 3409
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 3410
    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setImsBearerNotification(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3414
    :goto_0
    goto :goto_1

    .line 3412
    :catch_0
    move-exception v2

    .line 3413
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setImsBearerNotification"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3416
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public setImsCallMode(ILandroid/os/Message;)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 4304
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 4305
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 4306
    const/16 v1, 0x886

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 4310
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

    .line 4315
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4316
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 4317
    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setImsCallMode(II)V

    goto :goto_0

    .line 4319
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 4320
    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setImsCallMode(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4324
    :goto_0
    goto :goto_1

    .line 4322
    :catch_0
    move-exception v2

    .line 4323
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setImsCallMode"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4326
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public setImsCfg([IILandroid/os/Message;)V
    .locals 0
    .param p1, "params"    # [I
    .param p2, "phoneid"    # I
    .param p3, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4999
    invoke-virtual {p0, p1, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setImsCfg([ILandroid/os/Message;)V

    .line 5000
    return-void
.end method

.method public setImsCfg([ILandroid/os/Message;)V
    .locals 23
    .param p1, "params"    # [I
    .param p2, "response"    # Landroid/os/Message;

    .line 1443
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

    .line 1444
    .local v7, "volteEnable":Z
    :goto_0
    aget v3, p1, v4

    if-ne v3, v4, :cond_1

    move v8, v4

    goto :goto_1

    :cond_1
    move v8, v0

    .line 1445
    .local v8, "vilteEnable":Z
    :goto_1
    const/4 v3, 0x2

    aget v5, p1, v3

    if-ne v5, v4, :cond_2

    move v9, v4

    goto :goto_2

    :cond_2
    move v9, v0

    .line 1446
    .local v9, "vowifiEnable":Z
    :goto_2
    const/4 v5, 0x3

    aget v6, p1, v5

    if-ne v6, v4, :cond_3

    move v10, v4

    goto :goto_3

    :cond_3
    move v10, v0

    .line 1447
    .local v10, "viwifiEnable":Z
    :goto_3
    const/4 v6, 0x4

    aget v11, p1, v6

    if-ne v11, v4, :cond_4

    move v11, v4

    goto :goto_4

    :cond_4
    move v11, v0

    .line 1448
    .local v11, "smsEnable":Z
    :goto_4
    const/4 v13, 0x5

    aget v12, p1, v13

    if-ne v12, v4, :cond_5

    move v12, v4

    goto :goto_5

    :cond_5
    move v12, v0

    .line 1450
    .local v12, "eimsEnable":Z
    :goto_5
    invoke-direct {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v14

    .line 1451
    .local v14, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v14, :cond_8

    .line 1452
    const/16 v15, 0x81d

    iget-object v13, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {v1, v15, v2, v13}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v13

    .line 1456
    .local v13, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ">  "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v13, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1457
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

    .line 1456
    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1467
    :try_start_0
    iget-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1468
    move-object v5, v14

    check-cast v5, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v6, v13, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 1469
    invoke-interface/range {v5 .. v12}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setImscfg(IZZZZZZ)V

    goto :goto_6

    .line 1476
    :cond_6
    move-object v15, v14

    check-cast v15, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v0, v13, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 1477
    move/from16 v16, v0

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    move/from16 v20, v10

    move/from16 v21, v11

    move/from16 v22, v12

    invoke-interface/range {v15 .. v22}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setImscfg(IZZZZZZ)V

    .line 1483
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1484
    iget v0, v13, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-direct {v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->findAndRemoveRequestFromList(I)Lcom/mediatek/ims/ril/RILRequest;

    .line 1485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v13, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1486
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " sent and removed"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1485
    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1491
    :cond_7
    :goto_6
    goto :goto_7

    .line 1489
    :catch_0
    move-exception v0

    .line 1490
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "setImsCfg"

    invoke-direct {v1, v13, v3, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1493
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v13    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_8
    :goto_7
    return-void
.end method

.method public setImsCfgFeatureValue(IIIILandroid/os/Message;)V
    .locals 9
    .param p1, "featureId"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "isLast"    # I
    .param p5, "result"    # Landroid/os/Message;

    .line 2019
    invoke-direct {p0, p5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 2020
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 2021
    const/16 v1, 0x858

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p5, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2025
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2026
    move-object v3, v0

    check-cast v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2027
    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-interface/range {v3 .. v8}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setImsCfgFeatureValue(IIIII)V

    goto :goto_0

    .line 2030
    :cond_0
    move-object v3, v0

    check-cast v3, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2031
    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-interface/range {v3 .. v8}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setImsCfgFeatureValue(IIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2036
    :goto_0
    goto :goto_1

    .line 2034
    :catch_0
    move-exception v2

    .line 2035
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setImsCfgFeatureValue"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2038
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public setImsCfgProvisionValue(ILjava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "configId"    # I
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 2075
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 2076
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 2077
    const/16 v1, 0x85a

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2081
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2082
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2083
    invoke-interface {v2, v3, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setImsCfgProvisionValue(IILjava/lang/String;)V

    goto :goto_0

    .line 2085
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2086
    invoke-interface {v2, v3, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setImsCfgProvisionValue(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2090
    :goto_0
    goto :goto_1

    .line 2088
    :catch_0
    move-exception v2

    .line 2089
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setImsCfgProvisionValue"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2092
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public setImsRegistrationReport(ILandroid/os/Message;)V
    .locals 0
    .param p1, "phoneid"    # I
    .param p2, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5005
    invoke-virtual {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setImsRegistrationReport(Landroid/os/Message;)V

    .line 5006
    return-void
.end method

.method public setImsRegistrationReport(Landroid/os/Message;)V
    .locals 4
    .param p1, "response"    # Landroid/os/Message;

    .line 3460
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 3461
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 3462
    const/16 v1, 0x831

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3466
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

    .line 3470
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3471
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 3472
    invoke-interface {v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setImsRegistrationReport(I)V

    goto :goto_0

    .line 3474
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 3475
    invoke-interface {v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setImsRegistrationReport(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3479
    :goto_0
    goto :goto_1

    .line 3477
    :catch_0
    move-exception v2

    .line 3478
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setImsRegistrationReport"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3481
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public setImsRtpInfo(IIILandroid/os/Message;)V
    .locals 4
    .param p1, "pdnId"    # I
    .param p2, "networkId"    # I
    .param p3, "timer"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 3493
    invoke-direct {p0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 3494
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 3495
    const/16 v1, 0x828

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3498
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

    .line 3504
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3505
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 3506
    invoke-interface {v2, v3, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setImsRtpReport(IIII)V

    goto :goto_0

    .line 3508
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 3509
    invoke-interface {v2, v3, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setImsRtpReport(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3513
    :goto_0
    goto :goto_1

    .line 3511
    :catch_0
    move-exception v2

    .line 3512
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setImsRtpReport"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3515
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public setModemImsCfg(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 4
    .param p1, "keys"    # Ljava/lang/String;
    .param p2, "values"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 1504
    invoke-direct {p0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 1505
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 1506
    const/16 v1, 0x850

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1510
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1511
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

    .line 1510
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1518
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1519
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 1520
    invoke-interface {v2, v3, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setModemImsCfg(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 1522
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 1523
    invoke-interface {v2, v3, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setModemImsCfg(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1527
    :goto_0
    goto :goto_1

    .line 1525
    :catch_0
    move-exception v2

    .line 1526
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "sendModemImsCfg"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1529
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public setMute(ZLandroid/os/Message;)V
    .locals 4
    .param p1, "enableMute"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 931
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 932
    .local v1, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v1, :cond_0

    .line 933
    const/16 v2, 0x35

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v2, v0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 937
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 938
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mute = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 937
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 943
    :try_start_0
    iget v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Landroid/hardware/radio/V1_0/IRadio;->setMute(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 946
    goto :goto_0

    .line 944
    :catch_0
    move-exception v2

    .line 945
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setMute"

    invoke-direct {p0, v0, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 948
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

    .line 4962
    invoke-virtual {p0, p2, p3, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setProvisionValue(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 4963
    return-void
.end method

.method public setProvisionValue(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "provisionStr"    # Ljava/lang/String;
    .param p2, "provisionValue"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 1985
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 1986
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 1987
    const/16 v1, 0x81f

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1991
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1992
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

    .line 1991
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1996
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1997
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 1998
    invoke-interface {v2, v3, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setProvisionValue(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2000
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2001
    invoke-interface {v2, v3, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setProvisionValue(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2005
    :goto_0
    goto :goto_1

    .line 2003
    :catch_0
    move-exception v2

    .line 2004
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setProvisionValue"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2007
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public setRttMode(ILandroid/os/Message;)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 4621
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 4622
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 4623
    const/16 v1, 0x87e

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 4627
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 4628
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4627
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4633
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4634
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 4635
    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setRttMode(II)V

    goto :goto_0

    .line 4637
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 4638
    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setRttMode(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4642
    :goto_0
    goto :goto_1

    .line 4640
    :catch_0
    move-exception v2

    .line 4641
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setRttMode"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4644
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public setRttModifyRequestResponse(IILandroid/os/Message;)V
    .locals 4
    .param p1, "callId"    # I
    .param p2, "result"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 4513
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 4514
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 4515
    const/16 v1, 0x881

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 4519
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 4520
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

    .line 4519
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4525
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4526
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 4527
    invoke-interface {v2, v3, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->rttModifyRequestResponse(III)V

    goto :goto_0

    .line 4529
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 4530
    invoke-interface {v2, v3, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->rttModifyRequestResponse(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4534
    :goto_0
    goto :goto_1

    .line 4532
    :catch_0
    move-exception v2

    .line 4533
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "rttModifyRequestResponse"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4536
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public setSipHeader(IIILjava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "total"    # I
    .param p2, "index"    # I
    .param p3, "headerCount"    # I
    .param p4, "headerValuePair"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    .line 4232
    invoke-direct {p0, p5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 4233
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 4234
    const/16 v1, 0x884

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p5, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 4238
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

    .line 4241
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4242
    .local v2, "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4243
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4244
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4245
    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4248
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4249
    move-object v3, v0

    check-cast v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 4250
    invoke-interface {v3, v4, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setSipHeader(ILjava/util/ArrayList;)V

    goto :goto_0

    .line 4252
    :cond_0
    move-object v3, v0

    check-cast v3, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 4253
    invoke-interface {v3, v4, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setSipHeader(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4257
    :goto_0
    goto :goto_1

    .line 4255
    :catch_0
    move-exception v3

    .line 4256
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "setSipHeader"

    invoke-direct {p0, v1, v4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4259
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public setSipHeaderReport(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "headerType"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 4269
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 4270
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 4271
    const/16 v1, 0x885

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 4275
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

    .line 4279
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4280
    .local v2, "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4281
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4284
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4285
    move-object v3, v0

    check-cast v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 4286
    invoke-interface {v3, v4, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setSipHeaderReport(ILjava/util/ArrayList;)V

    goto :goto_0

    .line 4288
    :cond_0
    move-object v3, v0

    check-cast v3, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 4289
    invoke-interface {v3, v4, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setSipHeaderReport(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4293
    :goto_0
    goto :goto_1

    .line 4291
    :catch_0
    move-exception v3

    .line 4292
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "setSipHeaderReport"

    invoke-direct {p0, v1, v4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4295
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public setVoiceDomainPreference(ILandroid/os/Message;)V
    .locals 4
    .param p1, "vdp"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 3524
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 3525
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 3526
    const/16 v1, 0x84a

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3529
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

    .line 3533
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3534
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 3535
    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setVoiceDomainPreference(II)V

    goto :goto_0

    .line 3537
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 3538
    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setVoiceDomainPreference(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3542
    :goto_0
    goto :goto_1

    .line 3540
    :catch_0
    move-exception v2

    .line 3541
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setVoiceDomainPreference"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3544
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public setupXcapUserAgentString(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "userAgent"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 3271
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 3272
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 3273
    const/16 v1, 0x877

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3277
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3278
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userAgent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3277
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3283
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3284
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 3285
    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setupXcapUserAgentString(ILjava/lang/String;)V

    goto :goto_0

    .line 3287
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 3288
    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setupXcapUserAgentString(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3292
    :goto_0
    goto :goto_1

    .line 3290
    :catch_0
    move-exception v2

    .line 3291
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setupXcapUserAgentString"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3294
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
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

    .line 965
    if-eqz p5, :cond_0

    .line 966
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0, p6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_0

    .line 967
    :cond_0
    if-eqz p4, :cond_1

    .line 968
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->emergencyDial(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_0

    .line 970
    :cond_1
    invoke-virtual {p0, p1, p3, p6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->dial(Ljava/lang/String;ILandroid/os/Message;)V

    .line 972
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

    .line 4987
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->startConference([Ljava/lang/String;IZLandroid/os/Message;)V

    .line 4988
    return-void
.end method

.method public startConference([Ljava/lang/String;IZLandroid/os/Message;)V
    .locals 0
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "isVideoCall"    # Z
    .param p4, "result"    # Landroid/os/Message;

    .line 988
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->conferenceDial([Ljava/lang/String;IZLandroid/os/Message;)V

    .line 989
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 7
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 1288
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    monitor-enter v0

    .line 1289
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->hasSendChldRequest()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 1290
    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x20

    if-ge v1, v2, :cond_2

    .line 1291
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->isStart()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1292
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 1293
    .local v1, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v1, :cond_0

    .line 1294
    const/16 v2, 0x31

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v2, p2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v2

    .line 1296
    .local v2, "rr":Lcom/mediatek/ims/ril/RILRequest;
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->start()V

    .line 1297
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1298
    .local v4, "param":[Ljava/lang/Object;
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v5, v2, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->buildDtmfQueueRR(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v5

    .line 1300
    .local v5, "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v6, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->add(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 1301
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v6

    if-ne v6, v3, :cond_0

    .line 1302
    const-string v3, "send start dtmf"

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1305
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

    .line 1306
    invoke-direct {p0, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendDtmfQueueRR(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 1309
    .end local v1    # "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    .end local v2    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v4    # "param":[Ljava/lang/Object;
    .end local v5    # "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    :cond_0
    goto :goto_0

    .line 1310
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DTMF status conflict, want to start DTMF when status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 1311
    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->isStart()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1310
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1314
    :cond_2
    :goto_0
    monitor-exit v0

    .line 1315
    return-void

    .line 1314
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

    .line 1326
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    monitor-enter v0

    .line 1327
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->hasSendChldRequest()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 1328
    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x20

    if-ge v1, v2, :cond_2

    .line 1329
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->isStart()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1330
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 1331
    .local v1, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v1, :cond_0

    .line 1332
    const/16 v2, 0x32

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v2, p1, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v2

    .line 1334
    .local v2, "rr":Lcom/mediatek/ims/ril/RILRequest;
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->stop()V

    .line 1335
    const/4 v3, 0x0

    .line 1336
    .local v3, "param":[Ljava/lang/Object;
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v4, v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->buildDtmfQueueRR(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v4

    .line 1338
    .local v4, "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v5, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->add(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 1339
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v5}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1340
    const-string v5, "send stop dtmf"

    invoke-virtual {p0, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1342
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

    .line 1343
    invoke-direct {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendDtmfQueueRR(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 1346
    .end local v1    # "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    .end local v2    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v3    # "param":[Ljava/lang/Object;
    .end local v4    # "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    :cond_0
    goto :goto_0

    .line 1347
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DTMF status conflict, want to start DTMF when status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 1348
    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->isStart()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1347
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1351
    :cond_2
    :goto_0
    monitor-exit v0

    .line 1352
    return-void

    .line 1351
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

    .line 2273
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 2274
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 2275
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2280
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

    .line 2283
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleChldRelatedRequest(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)V

    .line 2285
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    return-void
.end method

.method public terminate(I)V
    .locals 1
    .param p1, "callId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5035
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->hangup(ILandroid/os/Message;)V

    .line 5036
    return-void
.end method

.method public terminate(II)V
    .locals 2
    .param p1, "callId"    # I
    .param p2, "reason"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5040
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "terminate with reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 5041
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->hangup(IILandroid/os/Message;)V

    .line 5042
    return-void
.end method

.method public toggleRttAudioIndication(IILandroid/os/Message;)V
    .locals 4
    .param p1, "callId"    # I
    .param p2, "enable"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 5277
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 5278
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 5279
    const/16 v1, 0x888

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 5282
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

    .line 5287
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5288
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 5289
    invoke-interface {v2, v3, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->toggleRttAudioIndication(III)V

    goto :goto_0

    .line 5291
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 5292
    invoke-interface {v2, v3, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->toggleRttAudioIndication(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5296
    :goto_0
    goto :goto_1

    .line 5294
    :catch_0
    move-exception v2

    .line 5295
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "toggleRttAudioIndication"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 5298
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public turnOffIms(ILandroid/os/Message;)V
    .locals 0
    .param p1, "phoneid"    # I
    .param p2, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5011
    invoke-virtual {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->turnOffIms(Landroid/os/Message;)V

    .line 5012
    return-void
.end method

.method public turnOffIms(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 1569
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 1570
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 1571
    const/16 v1, 0x815

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1575
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1576
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " switch = OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1575
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1580
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1581
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 1582
    invoke-interface {v2, v4, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setImsEnable(IZ)V

    goto :goto_0

    .line 1584
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 1585
    invoke-interface {v2, v4, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setImsEnable(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1589
    :goto_0
    goto :goto_1

    .line 1587
    :catch_0
    move-exception v2

    .line 1588
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setImsEnable"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1592
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public turnOffRcsUa(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 1915
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 1916
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 1917
    const/16 v1, 0x876

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1921
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1922
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " switch = OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1921
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1926
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0xe

    if-eqz v2, :cond_0

    .line 1927
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v5, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 1930
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1928
    invoke-interface {v2, v5, v4, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setVendorSetting(IILjava/lang/String;)V

    goto :goto_0

    .line 1932
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v5, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 1935
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1933
    invoke-interface {v2, v5, v4, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1939
    :goto_0
    goto :goto_1

    .line 1937
    :catch_0
    move-exception v2

    .line 1938
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setVendorSetting"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1941
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public turnOffVilte(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 1775
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 1776
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 1777
    const/16 v1, 0x818

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1781
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1782
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " switch = OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1781
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1786
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0xc

    if-eqz v2, :cond_0

    .line 1787
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v5, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 1790
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1788
    invoke-interface {v2, v5, v4, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setVendorSetting(IILjava/lang/String;)V

    goto :goto_0

    .line 1792
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v5, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 1795
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1793
    invoke-interface {v2, v5, v4, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1799
    :goto_0
    goto :goto_1

    .line 1797
    :catch_0
    move-exception v2

    .line 1798
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setVendorSetting"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1801
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public turnOffViwifi(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 1845
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 1846
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 1847
    const/16 v1, 0x819

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1851
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1852
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " switch = OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1851
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1856
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0xd

    if-eqz v2, :cond_0

    .line 1857
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v5, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 1860
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1858
    invoke-interface {v2, v5, v4, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setVendorSetting(IILjava/lang/String;)V

    goto :goto_0

    .line 1862
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v5, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 1865
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1863
    invoke-interface {v2, v5, v4, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1869
    :goto_0
    goto :goto_1

    .line 1867
    :catch_0
    move-exception v2

    .line 1868
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setVendorSetting"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1871
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public turnOffVolte(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 1635
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 1636
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 1637
    const/16 v1, 0x816

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1641
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1642
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " switch = OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1641
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1646
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0xb

    if-eqz v2, :cond_0

    .line 1647
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v5, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 1650
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1648
    invoke-interface {v2, v5, v4, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setVendorSetting(IILjava/lang/String;)V

    goto :goto_0

    .line 1652
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v5, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 1655
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1653
    invoke-interface {v2, v5, v4, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1659
    :goto_0
    goto :goto_1

    .line 1657
    :catch_0
    move-exception v2

    .line 1658
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setVendorSetting"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1661
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public turnOffWfc(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 1705
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 1706
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 1707
    const/16 v1, 0x817

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1711
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1712
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " switch = OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1711
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1716
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x10

    if-eqz v2, :cond_0

    .line 1717
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v5, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 1720
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1718
    invoke-interface {v2, v5, v4, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setVendorSetting(IILjava/lang/String;)V

    goto :goto_0

    .line 1722
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v5, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 1725
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1723
    invoke-interface {v2, v5, v4, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1729
    :goto_0
    goto :goto_1

    .line 1727
    :catch_0
    move-exception v2

    .line 1728
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setVendorSetting"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1731
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public turnOnIms(ILandroid/os/Message;)V
    .locals 0
    .param p1, "phoneid"    # I
    .param p2, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5017
    invoke-virtual {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->turnOnIms(Landroid/os/Message;)V

    .line 5018
    return-void
.end method

.method public turnOnIms(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 1538
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 1539
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 1540
    const/16 v1, 0x815

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1544
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1545
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " switch = ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1544
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1549
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 1550
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 1551
    invoke-interface {v2, v4, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setImsEnable(IZ)V

    goto :goto_0

    .line 1553
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 1554
    invoke-interface {v2, v4, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setImsEnable(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1558
    :goto_0
    goto :goto_1

    .line 1556
    :catch_0
    move-exception v2

    .line 1557
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setImsEnable"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1560
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public turnOnRcsUa(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 1880
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 1881
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 1882
    const/16 v1, 0x876

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1886
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1887
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " switch = ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1886
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1891
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0xe

    if-eqz v2, :cond_0

    .line 1892
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v5, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 1895
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1893
    invoke-interface {v2, v5, v4, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setVendorSetting(IILjava/lang/String;)V

    goto :goto_0

    .line 1897
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v5, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 1900
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1898
    invoke-interface {v2, v5, v4, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1904
    :goto_0
    goto :goto_1

    .line 1902
    :catch_0
    move-exception v2

    .line 1903
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setVendorSetting"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1906
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public turnOnVilte(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 1740
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 1741
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 1742
    const/16 v1, 0x818

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1746
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1747
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " switch = ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1746
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1751
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0xc

    if-eqz v2, :cond_0

    .line 1752
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v5, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 1755
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1753
    invoke-interface {v2, v5, v4, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setVendorSetting(IILjava/lang/String;)V

    goto :goto_0

    .line 1757
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v5, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 1760
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1758
    invoke-interface {v2, v5, v4, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1764
    :goto_0
    goto :goto_1

    .line 1762
    :catch_0
    move-exception v2

    .line 1763
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setVendorSetting"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1766
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public turnOnViwifi(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 1810
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 1811
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 1812
    const/16 v1, 0x819

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1816
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1817
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " switch = ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1816
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1821
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0xd

    if-eqz v2, :cond_0

    .line 1822
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v5, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 1825
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1823
    invoke-interface {v2, v5, v4, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setVendorSetting(IILjava/lang/String;)V

    goto :goto_0

    .line 1827
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v5, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 1830
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1828
    invoke-interface {v2, v5, v4, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1834
    :goto_0
    goto :goto_1

    .line 1832
    :catch_0
    move-exception v2

    .line 1833
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setVendorSetting"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1836
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public turnOnVolte(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 1600
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 1601
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 1602
    const/16 v1, 0x816

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1606
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1607
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " switch = ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1606
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1611
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0xb

    if-eqz v2, :cond_0

    .line 1612
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v5, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 1615
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1613
    invoke-interface {v2, v5, v4, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setVendorSetting(IILjava/lang/String;)V

    goto :goto_0

    .line 1617
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v5, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 1620
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1618
    invoke-interface {v2, v5, v4, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1624
    :goto_0
    goto :goto_1

    .line 1622
    :catch_0
    move-exception v2

    .line 1623
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setVendorSetting"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1626
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public turnOnWfc(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 1670
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 1671
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 1672
    const/16 v1, 0x817

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1676
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1677
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " switch = ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1676
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1681
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x10

    if-eqz v2, :cond_0

    .line 1682
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v5, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 1685
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1683
    invoke-interface {v2, v5, v4, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setVendorSetting(IILjava/lang/String;)V

    goto :goto_0

    .line 1687
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v5, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 1690
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1688
    invoke-interface {v2, v5, v4, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1694
    :goto_0
    goto :goto_1

    .line 1692
    :catch_0
    move-exception v2

    .line 1693
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setVendorSetting"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1696
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public unattendedCallTransfer(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 1166
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->internalImsEct(Ljava/lang/String;ILandroid/os/Message;)V

    .line 1167
    return-void
.end method

.method unsljLog(I)V
    .locals 2
    .param p1, "response"    # I

    .line 4928
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

    .line 4929
    return-void
.end method

.method unsljLogMore(ILjava/lang/String;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "more"    # Ljava/lang/String;

    .line 4932
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

    .line 4933
    return-void
.end method

.method unsljLogRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 4936
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

    .line 4937
    return-void
.end method

.method unsljLogvRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 4940
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

    .line 4941
    return-void
.end method

.method public videoRingtoneEventRequest(Ljava/util/ArrayList;Landroid/os/Message;)V
    .locals 4
    .param p2, "result"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 5325
    .local p1, "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 5327
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 5328
    const/16 v1, 0x88b

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 5332
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

    .line 5336
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5337
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 5338
    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->videoRingtoneEventRequest(ILjava/util/ArrayList;)V

    goto :goto_0

    .line 5340
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 5341
    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx;->videoRingtoneEventRequest(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5345
    :goto_0
    goto :goto_1

    .line 5343
    :catch_0
    move-exception v2

    .line 5344
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "videoRingtoneEventRequest"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 5347
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 7
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "response"    # Landroid/os/Message;

    .line 2516
    invoke-direct {p0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 2517
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_4

    .line 2518
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "> "

    if-nez v1, :cond_2

    .line 2519
    const/16 v1, 0x833

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2521
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v3, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 2522
    .local v3, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/hardware/radio/V1_0/Dial;->address:Ljava/lang/String;

    .line 2523
    iput p2, v3, Landroid/hardware/radio/V1_0/Dial;->clir:I

    .line 2524
    if-eqz p3, :cond_0

    .line 2525
    new-instance v4, Landroid/hardware/radio/V1_0/UusInfo;

    invoke-direct {v4}, Landroid/hardware/radio/V1_0/UusInfo;-><init>()V

    .line 2526
    .local v4, "info":Landroid/hardware/radio/V1_0/UusInfo;
    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v5

    iput v5, v4, Landroid/hardware/radio/V1_0/UusInfo;->uusType:I

    .line 2527
    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v5

    iput v5, v4, Landroid/hardware/radio/V1_0/UusInfo;->uusDcs:I

    .line 2528
    new-instance v5, Ljava/lang/String;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v4, Landroid/hardware/radio/V1_0/UusInfo;->uusData:Ljava/lang/String;

    .line 2529
    iget-object v5, v3, Landroid/hardware/radio/V1_0/Dial;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2533
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

    .line 2536
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2537
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2538
    invoke-interface {v2, v4, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->vtDial(ILandroid/hardware/radio/V1_0/Dial;)V

    goto :goto_0

    .line 2540
    :cond_1
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2541
    invoke-interface {v2, v4, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->vtDial(ILandroid/hardware/radio/V1_0/Dial;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2545
    :goto_0
    goto :goto_1

    .line 2543
    :catch_0
    move-exception v2

    .line 2544
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "vtDial"

    invoke-direct {p0, v1, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2546
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :goto_1
    goto :goto_3

    .line 2548
    :cond_2
    const/16 v1, 0x82c

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2553
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

    .line 2556
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2557
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2558
    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->vtDialWithSipUri(ILjava/lang/String;)V

    goto :goto_2

    .line 2560
    :cond_3
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2561
    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->vtDialWithSipUri(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2566
    :goto_2
    goto :goto_3

    .line 2564
    :catch_1
    move-exception v2

    .line 2565
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v3, "vtDialWithSipUri"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(Lcom/mediatek/ims/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2569
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_3
    return-void
.end method

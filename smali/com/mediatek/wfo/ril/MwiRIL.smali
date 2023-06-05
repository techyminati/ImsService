.class public final Lcom/mediatek/wfo/ril/MwiRIL;
.super Lcom/mediatek/wfo/ril/MwiBaseCommands;
.source "MwiRIL.java"

# interfaces
.implements Lcom/mediatek/wfo/ril/MwiCommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wfo/ril/MwiRIL$RadioProxyDeathRecipient;,
        Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;,
        Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;
    }
.end annotation


# static fields
.field private static final DEFAULT_ACK_WAKE_LOCK_TIMEOUT_MS:I = 0xc8

.field private static final DEFAULT_WAKE_LOCK_TIMEOUT_MS:I = 0xea60

.field static final EVENT_ACK_WAKE_LOCK_TIMEOUT:I = 0x4

.field static final EVENT_BLOCKING_RESPONSE_TIMEOUT:I = 0x5

.field static final EVENT_RADIO_PROXY_DEAD:I = 0x6

.field static final EVENT_SEND:I = 0x1

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x2

.field public static final FOR_ACK_WAKELOCK:I = 0x1

.field public static final FOR_WAKELOCK:I = 0x0

.field static final IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

.field public static final INVALID_WAKELOCK:I = -0x1

.field static final IRADIO_GET_SERVICE_DELAY_MILLIS:I = 0xfa0

.field static final MWIRIL_LOGD:Z = true

.field static final MWIRIL_LOGV:Z = false

.field static final MWIRIL_LOG_TAG:Ljava/lang/String; = "MwiRIL"

.field static final MWI_RILA_LOGD:Z = true

.field static final PROPERTY_WAKE_LOCK_TIMEOUT:Ljava/lang/String; = "ro.ril.wake_lock_timeout"

.field static final RILJ_ACK_WAKELOCK_NAME:Ljava/lang/String; = "MWIRIL_ACK_WL"

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

.field mIsMobileNetworkSupported:Z

.field mLastNITZTimeInfo:[Ljava/lang/Object;

.field private mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

.field final mPhoneId:Ljava/lang/Integer;

.field private mRILDefaultWorkSource:Landroid/os/WorkSource;

.field mRadioIndication:Lcom/mediatek/wfo/ril/MwiRadioIndication;

.field volatile mRadioProxy:Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

.field final mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

.field final mRadioProxyDeathRecipient:Lcom/mediatek/wfo/ril/MwiRIL$RadioProxyDeathRecipient;

.field mRadioResponse:Lcom/mediatek/wfo/ril/MwiRadioResponse;

.field mRequestList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/mediatek/wfo/ril/RILRequest;",
            ">;"
        }
    .end annotation
.end field

.field final mRilHandler:Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;

.field mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWakeLockCount:I

.field final mWakeLockTimeout:I

.field volatile mWlSequenceNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 280
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/mediatek/wfo/ril/MwiRIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    .line 321
    const-string v0, "imsSlot1"

    const-string v1, "imsSlot2"

    const-string v2, "imsSlot3"

    const-string v3, "imsSlot4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/wfo/ril/MwiRIL;->IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/os/Looper;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instanceId"    # I
    .param p3, "looper"    # Landroid/os/Looper;

    .line 534
    invoke-direct {p0, p1, p2}, Lcom/mediatek/wfo/ril/MwiBaseCommands;-><init>(Landroid/content/Context;I)V

    .line 264
    new-instance v0, Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-direct {v0}, Lcom/android/internal/telephony/ClientWakelockTracker;-><init>()V

    iput-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    .line 277
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWlSequenceNum:I

    .line 278
    iput v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mAckWlSequenceNum:I

    .line 279
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRequestList:Landroid/util/SparseArray;

    .line 286
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 297
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    .line 307
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxy:Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    .line 309
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 536
    iput-object p1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mContext:Landroid/content/Context;

    .line 537
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mPhoneId:Ljava/lang/Integer;

    .line 539
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 541
    .local v2, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mIsMobileNetworkSupported:Z

    .line 543
    new-instance v3, Lcom/mediatek/wfo/ril/MwiRadioResponse;

    invoke-direct {v3, p0, p2}, Lcom/mediatek/wfo/ril/MwiRadioResponse;-><init>(Lcom/mediatek/wfo/ril/MwiRIL;I)V

    iput-object v3, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioResponse:Lcom/mediatek/wfo/ril/MwiRadioResponse;

    .line 544
    new-instance v3, Lcom/mediatek/wfo/ril/MwiRadioIndication;

    invoke-direct {v3, p0, p2}, Lcom/mediatek/wfo/ril/MwiRadioIndication;-><init>(Lcom/mediatek/wfo/ril/MwiRIL;I)V

    iput-object v3, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioIndication:Lcom/mediatek/wfo/ril/MwiRadioIndication;

    .line 546
    new-instance v3, Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;

    invoke-direct {v3, p0, p3}, Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;-><init>(Lcom/mediatek/wfo/ril/MwiRIL;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRilHandler:Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;

    .line 547
    new-instance v3, Lcom/mediatek/wfo/ril/MwiRIL$RadioProxyDeathRecipient;

    invoke-direct {v3, p0}, Lcom/mediatek/wfo/ril/MwiRIL$RadioProxyDeathRecipient;-><init>(Lcom/mediatek/wfo/ril/MwiRIL;)V

    iput-object v3, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxyDeathRecipient:Lcom/mediatek/wfo/ril/MwiRIL$RadioProxyDeathRecipient;

    .line 548
    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 549
    .local v3, "pm":Landroid/os/PowerManager;
    const/4 v4, 0x1

    const-string v5, "MwiRIL"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 550
    iget-object v5, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 551
    const-string v5, "MWIRIL_ACK_WL"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 552
    iget-object v5, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 553
    const-string v5, "ro.ril.wake_lock_timeout"

    const v6, 0xea60

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLockTimeout:I

    .line 555
    const/16 v6, 0xc8

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mAckWakeLockTimeout:I

    .line 557
    iput v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLockCount:I

    .line 558
    new-instance v5, Landroid/os/WorkSource;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 559
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    iput-object v5, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 563
    invoke-direct {p0, v1}, Lcom/mediatek/wfo/ril/MwiRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v1

    .line 565
    .local v1, "proxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MwiRIL: proxy = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_0

    move v0, v4

    :cond_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 567
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/wfo/ril/MwiRIL;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/ril/MwiRIL;
    .param p1, "x1"    # I

    .line 242
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/ril/MwiRIL;->clearWakeLock(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/wfo/ril/MwiRIL;I)Lcom/mediatek/wfo/ril/RILRequest;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/ril/MwiRIL;
    .param p1, "x1"    # I

    .line 242
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/ril/MwiRIL;->findAndRemoveRequestFromList(I)Lcom/mediatek/wfo/ril/RILRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/wfo/ril/RILRequest;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/ril/RILRequest;

    .line 242
    invoke-static {p0}, Lcom/mediatek/wfo/ril/MwiRIL;->getResponseForTimedOutRILRequest(Lcom/mediatek/wfo/ril/RILRequest;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/wfo/ril/MwiRIL;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/ril/MwiRIL;

    .line 242
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/wfo/ril/MwiRIL;Lcom/mediatek/wfo/ril/RILRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wfo/ril/MwiRIL;
    .param p1, "x1"    # Lcom/mediatek/wfo/ril/RILRequest;

    .line 242
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/ril/MwiRIL;->decrementWakeLock(Lcom/mediatek/wfo/ril/RILRequest;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/wfo/ril/MwiRIL;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wfo/ril/MwiRIL;

    .line 242
    invoke-direct {p0}, Lcom/mediatek/wfo/ril/MwiRIL;->resetProxyAndRequestList()V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/wfo/ril/MwiRIL;Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/ril/MwiRIL;
    .param p1, "x1"    # Landroid/os/Message;

    .line 242
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/ril/MwiRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    return-object v0
.end method

.method private acquireWakeLock(Lcom/mediatek/wfo/ril/RILRequest;I)V
    .locals 7
    .param p1, "rr"    # Lcom/mediatek/wfo/ril/RILRequest;
    .param p2, "wakeLockType"    # I

    .line 1067
    monitor-enter p1

    .line 1068
    :try_start_0
    iget v0, p1, Lcom/mediatek/wfo/ril/RILRequest;->mWakeLockType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1069
    const-string v0, "MwiRIL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to aquire wakelock for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mediatek/wfo/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    monitor-exit p1

    return-void

    .line 1073
    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v0, :cond_1

    .line 1109
    const-string v0, "MwiRIL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Acquiring Invalid Wakelock type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    monitor-exit p1

    return-void

    .line 1099
    :cond_1
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1100
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1101
    iget v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mAckWlSequenceNum:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mAckWlSequenceNum:I

    .line 1103
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRilHandler:Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1104
    .local v0, "msg":Landroid/os/Message;
    iget v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mAckWlSequenceNum:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 1105
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRilHandler:Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;

    iget v3, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mAckWakeLockTimeout:I

    int-to-long v3, v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1106
    nop

    .end local v0    # "msg":Landroid/os/Message;
    monitor-exit v1

    .line 1107
    goto :goto_1

    .line 1106
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/mediatek/wfo/ril/MwiRIL;
    .end local p1    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    .end local p2    # "wakeLockType":I
    :try_start_2
    throw v0

    .line 1075
    .restart local p0    # "this":Lcom/mediatek/wfo/ril/MwiRIL;
    .restart local p1    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    .restart local p2    # "wakeLockType":I
    :cond_2
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1076
    :try_start_3
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1077
    iget v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLockCount:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLockCount:I

    .line 1078
    iget v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWlSequenceNum:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWlSequenceNum:I

    .line 1080
    iget-object v0, p1, Lcom/mediatek/wfo/ril/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->getWorkSourceClientId(Landroid/os/WorkSource;)Ljava/lang/String;

    move-result-object v0

    .line 1081
    .local v0, "clientId":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/ClientWakelockTracker;->isClientActive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1082
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    if-eqz v2, :cond_3

    .line 1083
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    iget-object v3, p1, Lcom/mediatek/wfo/ril/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    goto :goto_0

    .line 1085
    :cond_3
    iget-object v2, p1, Lcom/mediatek/wfo/ril/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    iput-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 1087
    :goto_0
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 1090
    :cond_4
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    iget-object v3, p1, Lcom/mediatek/wfo/ril/RILRequest;->mClientId:Ljava/lang/String;

    iget v4, p1, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    iget v5, p1, Lcom/mediatek/wfo/ril/RILRequest;->mSerial:I

    iget v6, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLockCount:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/ClientWakelockTracker;->startTracking(Ljava/lang/String;III)V

    .line 1093
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRilHandler:Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1094
    .local v2, "msg":Landroid/os/Message;
    iget v3, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWlSequenceNum:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 1095
    iget-object v3, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRilHandler:Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;

    iget v4, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLockTimeout:I

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1096
    nop

    .end local v0    # "clientId":Ljava/lang/String;
    .end local v2    # "msg":Landroid/os/Message;
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1097
    nop

    .line 1112
    :goto_1
    :try_start_4
    iput p2, p1, Lcom/mediatek/wfo/ril/RILRequest;->mWakeLockType:I

    .line 1113
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1114
    return-void

    .line 1096
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local p0    # "this":Lcom/mediatek/wfo/ril/MwiRIL;
    .end local p1    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    .end local p2    # "wakeLockType":I
    :try_start_6
    throw v0

    .line 1113
    .restart local p0    # "this":Lcom/mediatek/wfo/ril/MwiRIL;
    .restart local p1    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    .restart local p2    # "wakeLockType":I
    :catchall_2
    move-exception v0

    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method

.method private addRequest(Lcom/mediatek/wfo/ril/RILRequest;)V
    .locals 3
    .param p1, "rr"    # Lcom/mediatek/wfo/ril/RILRequest;

    .line 570
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->acquireWakeLock(Lcom/mediatek/wfo/ril/RILRequest;I)V

    .line 571
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 572
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/mediatek/wfo/ril/RILRequest;->mStartTimeMs:J

    .line 573
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRequestList:Landroid/util/SparseArray;

    iget v2, p1, Lcom/mediatek/wfo/ril/RILRequest;->mSerial:I

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 574
    monitor-exit v0

    .line 575
    return-void

    .line 574
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private addToRilHistogram(Lcom/mediatek/wfo/ril/RILRequest;)V
    .locals 9
    .param p1, "rr"    # Lcom/mediatek/wfo/ril/RILRequest;

    .line 1216
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1217
    .local v0, "endTime":J
    iget-wide v2, p1, Lcom/mediatek/wfo/ril/RILRequest;->mStartTimeMs:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    .line 1219
    .local v2, "totalTime":I
    sget-object v3, Lcom/mediatek/wfo/ril/MwiRIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1220
    :try_start_0
    sget-object v4, Lcom/mediatek/wfo/ril/MwiRIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    iget v5, p1, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyHistogram;

    .line 1221
    .local v4, "entry":Landroid/telephony/TelephonyHistogram;
    if-nez v4, :cond_0

    .line 1223
    new-instance v5, Landroid/telephony/TelephonyHistogram;

    const/4 v6, 0x1

    iget v7, p1, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    const/4 v8, 0x5

    invoke-direct {v5, v6, v7, v8}, Landroid/telephony/TelephonyHistogram;-><init>(III)V

    move-object v4, v5

    .line 1225
    sget-object v5, Lcom/mediatek/wfo/ril/MwiRIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    iget v6, p1, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1227
    :cond_0
    invoke-virtual {v4, v2}, Landroid/telephony/TelephonyHistogram;->addTimeTaken(I)V

    .line 1228
    .end local v4    # "entry":Landroid/telephony/TelephonyHistogram;
    monitor-exit v3

    .line 1229
    return-void

    .line 1228
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

    .line 1182
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1183
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1184
    .local v1, "count":I
    if-eqz p2, :cond_0

    .line 1185
    const-string v2, "MwiRIL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearRequestList  mWakeLockCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLockCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mRequestList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1190
    iget-object v3, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/wfo/ril/RILRequest;

    .line 1191
    .local v3, "rr":Lcom/mediatek/wfo/ril/RILRequest;
    if-eqz p2, :cond_1

    .line 1192
    const-string v4, "MwiRIL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/mediatek/wfo/ril/RILRequest;->mSerial:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    .line 1193
    invoke-static {v6}, Lcom/mediatek/wfo/ril/MwiRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1192
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/mediatek/wfo/ril/RILRequest;->onError(ILjava/lang/Object;)V

    .line 1196
    invoke-direct {p0, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->decrementWakeLock(Lcom/mediatek/wfo/ril/RILRequest;)V

    .line 1197
    invoke-virtual {v3}, Lcom/mediatek/wfo/ril/RILRequest;->release()V

    .line 1189
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1199
    .end local v2    # "i":I
    .end local v3    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    :cond_2
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 1200
    .end local v1    # "count":I
    monitor-exit v0

    .line 1201
    return-void

    .line 1200
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

    .line 1155
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 1156
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 1157
    :try_start_0
    iget v3, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLockCount:I

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v2

    return v1

    .line 1158
    :cond_0
    const-string v3, "MwiRIL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NOTE: mWakeLockCount is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLockCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "at time of clearing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    iput v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLockCount:I

    .line 1161
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1162
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ClientWakelockTracker;->stopTrackingAll()V

    .line 1163
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 1164
    monitor-exit v2

    return v0

    .line 1165
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1167
    :cond_1
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 1168
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_2

    monitor-exit v2

    return v1

    .line 1169
    :cond_2
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1170
    monitor-exit v2

    return v0

    .line 1171
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method private decrementWakeLock(Lcom/mediatek/wfo/ril/RILRequest;)V
    .locals 9
    .param p1, "rr"    # Lcom/mediatek/wfo/ril/RILRequest;

    .line 1117
    monitor-enter p1

    .line 1118
    :try_start_0
    iget v0, p1, Lcom/mediatek/wfo/ril/RILRequest;->mWakeLockType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_0

    .line 1148
    const-string v0, "MwiRIL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Decrementing Invalid Wakelock type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/mediatek/wfo/ril/RILRequest;->mWakeLockType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1144
    :cond_0
    goto :goto_2

    .line 1120
    :cond_1
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1121
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    iget-object v4, p1, Lcom/mediatek/wfo/ril/RILRequest;->mClientId:Ljava/lang/String;

    iget v5, p1, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    iget v6, p1, Lcom/mediatek/wfo/ril/RILRequest;->mSerial:I

    .line 1123
    iget v7, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLockCount:I

    const/4 v8, 0x0

    if-le v7, v2, :cond_2

    iget v7, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLockCount:I

    sub-int/2addr v7, v2

    goto :goto_0

    :cond_2
    move v7, v8

    .line 1121
    :goto_0
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/internal/telephony/ClientWakelockTracker;->stopTracking(Ljava/lang/String;III)V

    .line 1124
    iget-object v3, p1, Lcom/mediatek/wfo/ril/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->getWorkSourceClientId(Landroid/os/WorkSource;)Ljava/lang/String;

    move-result-object v3

    .line 1125
    .local v3, "clientId":Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/ClientWakelockTracker;->isClientActive(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    if-eqz v4, :cond_4

    .line 1127
    iget-object v4, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    iget-object v5, p1, Lcom/mediatek/wfo/ril/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v4, v5}, Landroid/os/WorkSource;->remove(Landroid/os/WorkSource;)Z

    .line 1128
    iget-object v4, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v4}, Landroid/os/WorkSource;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 1129
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 1131
    :cond_3
    iget-object v4, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v5, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 1134
    :cond_4
    iget v4, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLockCount:I

    if-le v4, v2, :cond_5

    .line 1135
    iget v4, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLockCount:I

    sub-int/2addr v4, v2

    iput v4, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLockCount:I

    goto :goto_1

    .line 1137
    :cond_5
    iput v8, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLockCount:I

    .line 1138
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1140
    .end local v3    # "clientId":Ljava/lang/String;
    :goto_1
    monitor-exit v0

    .line 1141
    goto :goto_2

    .line 1140
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/mediatek/wfo/ril/MwiRIL;
    .end local p1    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    :try_start_2
    throw v1

    .line 1146
    .restart local p0    # "this":Lcom/mediatek/wfo/ril/MwiRIL;
    .restart local p1    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    :cond_6
    nop

    .line 1150
    :goto_2
    iput v1, p1, Lcom/mediatek/wfo/ril/RILRequest;->mWakeLockType:I

    .line 1151
    monitor-exit p1

    .line 1152
    return-void

    .line 1151
    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private findAndRemoveRequestFromList(I)Lcom/mediatek/wfo/ril/RILRequest;
    .locals 3
    .param p1, "serial"    # I

    .line 1204
    const/4 v0, 0x0

    .line 1205
    .local v0, "rr":Lcom/mediatek/wfo/ril/RILRequest;
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1206
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/wfo/ril/RILRequest;

    move-object v0, v2

    .line 1207
    if-eqz v0, :cond_0

    .line 1208
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1210
    :cond_0
    monitor-exit v1

    .line 1212
    return-object v0

    .line 1210
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

    .line 1042
    if-nez p1, :cond_0

    .line 1043
    iget-object p1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 1046
    :cond_0
    return-object p1
.end method

.method private getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 484
    iget-boolean v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mIsMobileNetworkSupported:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 486
    return-object v1

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxy:Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    if-eqz v0, :cond_1

    .line 490
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxy:Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    return-object v0

    .line 494
    :cond_1
    :try_start_0
    sget-object v0, Lcom/mediatek/wfo/ril/MwiRIL;->IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

    .line 495
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mPhoneId:Ljava/lang/Integer;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    aget-object v0, v0, v2

    .line 494
    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->getService(Ljava/lang/String;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxy:Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    .line 496
    const-string v0, "mRadioProxy getService() done"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLoge(Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxy:Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    if-eqz v0, :cond_3

    .line 498
    const-string v0, "mRadioProxy getService() done 2"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLoge(Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxy:Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxyDeathRecipient:Lcom/mediatek/wfo/ril/MwiRIL$RadioProxyDeathRecipient;

    iget-object v3, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 500
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v3

    .line 499
    invoke-interface {v0, v2, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 501
    const-string v0, "mRadioProxy linkToDeath() done"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLoge(Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxy:Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioResponse:Lcom/mediatek/wfo/ril/MwiRadioResponse;

    iget-object v3, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioIndication:Lcom/mediatek/wfo/ril/MwiRadioIndication;

    invoke-interface {v0, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->setResponseFunctionsMwi(Lvendor/mediatek/hardware/mtkradioex/V1_0/IMwiRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V1_0/IMwiRadioIndication;)V

    .line 504
    const-string v0, "mRadioProxy setResponseFunctionsMwi() done"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLoge(Ljava/lang/String;)V

    goto :goto_1

    .line 507
    :cond_3
    const-string v0, "getRadioProxy: mRadioProxy == null"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLoge(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :goto_1
    goto :goto_2

    .line 509
    :catch_0
    move-exception v0

    .line 510
    .local v0, "e":Ljava/lang/Exception;
    iput-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxy:Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    .line 511
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RadioProxy getService/setResponseFunctions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLoge(Ljava/lang/String;)V

    .line 514
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxy:Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    if-nez v0, :cond_5

    .line 515
    if-eqz p1, :cond_4

    .line 516
    const/4 v0, 0x1

    .line 517
    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 516
    invoke-static {p1, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 518
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 522
    :cond_4
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRilHandler:Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 524
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 523
    invoke-virtual {v0, v1, v2}, Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xfa0

    .line 522
    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 528
    :cond_5
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxy:Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    return-object v0
.end method

.method private static getResponseForTimedOutRILRequest(Lcom/mediatek/wfo/ril/RILRequest;)Ljava/lang/Object;
    .locals 11
    .param p0, "rr"    # Lcom/mediatek/wfo/ril/RILRequest;

    .line 441
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 443
    :cond_0
    const/4 v0, 0x0

    .line 444
    .local v0, "timeoutResponse":Ljava/lang/Object;
    iget v1, p0, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    const/16 v2, 0x87

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 446
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

    .line 450
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

    .line 338
    sget-object v0, Lcom/mediatek/wfo/ril/MwiRIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    monitor-enter v0

    .line 339
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/mediatek/wfo/ril/MwiRIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 340
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/mediatek/wfo/ril/MwiRIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 341
    new-instance v3, Landroid/telephony/TelephonyHistogram;

    sget-object v4, Lcom/mediatek/wfo/ril/MwiRIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyHistogram;

    invoke-direct {v3, v4}, Landroid/telephony/TelephonyHistogram;-><init>(Landroid/telephony/TelephonyHistogram;)V

    .line 342
    .local v3, "entry":Landroid/telephony/TelephonyHistogram;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    nop

    .end local v3    # "entry":Landroid/telephony/TelephonyHistogram;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 344
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    .line 345
    return-object v1

    .line 344
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

    .line 1050
    if-eqz p1, :cond_0

    .line 1051
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

    .line 1054
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleRadioProxyExceptionForRR(Lcom/mediatek/wfo/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "rr"    # Lcom/mediatek/wfo/ril/RILRequest;
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLoge(Ljava/lang/String;)V

    .line 585
    invoke-direct {p0}, Lcom/mediatek/wfo/ril/MwiRIL;->resetProxyAndRequestList()V

    .line 589
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRilHandler:Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;

    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 591
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 590
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 589
    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 593
    return-void
.end method

.method private obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/wfo/ril/RILRequest;
    .locals 1
    .param p1, "request"    # I
    .param p2, "result"    # Landroid/os/Message;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .line 578
    invoke-static {p1, p2, p3}, Lcom/mediatek/wfo/ril/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/wfo/ril/RILRequest;

    move-result-object v0

    .line 579
    .local v0, "rr":Lcom/mediatek/wfo/ril/RILRequest;
    invoke-direct {p0, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->addRequest(Lcom/mediatek/wfo/ril/RILRequest;)V

    .line 580
    return-object v0
.end method

.method static requestToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .line 1261
    const/16 v0, 0x853

    if-eq p0, v0, :cond_3

    const/16 v0, 0x854

    if-eq p0, v0, :cond_2

    const/16 v0, 0x883

    if-eq p0, v0, :cond_1

    const/16 v0, 0x88b

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 1283
    const-string v0, "<unknown request>"

    return-object v0

    .line 1273
    :pswitch_0
    const-string v0, "MwiRILConstants.RIL_REQUEST_SET_EMERGENCY_ADDRESS_ID"

    return-object v0

    .line 1271
    :pswitch_1
    const-string v0, "MwiRILConstants.RIL_REQUEST_SET_GEO_LOCATION"

    return-object v0

    .line 1269
    :pswitch_2
    const-string v0, "MwiRILConstants.RIL_REQUEST_SET_WIFI_IP_ADDRESS"

    return-object v0

    .line 1267
    :pswitch_3
    const-string v0, "MwiRILConstants.RIL_REQUEST_SET_WIFI_SIGNAL_LEVEL"

    return-object v0

    .line 1265
    :pswitch_4
    const-string v0, "MwiRILConstants.RIL_REQUEST_SET_WIFI_ASSOCIATED"

    return-object v0

    .line 1263
    :pswitch_5
    const-string v0, "MwiRILConstants.RIL_REQUEST_SET_WIFI_ENABLED"

    return-object v0

    .line 1282
    :cond_0
    const-string v0, "MwiRILConstants.RIL_REQUEST_SET_WFC_CONFIG"

    return-object v0

    .line 1280
    :cond_1
    const-string v0, "MwiRILConstants.RIL_REQUEST_NOTIFY_EPDG_SCREEN_STATE"

    return-object v0

    .line 1277
    :cond_2
    const-string v0, "MwiRILConstants.RIL_REQUEST_SET_WIFI_PING_RESULT"

    return-object v0

    .line 1275
    :cond_3
    const-string v0, "MwiRILConstants.RIL_REQUEST_SET_NATT_KEEPALIVE_STATUS"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x844
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private resetProxyAndRequestList()V
    .locals 2

    .line 467
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxy:Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    .line 470
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 474
    invoke-static {}, Lcom/mediatek/wfo/ril/RILRequest;->resetSerial()V

    .line 476
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mediatek/wfo/ril/MwiRIL;->clearRequestList(IZ)V

    .line 481
    return-void
.end method

.method static responseToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .line 1233
    const/16 v0, 0xc37

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 1256
    const-string v0, "<unknown response>"

    return-object v0

    .line 1253
    :pswitch_0
    const-string v0, "MwiRILConstants.RIL_UNSOL_WIFI_PDN_OOS"

    return-object v0

    .line 1251
    :pswitch_1
    const-string v0, "MwiRILConstants.RIL_UNSOL_WIFI_PING_REQUEST"

    return-object v0

    .line 1249
    :pswitch_2
    const-string v0, "MwiRILConstants.RIL_UNSOL_NATT_KEEP_ALIVE_CHANGED"

    return-object v0

    .line 1247
    :pswitch_3
    const-string v0, "MwiRILConstants.RIL_UNSOL_WFC_PDN_STATE"

    return-object v0

    .line 1245
    :pswitch_4
    const-string v0, "MwiRILConstants.RIL_UNSOL_REQUEST_GEO_LOCATION"

    return-object v0

    .line 1243
    :pswitch_5
    const-string v0, "MwiRILConstants.RIL_UNSOL_WIFI_PDN_ERROR"

    return-object v0

    .line 1241
    :pswitch_6
    const-string v0, "MwiRILConstants.RIL_UNSOL_WIFI_RSSI_MONITORING_CONFIG"

    return-object v0

    .line 1239
    :pswitch_7
    const-string v0, "MwiRILConstants.RIL_UNSOL_ACTIVE_WIFI_PDN_COUNT"

    return-object v0

    .line 1237
    :pswitch_8
    const-string v0, "MwiRILConstants.RIL_UNSOL_MOBILE_WIFI_HANDOVER"

    return-object v0

    .line 1235
    :pswitch_9
    const-string v0, "MwiRILConstants.RIL_UNSOL_MOBILE_WIFI_ROVEOUT"

    return-object v0

    .line 1255
    :cond_0
    const-string v0, "MwiRILConstants.RIL_UNSOL_WIFI_LOCK"

    return-object v0

    :pswitch_data_0
    .packed-switch 0xc03
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc0e
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static retToString(ILjava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p0, "req"    # I
    .param p1, "ret"    # Ljava/lang/Object;

    .line 1288
    if-nez p1, :cond_0

    const-string v0, ""

    return-object v0

    .line 1293
    :cond_0
    instance-of v0, p1, [I

    const-string v1, ", "

    const-string v2, "}"

    const-string v3, "{"

    if-eqz v0, :cond_2

    .line 1294
    move-object v0, p1

    check-cast v0, [I

    .line 1295
    .local v0, "intArray":[I
    array-length v4, v0

    .line 1296
    .local v4, "length":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 1297
    .local v3, "sb":Ljava/lang/StringBuilder;
    if-lez v4, :cond_1

    .line 1298
    const/4 v5, 0x0

    .line 1299
    .local v5, "i":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    aget v5, v0, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1300
    :goto_0
    if-ge v6, v4, :cond_1

    .line 1301
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    aget v6, v0, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v6, v5

    goto :goto_0

    .line 1304
    .end local v5    # "i":I
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1305
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1306
    .local v0, "s":Ljava/lang/String;
    goto :goto_2

    .end local v0    # "s":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "length":I
    :cond_2
    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1307
    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    .line 1308
    .local v0, "strings":[Ljava/lang/String;
    array-length v4, v0

    .line 1309
    .restart local v4    # "length":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 1310
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    if-lez v4, :cond_3

    .line 1311
    const/4 v5, 0x0

    .line 1312
    .restart local v5    # "i":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    aget-object v5, v0, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1313
    :goto_1
    if-ge v6, v4, :cond_3

    .line 1314
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    aget-object v6, v0, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v5

    goto :goto_1

    .line 1317
    .end local v5    # "i":I
    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1318
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1319
    .local v0, "s":Ljava/lang/String;
    goto :goto_2

    .line 1320
    .end local v0    # "s":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "length":I
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1322
    .restart local v0    # "s":Ljava/lang/String;
    :goto_2
    return-object v0
.end method

.method private sendAck()V
    .locals 5

    .line 1024
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v1, 0x0

    const/16 v2, 0x320

    invoke-static {v2, v1, v0}, Lcom/mediatek/wfo/ril/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/wfo/ril/RILRequest;

    move-result-object v0

    .line 1026
    .local v0, "rr":Lcom/mediatek/wfo/ril/RILRequest;
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->acquireWakeLock(Lcom/mediatek/wfo/ril/RILRequest;I)V

    .line 1027
    invoke-direct {p0, v1}, Lcom/mediatek/wfo/ril/MwiRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v1

    .line 1028
    .local v1, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v1, :cond_0

    .line 1030
    :try_start_0
    invoke-interface {v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->responseAcknowledgementMtk()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1034
    :goto_0
    goto :goto_1

    .line 1031
    :catch_0
    move-exception v2

    .line 1032
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "sendAck"

    invoke-direct {p0, v0, v3, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->handleRadioProxyExceptionForRR(Lcom/mediatek/wfo/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1033
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendAck: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLoge(Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 1036
    :cond_0
    const-string v2, "MwiRIL"

    const-string v3, "Error trying to send ack, radioProxy = null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    :goto_1
    invoke-virtual {v0}, Lcom/mediatek/wfo/ril/RILRequest;->release()V

    .line 1039
    return-void
.end method


# virtual methods
.method protected convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 602
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public notifyEPDGScreenState(ILandroid/os/Message;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 872
    invoke-direct {p0, p2}, Lcom/mediatek/wfo/ril/MwiRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 873
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 874
    const/16 v1, 0x883

    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/wfo/ril/RILRequest;

    move-result-object v1

    .line 878
    .local v1, "rr":Lcom/mediatek/wfo/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/wfo/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/wfo/ril/MwiRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 882
    :try_start_0
    iget v2, v1, Lcom/mediatek/wfo/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->notifyEPDGScreenState(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 885
    goto :goto_0

    .line 883
    :catch_0
    move-exception v2

    .line 884
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "notifyEPDGScreenState"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->handleRadioProxyExceptionForRR(Lcom/mediatek/wfo/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 887
    .end local v1    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method processIndication(I)V
    .locals 1
    .param p1, "indicationType"    # I

    .line 897
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 898
    invoke-direct {p0}, Lcom/mediatek/wfo/ril/MwiRIL;->sendAck()V

    .line 899
    const-string v0, "Unsol response received; Sending ack to ril.cpp"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 903
    :cond_0
    return-void
.end method

.method processRequestAck(I)V
    .locals 3
    .param p1, "serial"    # I

    .line 907
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 908
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/wfo/ril/RILRequest;

    .line 909
    .local v1, "rr":Lcom/mediatek/wfo/ril/RILRequest;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 910
    if-nez v1, :cond_0

    .line 911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processRequestAck: Unexpected solicited ack response! serial: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MwiRIL"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 915
    :cond_0
    invoke-direct {p0, v1}, Lcom/mediatek/wfo/ril/MwiRIL;->decrementWakeLock(Lcom/mediatek/wfo/ril/RILRequest;)V

    .line 917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/wfo/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Ack < "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/wfo/ril/MwiRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 920
    :goto_0
    return-void

    .line 909
    .end local v1    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/mediatek/wfo/ril/RILRequest;
    .locals 6
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 930
    iget v0, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->serial:I

    .line 931
    .local v0, "serial":I
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    .line 932
    .local v1, "error":I
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->type:I

    .line 934
    .local v2, "type":I
    const/4 v3, 0x0

    .line 936
    .local v3, "rr":Lcom/mediatek/wfo/ril/RILRequest;
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 937
    iget-object v4, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v4

    .line 938
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/wfo/ril/RILRequest;

    move-object v3, v5

    .line 939
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 940
    if-nez v3, :cond_0

    .line 941
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected solicited ack response! sn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MwiRIL"

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 943
    :cond_0
    invoke-direct {p0, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->decrementWakeLock(Lcom/mediatek/wfo/ril/RILRequest;)V

    .line 945
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/mediatek/wfo/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Ack < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/mediatek/wfo/ril/MwiRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 948
    :goto_0
    return-object v3

    .line 939
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 951
    :cond_1
    invoke-direct {p0, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->findAndRemoveRequestFromList(I)Lcom/mediatek/wfo/ril/RILRequest;

    move-result-object v3

    .line 952
    if-nez v3, :cond_2

    .line 953
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

    const-string v5, "MwiRIL"

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    const/4 v4, 0x0

    return-object v4

    .line 959
    :cond_2
    invoke-direct {p0, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->addToRilHistogram(Lcom/mediatek/wfo/ril/RILRequest;)V

    .line 961
    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 962
    invoke-direct {p0}, Lcom/mediatek/wfo/ril/MwiRIL;->sendAck()V

    .line 964
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Response received for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/mediatek/wfo/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    .line 965
    invoke-static {v5}, Lcom/mediatek/wfo/ril/MwiRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Sending ack to ril.cpp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 964
    invoke-virtual {p0, v4}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 974
    :cond_3
    iget v4, v3, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    .line 979
    nop

    .line 984
    return-object v3
.end method

.method processResponseDone(Lcom/mediatek/wfo/ril/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V
    .locals 7
    .param p1, "rr"    # Lcom/mediatek/wfo/ril/RILRequest;
    .param p2, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p3, "ret"    # Ljava/lang/Object;

    .line 996
    iget v0, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const-string v1, "< "

    if-nez v0, :cond_0

    .line 998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mediatek/wfo/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/mediatek/wfo/ril/MwiRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    .line 999
    invoke-static {v1, p3}, Lcom/mediatek/wfo/ril/MwiRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 998
    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1003
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mediatek/wfo/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/mediatek/wfo/ril/MwiRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 1006
    iget v0, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    invoke-virtual {p1, v0, p3}, Lcom/mediatek/wfo/ril/RILRequest;->onError(ILjava/lang/Object;)V

    .line 1008
    :goto_0
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p1, Lcom/mediatek/wfo/ril/RILRequest;->mSerial:I

    iget v4, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    iget v5, p1, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnRilSolicitedResponse(IIIILjava/lang/Object;)V

    .line 1010
    nop

    .line 1011
    iget v0, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->type:I

    if-nez v0, :cond_1

    .line 1012
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/ril/MwiRIL;->decrementWakeLock(Lcom/mediatek/wfo/ril/RILRequest;)V

    .line 1014
    :cond_1
    invoke-virtual {p1}, Lcom/mediatek/wfo/ril/RILRequest;->release()V

    .line 1016
    return-void
.end method

.method riljLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 1326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1327
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mPhoneId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [SUB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mPhoneId:Ljava/lang/Integer;

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

    .line 1326
    const-string v1, "MwiRIL"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    return-void
.end method

.method riljLoge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 1331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1332
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mPhoneId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [SUB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mPhoneId:Ljava/lang/Integer;

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

    .line 1331
    const-string v1, "MwiRIL"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    return-void
.end method

.method riljLoge(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 1336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1337
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mPhoneId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [SUB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mPhoneId:Ljava/lang/Integer;

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

    .line 1336
    const-string v1, "MwiRIL"

    invoke-static {v1, v0, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1338
    return-void
.end method

.method riljLogv(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 1341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1342
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mPhoneId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [SUB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mPhoneId:Ljava/lang/Integer;

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

    .line 1341
    const-string v1, "MwiRIL"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    return-void
.end method

.method public setEmergencyAddressId(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 803
    invoke-direct {p0, p2}, Lcom/mediatek/wfo/ril/MwiRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 804
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 805
    const/16 v1, 0x849

    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/wfo/ril/RILRequest;

    move-result-object v1

    .line 809
    .local v1, "rr":Lcom/mediatek/wfo/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/wfo/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/wfo/ril/MwiRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " aid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 813
    :try_start_0
    iget v2, v1, Lcom/mediatek/wfo/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->setEmergencyAddressId(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 816
    goto :goto_0

    .line 814
    :catch_0
    move-exception v2

    .line 815
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setEmergencyAddressId"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->handleRadioProxyExceptionForRR(Lcom/mediatek/wfo/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 818
    .end local v1    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setLocationInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 25
    .param p1, "accountId"    # Ljava/lang/String;
    .param p2, "broadcastFlag"    # Ljava/lang/String;
    .param p3, "latitude"    # Ljava/lang/String;
    .param p4, "longitude"    # Ljava/lang/String;
    .param p5, "accuracy"    # Ljava/lang/String;
    .param p6, "method"    # Ljava/lang/String;
    .param p7, "city"    # Ljava/lang/String;
    .param p8, "state"    # Ljava/lang/String;
    .param p9, "zip"    # Ljava/lang/String;
    .param p10, "countryCode"    # Ljava/lang/String;
    .param p11, "ueWlanMac"    # Ljava/lang/String;
    .param p12, "response"    # Landroid/os/Message;

    .line 768
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p12

    invoke-direct {v1, v9}, Lcom/mediatek/wfo/ril/MwiRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v23

    .line 769
    .local v23, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v23, :cond_0

    .line 770
    const/16 v0, 0x848

    iget-object v10, v1, Lcom/mediatek/wfo/ril/MwiRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {v1, v0, v9, v10}, Lcom/mediatek/wfo/ril/MwiRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/wfo/ril/RILRequest;

    move-result-object v15

    .line 774
    .local v15, "rr":Lcom/mediatek/wfo/ril/RILRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/mediatek/wfo/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "> "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v15, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    invoke-static {v10}, Lcom/mediatek/wfo/ril/MwiRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " accountId:"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p1

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " broadcastFlag:"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " accuracy:"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " method:"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " city:"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " state:"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " zip:"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " countryCode:"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 783
    :try_start_0
    iget v11, v15, Lcom/mediatek/wfo/ril/RILRequest;->mSerial:I

    .line 784
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 785
    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 786
    move-object/from16 v10, p3

    invoke-virtual {v1, v10}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 787
    move-object/from16 v2, p4

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 788
    invoke-virtual {v1, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 789
    invoke-virtual {v1, v4}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 790
    invoke-virtual {v1, v5}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 791
    invoke-virtual {v1, v6}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 792
    invoke-virtual {v1, v7}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 793
    invoke-virtual {v1, v8}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 794
    move-object/from16 v2, p11

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 783
    move-object/from16 v10, v23

    move-object v14, v0

    move-object v2, v15

    .end local v15    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    .local v2, "rr":Lcom/mediatek/wfo/ril/RILRequest;
    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v24

    :try_start_1
    invoke-interface/range {v10 .. v22}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->setLocationInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 797
    goto :goto_1

    .line 795
    :catch_0
    move-exception v0

    goto :goto_0

    .end local v2    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    .restart local v15    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    :catch_1
    move-exception v0

    move-object v2, v15

    .line 796
    .end local v15    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    :goto_0
    const-string v10, "setLocationInfo"

    invoke-direct {v1, v2, v10, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->handleRadioProxyExceptionForRR(Lcom/mediatek/wfo/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 799
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    :cond_0
    :goto_1
    return-void
.end method

.method public setNattKeepAliveStatus(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ILandroid/os/Message;)V
    .locals 15
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "srcIp"    # Ljava/lang/String;
    .param p4, "srcPort"    # I
    .param p5, "dstIp"    # Ljava/lang/String;
    .param p6, "dstPort"    # I
    .param p7, "response"    # Landroid/os/Message;

    .line 824
    move-object v1, p0

    move-object/from16 v2, p7

    invoke-direct {p0, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v11

    .line 825
    .local v11, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v11, :cond_0

    .line 826
    const/16 v0, 0x853

    iget-object v3, v1, Lcom/mediatek/wfo/ril/MwiRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, v2, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/wfo/ril/RILRequest;

    move-result-object v12

    .line 830
    .local v12, "rr":Lcom/mediatek/wfo/ril/RILRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/mediatek/wfo/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v12, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/wfo/ril/MwiRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ifName:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p1

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " enable:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p2

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 835
    :try_start_0
    iget v4, v12, Lcom/mediatek/wfo/ril/RILRequest;->mSerial:I

    move-object v3, v11

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    invoke-interface/range {v3 .. v10}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->setNattKeepAliveStatus(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 839
    goto :goto_0

    .line 837
    :catch_0
    move-exception v0

    .line 838
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "setNattKeepAliveStatus"

    invoke-direct {p0, v12, v3, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->handleRadioProxyExceptionForRR(Lcom/mediatek/wfo/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 825
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v12    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    :cond_0
    move-object/from16 v13, p1

    move/from16 v14, p2

    .line 841
    :goto_0
    return-void
.end method

.method public setWfcConfig(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "setting"    # I
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 738
    invoke-direct {p0, p4}, Lcom/mediatek/wfo/ril/MwiRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 739
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 740
    const/16 v1, 0x88b

    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/wfo/ril/RILRequest;

    move-result-object v1

    .line 744
    .local v1, "rr":Lcom/mediatek/wfo/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/wfo/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/wfo/ril/MwiRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " setting:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ifName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 751
    :try_start_0
    iget v2, v1, Lcom/mediatek/wfo/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->setWfcConfig(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    goto :goto_0

    .line 753
    :catch_0
    move-exception v2

    .line 754
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setWfcConfig"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->handleRadioProxyExceptionForRR(Lcom/mediatek/wfo/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 757
    .end local v1    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setWfcConfig_WifiUeMac(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 761
    sget-object v0, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->WFC_SETTING_WIFI_UEMAC:Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    invoke-virtual {v0}, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/mediatek/wfo/ril/MwiRIL;->setWfcConfig(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 762
    return-void
.end method

.method public setWifiAssociated(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 16
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "associated"    # Z
    .param p3, "ssid"    # Ljava/lang/String;
    .param p4, "apMac"    # Ljava/lang/String;
    .param p5, "mtuSize"    # I
    .param p6, "ueMac"    # Ljava/lang/String;
    .param p7, "response"    # Landroid/os/Message;

    .line 665
    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p7

    invoke-direct {v1, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v12

    .line 666
    .local v12, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v12, :cond_1

    .line 667
    const/16 v0, 0x845

    iget-object v4, v1, Lcom/mediatek/wfo/ril/MwiRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {v1, v0, v3, v4}, Lcom/mediatek/wfo/ril/MwiRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/wfo/ril/RILRequest;

    move-result-object v13

    .line 671
    .local v13, "rr":Lcom/mediatek/wfo/ril/RILRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/mediatek/wfo/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v13, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/mediatek/wfo/ril/MwiRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ifName:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p1

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " associated:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mtu: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p5

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 676
    :try_start_0
    iget v5, v13, Lcom/mediatek/wfo/ril/RILRequest;->mSerial:I

    .line 677
    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v7, v0

    .line 676
    move-object v4, v12

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    invoke-interface/range {v4 .. v11}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->setWifiAssociated(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    goto :goto_1

    .line 678
    :catch_0
    move-exception v0

    .line 679
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "setWifiAssociatedWithMtu"

    invoke-direct {v1, v13, v4, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->handleRadioProxyExceptionForRR(Lcom/mediatek/wfo/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 666
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v13    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    :cond_1
    move-object/from16 v14, p1

    move/from16 v15, p5

    .line 682
    :goto_1
    return-void
.end method

.method public setWifiEnabled(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 4
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "isWifiEnabled"    # I
    .param p3, "isFlightModeOn"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 642
    invoke-direct {p0, p4}, Lcom/mediatek/wfo/ril/MwiRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 643
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 644
    const/16 v1, 0x844

    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/wfo/ril/RILRequest;

    move-result-object v1

    .line 648
    .local v1, "rr":Lcom/mediatek/wfo/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/wfo/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/wfo/ril/MwiRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ifName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isWifiEnabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isFlightModeOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 654
    :try_start_0
    iget v2, v1, Lcom/mediatek/wfo/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->setWifiEnabled(ILjava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    goto :goto_0

    .line 656
    :catch_0
    move-exception v2

    .line 657
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setWifiEnabled"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->handleRadioProxyExceptionForRR(Lcom/mediatek/wfo/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 660
    .end local v1    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setWifiIpAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 16
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "ipv4Addr"    # Ljava/lang/String;
    .param p3, "ipv6Addr"    # Ljava/lang/String;
    .param p4, "ipv4PrefixLen"    # I
    .param p5, "ipv6PrefixLen"    # I
    .param p6, "ipv4Gateway"    # Ljava/lang/String;
    .param p7, "ipv6Gateway"    # Ljava/lang/String;
    .param p8, "dnsCount"    # I
    .param p9, "dnsAddresses"    # Ljava/lang/String;
    .param p10, "response"    # Landroid/os/Message;

    .line 708
    move-object/from16 v1, p0

    move-object/from16 v2, p10

    invoke-direct {v1, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v14

    .line 709
    .local v14, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v14, :cond_0

    .line 710
    const/16 v0, 0x847

    iget-object v3, v1, Lcom/mediatek/wfo/ril/MwiRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {v1, v0, v2, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/wfo/ril/RILRequest;

    move-result-object v15

    .line 714
    .local v15, "rr":Lcom/mediatek/wfo/ril/RILRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/mediatek/wfo/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v15, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/wfo/ril/MwiRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ifName:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p1

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ipv4PrefixLen: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p4

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ipv6PrefixLen: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p5

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ipv4Gateway: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p6

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ipv6Gateway: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p7

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " dnsCount: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " dnsAddresses: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p9

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 726
    :try_start_0
    iget v4, v15, Lcom/mediatek/wfo/ril/RILRequest;->mSerial:I

    move-object v3, v14

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v13, p9

    invoke-interface/range {v3 .. v13}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->setWifiIpAddress(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    goto :goto_0

    .line 730
    :catch_0
    move-exception v0

    .line 731
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "setWifiIpAddressWithDns"

    invoke-direct {v1, v15, v3, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->handleRadioProxyExceptionForRR(Lcom/mediatek/wfo/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 734
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v15    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    :cond_0
    :goto_0
    return-void
.end method

.method public setWifiPingResult(IIILandroid/os/Message;)V
    .locals 4
    .param p1, "rat"    # I
    .param p2, "latency"    # I
    .param p3, "pktloss"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 845
    invoke-direct {p0, p4}, Lcom/mediatek/wfo/ril/MwiRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 846
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 847
    const/16 v1, 0x854

    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/wfo/ril/RILRequest;

    move-result-object v1

    .line 851
    .local v1, "rr":Lcom/mediatek/wfo/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/wfo/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/wfo/ril/MwiRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " rat = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " latency = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pktloss = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 857
    :try_start_0
    iget v2, v1, Lcom/mediatek/wfo/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->setWifiPingResult(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 861
    goto :goto_0

    .line 859
    :catch_0
    move-exception v2

    .line 860
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setWifiPingResult"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->handleRadioProxyExceptionForRR(Lcom/mediatek/wfo/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 863
    .end local v1    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setWifiSignalLevel(IILandroid/os/Message;)V
    .locals 4
    .param p1, "rssi"    # I
    .param p2, "snr"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 686
    invoke-direct {p0, p3}, Lcom/mediatek/wfo/ril/MwiRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;

    move-result-object v0

    .line 687
    .local v0, "radioProxy":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
    if-eqz v0, :cond_0

    .line 688
    const/16 v1, 0x846

    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/wfo/ril/RILRequest;

    move-result-object v1

    .line 692
    .local v1, "rr":Lcom/mediatek/wfo/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/wfo/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/wfo/ril/MwiRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " rssi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " snr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 697
    :try_start_0
    iget v2, v1, Lcom/mediatek/wfo/ril/RILRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;->setWifiSignalLevel(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    goto :goto_0

    .line 698
    :catch_0
    move-exception v2

    .line 699
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setWifiSignalLevel"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->handleRadioProxyExceptionForRR(Lcom/mediatek/wfo/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 702
    .end local v1    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method unsljLog(I)V
    .locals 2
    .param p1, "response"    # I

    .line 1346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/mediatek/wfo/ril/MwiRIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 1347
    return-void
.end method

.method unsljLogMore(ILjava/lang/String;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "more"    # Ljava/lang/String;

    .line 1350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/mediatek/wfo/ril/MwiRIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 1351
    return-void
.end method

.method unsljLogRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 1354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/mediatek/wfo/ril/MwiRIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/mediatek/wfo/ril/MwiRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 1355
    return-void
.end method

.method unsljLogvRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 1358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/mediatek/wfo/ril/MwiRIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/mediatek/wfo/ril/MwiRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLogv(Ljava/lang/String;)V

    .line 1359
    return-void
.end method

.class public Lcom/mediatek/omadm/OmadmServiceImpl;
.super Lcom/mediatek/common/omadm/IOmadmManager$Stub;
.source "OmadmServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;,
        Lcom/mediatek/omadm/OmadmServiceImpl$OmadmProxyDeathRecipient;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field private static final HIDL_APN_GET_ID:I = 0x1

.field private static final HIDL_APN_GET_IPVX:I = 0x0

.field private static final HIDL_APN_GET_NAME:I = 0x0

.field private static final HIDL_APN_IS_ENABLE:I = 0x2

.field private static final HIDL_APN_RESTORE_INFO:I = 0x1

.field private static final HIDL_APN_SET_ENABLE:I = 0x1

.field private static final HIDL_APN_SET_IPVX:I = 0x0

.field private static final HIDL_APN_SET_NAME:I = 0x0

.field private static final HIDL_DCMO_LVC_GET:I = 0x3

.field private static final HIDL_DCMO_LVC_SET:I = 0x3

.field private static final HIDL_DCMO_VLT_GET:I = 0x2

.field private static final HIDL_DCMO_VLT_SET:I = 0x2

.field private static final HIDL_DCMO_VWF_GET:I = 0x4

.field private static final HIDL_DCMO_VWF_SET:I = 0x4

.field private static final HIDL_DMV:I = 0x17

.field private static final HIDL_GETGET_EXT:I = 0x1a

.field private static final HIDL_GET_DEVICE_ID:I = 0x0

.field private static final HIDL_GET_ICCID:I = 0x19

.field private static final HIDL_GET_LANGUAGE:I = 0x18

.field private static final HIDL_IMS_SMS_FORMAT_GET:I = 0x1

.field private static final HIDL_IMS_SMS_FORMAT_SET:I = 0x1

.field private static final HIDL_IMS_SMS_OVER_IP_ENABLE:I = 0x0

.field private static final HIDL_IMS_SMS_OVER_IP_IS_ENABLED:I = 0x0

.field private static final HIDL_MANUFACTURER:I = 0x15

.field private static final HIDL_MODEL:I = 0x16

.field private static final HIDL_NETWORK_IMS_DOMAIN:I = 0x4

.field private static final HIDL_NETWORK_IMS_SMS_FORMAT_GET:I = 0x5

.field private static final HIDL_NW_APN_GET_ID:I = 0x1

.field private static final HIDL_NW_APN_GET_IP:I = 0x3

.field private static final HIDL_NW_APN_GET_NAME:I = 0x2

.field private static final HIDL_OMADM_ISFACTORY_SET:I = 0x5

.field private static final HIDL_SYSTEM_DATE_GET:I = 0xb

.field private static final HIDL_SYSTEM_DEVICETYPE_GET:I = 0x14

.field private static final HIDL_SYSTEM_FWV_GET:I = 0x7

.field private static final HIDL_SYSTEM_HOSTDEVICE_DATESTAMP_GET:I = 0x12

.field private static final HIDL_SYSTEM_HOSTDEVICE_DEVICEID_GET:I = 0x13

.field private static final HIDL_SYSTEM_HOSTDEVICE_FWV_GET:I = 0x10

.field private static final HIDL_SYSTEM_HOSTDEVICE_HWV_GET:I = 0x11

.field private static final HIDL_SYSTEM_HOSTDEVICE_MANU_GET:I = 0xd

.field private static final HIDL_SYSTEM_HOSTDEVICE_MODEL_GET:I = 0xe

.field private static final HIDL_SYSTEM_HOSTDEVICE_SWV_GET:I = 0xf

.field private static final HIDL_SYSTEM_HWV_GET:I = 0x9

.field private static final HIDL_SYSTEM_OEM_GET:I = 0x6

.field private static final HIDL_SYSTEM_SUPPORT_LRGOBJ_GET:I = 0xa

.field private static final HIDL_SYSTEM_SWV_GET:I = 0x8

.field private static final HIDL_SYSTEM_TIMEUTC_GET:I = 0xc

.field private static final MSG_GET_SMSIP:I = 0x1

.field private static final MSG_SET_SMSIP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OmadmServiceImpl"

.field private static trCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final mAdNetLock:Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field public mEvHandlerReceiver:Landroid/content/BroadcastReceiver;

.field private mFactoyMode:I

.field private mFotaApn:Lcom/mediatek/omadm/FotaApnSettings;

.field private mFotaManager:Lcom/mediatek/omadm/FotaNetworkManager;

.field private final mHandler:Landroid/os/Handler;

.field private mImsConfigManager:Lcom/mediatek/omadm/ImsConfigManager;

.field private final mLock:Ljava/lang/Object;

.field private mNetId:I

.field private mNwDetector:Lcom/mediatek/omadm/NetworkDetector;

.field private mOmadmIndication:Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;

.field private volatile mOmadmProxy:Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;

.field private final mOmadmProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mOmadmProxyDeathRecipient:Lcom/mediatek/omadm/OmadmServiceImpl$OmadmProxyDeathRecipient;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 123
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/omadm/OmadmServiceImpl;->DEBUG:Z

    .line 1023
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/mediatek/omadm/OmadmServiceImpl;->trCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 441
    invoke-direct {p0}, Lcom/mediatek/common/omadm/IOmadmManager$Stub;-><init>()V

    .line 198
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mLock:Ljava/lang/Object;

    .line 199
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mAdNetLock:Ljava/lang/Object;

    .line 201
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mHandler:Landroid/os/Handler;

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mImsConfigManager:Lcom/mediatek/omadm/ImsConfigManager;

    .line 203
    iput-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mNwDetector:Lcom/mediatek/omadm/NetworkDetector;

    .line 204
    iput-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mFotaManager:Lcom/mediatek/omadm/FotaNetworkManager;

    .line 205
    iput-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mFotaApn:Lcom/mediatek/omadm/FotaApnSettings;

    .line 207
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mNetId:I

    .line 208
    iput v1, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mFactoyMode:I

    .line 409
    iput-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mOmadmProxy:Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;

    .line 410
    new-instance v0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmProxyDeathRecipient;

    invoke-direct {v0, p0}, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmProxyDeathRecipient;-><init>(Lcom/mediatek/omadm/OmadmServiceImpl;)V

    iput-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mOmadmProxyDeathRecipient:Lcom/mediatek/omadm/OmadmServiceImpl$OmadmProxyDeathRecipient;

    .line 411
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mOmadmProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 412
    new-instance v0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;

    invoke-direct {v0, p0}, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;-><init>(Lcom/mediatek/omadm/OmadmServiceImpl;)V

    iput-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mOmadmIndication:Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;

    .line 449
    new-instance v0, Lcom/mediatek/omadm/OmadmServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/mediatek/omadm/OmadmServiceImpl$1;-><init>(Lcom/mediatek/omadm/OmadmServiceImpl;)V

    iput-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mEvHandlerReceiver:Landroid/content/BroadcastReceiver;

    .line 442
    const-string v0, "OmadmServiceImpl"

    const-string v1, "OmadmServiceImpl() ... constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iput-object p1, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mContext:Landroid/content/Context;

    .line 444
    new-instance v0, Lcom/mediatek/omadm/ImsConfigManager;

    invoke-direct {v0, p1}, Lcom/mediatek/omadm/ImsConfigManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mImsConfigManager:Lcom/mediatek/omadm/ImsConfigManager;

    .line 446
    invoke-virtual {p0}, Lcom/mediatek/omadm/OmadmServiceImpl;->getOmadmProxy()Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;

    .line 447
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/omadm/OmadmServiceImpl;)Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/omadm/OmadmServiceImpl;

    .line 120
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mOmadmProxy:Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/omadm/OmadmServiceImpl;Landroid/content/Intent;)Z
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/omadm/OmadmServiceImpl;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 120
    invoke-direct {p0, p1}, Lcom/mediatek/omadm/OmadmServiceImpl;->isOmadmWapPush(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/omadm/OmadmServiceImpl;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/omadm/OmadmServiceImpl;

    .line 120
    iget v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mFactoyMode:I

    return v0
.end method

.method static synthetic access$202(Lcom/mediatek/omadm/OmadmServiceImpl;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/omadm/OmadmServiceImpl;
    .param p1, "x1"    # I

    .line 120
    iput p1, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mFactoyMode:I

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/omadm/OmadmServiceImpl;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/omadm/OmadmServiceImpl;

    .line 120
    iget v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mNetId:I

    return v0
.end method

.method static synthetic access$302(Lcom/mediatek/omadm/OmadmServiceImpl;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/omadm/OmadmServiceImpl;
    .param p1, "x1"    # I

    .line 120
    iput p1, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mNetId:I

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/omadm/OmadmServiceImpl;)Lcom/mediatek/omadm/FotaNetworkManager;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/omadm/OmadmServiceImpl;

    .line 120
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mFotaManager:Lcom/mediatek/omadm/FotaNetworkManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/omadm/OmadmServiceImpl;)Lcom/mediatek/omadm/FotaApnSettings;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/omadm/OmadmServiceImpl;

    .line 120
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mFotaApn:Lcom/mediatek/omadm/FotaApnSettings;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/omadm/OmadmServiceImpl;Lcom/mediatek/omadm/FotaApnSettings;)Lcom/mediatek/omadm/FotaApnSettings;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/omadm/OmadmServiceImpl;
    .param p1, "x1"    # Lcom/mediatek/omadm/FotaApnSettings;

    .line 120
    iput-object p1, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mFotaApn:Lcom/mediatek/omadm/FotaApnSettings;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mediatek/omadm/OmadmServiceImpl;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/omadm/OmadmServiceImpl;

    .line 120
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 120
    sget-object v0, Lcom/mediatek/omadm/OmadmServiceImpl;->trCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private isOmadmWapPush(Landroid/content/Intent;)Z
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 539
    sget-boolean v0, Lcom/mediatek/omadm/OmadmServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "OmadmServiceImpl"

    const-string v1, "isOmadmPush()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_b
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 541
    .local v0, "type":Ljava/lang/String;
    const-string v1, "application/vnd.syncml.notification"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private readFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 850
    const-string v0, ""

    .line 851
    .local v0, "data":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/vendor/verizon/dmclient/data"

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 854
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 855
    .local v2, "confVerFos":Ljava/io/FileInputStream;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    .line 857
    .local v3, "dataLength":I
    if-lez v3, :cond_27

    .line 858
    new-array v4, v3, [B

    .line 859
    .local v4, "buffer":[B
    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Ljava/io/FileInputStream;->read([BII)I

    .line 860
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    move-object v0, v5

    .line 862
    .end local v2    # "confVerFos":Ljava/io/FileInputStream;
    .end local v3    # "dataLength":I
    .end local v4    # "buffer":[B
    :cond_27
    goto :goto_46

    .line 864
    :cond_28
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 865
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read attempt on file ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] failed... create new one"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OmadmServiceImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :goto_46
    return-object v0
.end method

.method private regNwkEventReceiver()V
    .registers 3

    .line 490
    invoke-direct {p0}, Lcom/mediatek/omadm/OmadmServiceImpl;->unregNwkEventReceiver()V

    .line 491
    new-instance v0, Lcom/mediatek/omadm/NetworkDetector;

    iget-object v1, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/mediatek/omadm/NetworkDetector;-><init>(Landroid/content/Context;Lcom/mediatek/omadm/OmadmServiceImpl;)V

    iput-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mNwDetector:Lcom/mediatek/omadm/NetworkDetector;

    .line 493
    nop

    .line 494
    iget-object v1, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/omadm/NetworkDetector;->register(Landroid/content/Context;)V

    .line 498
    return-void
.end method

.method private setEventhndlIntentListeners()V
    .registers 6

    .line 508
    const-string v0, "OmadmServiceImpl"

    const-string v1, "setEventhndlIntentListeners"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 510
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 513
    :try_start_11
    const-string v2, "application/vnd.syncml.notification"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_16
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_11 .. :try_end_16} :catch_17

    .line 516
    goto :goto_1d

    .line 514
    :catch_17
    move-exception v2

    .line 515
    .local v2, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v3, "Malformed SUPL init mime type"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    .end local v2    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    :goto_1d
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mEvHandlerReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 519
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 520
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 521
    const-string v1, "sms"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 522
    const-string v1, "localhost"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object v1, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mEvHandlerReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 525
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    .line 526
    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 527
    iget-object v1, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mEvHandlerReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 529
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    .line 530
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 531
    iget-object v1, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mEvHandlerReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 533
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    .line 534
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 535
    iget-object v1, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mEvHandlerReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 536
    return-void
.end method

.method private unregNwkEventReceiver()V
    .registers 3

    .line 501
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mNwDetector:Lcom/mediatek/omadm/NetworkDetector;

    if-eqz v0, :cond_c

    .line 502
    iget-object v1, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/omadm/NetworkDetector;->unregister(Landroid/content/Context;)V

    .line 503
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mNwDetector:Lcom/mediatek/omadm/NetworkDetector;

    .line 505
    :cond_c
    return-void
.end method

.method private writeToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 871
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/vendor/verizon/dmclient/data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 873
    .local v0, "fileOutputStream":Ljava/io/FileOutputStream;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 874
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 875
    return-void
.end method


# virtual methods
.method public byteToArrayList(I[B)Ljava/util/ArrayList;
    .registers 6
    .param p1, "length"    # I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 558
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 559
    .local v0, "myarraylist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " byteToArrayList, value.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "@M_OmadmServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2d
    if-ge v1, p1, :cond_3b

    .line 563
    aget-byte v2, p2, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 565
    .end local v1    # "i":I
    :cond_3b
    return-object v0
.end method

.method public checkApnRestore(ILjava/lang/String;)V
    .registers 9
    .param p1, "apnCls"    # I
    .param p2, "data"    # Ljava/lang/String;

    .line 942
    const-string v0, ""

    if-eq p2, v0, :cond_6e

    .line 943
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 944
    .local v0, "field":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkApnRestore ... get and resotre config["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget-object v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ,"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    aget-object v5, v0, v4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "OmadmServiceImpl"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    aget-object v1, v0, v2

    invoke-virtual {p0, p1, v1}, Lcom/mediatek/omadm/OmadmServiceImpl;->set_ApnName(ILjava/lang/String;)I

    .line 947
    aget-object v1, v0, v3

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    const/4 v1, 0x3

    goto :goto_5f

    :cond_52
    aget-object v1, v0, v3

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    move v1, v4

    goto :goto_5f

    :cond_5e
    move v1, v3

    .line 948
    .local v1, "ipvX":I
    :goto_5f
    invoke-virtual {p0, p1, v1}, Lcom/mediatek/omadm/OmadmServiceImpl;->set_ApnIpvX(II)I

    .line 949
    aget-object v2, v0, v4

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v3

    .line 950
    .local v2, "en":I
    invoke-virtual {p0, p1, v2}, Lcom/mediatek/omadm/OmadmServiceImpl;->enable_Apn(II)I

    .line 952
    .end local v0    # "field":[Ljava/lang/String;
    .end local v1    # "ipvX":I
    .end local v2    # "en":I
    :cond_6e
    return-void
.end method

.method public checkDataSms(Landroid/content/Intent;)V
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;

    .line 545
    sget-boolean v0, Lcom/mediatek/omadm/OmadmServiceImpl;->DEBUG:Z

    const-string v1, "OmadmServiceImpl"

    if-eqz v0, :cond_b

    const-string v0, "checkDataSms()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_b
    :try_start_b
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 548
    .local v0, "sms":[Landroid/telephony/SmsMessage;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_3d

    aget-object v4, v0, v3

    .line 549
    .local v4, "msg":Landroid/telephony/SmsMessage;
    sget-boolean v5, Lcom/mediatek/omadm/OmadmServiceImpl;->DEBUG:Z

    if-eqz v5, :cond_31

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "message body "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_31
    iget-object v5, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mOmadmProxy:Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;

    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;->SmsCancelSysUpdate(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_3a} :catch_3e

    .line 548
    .end local v4    # "msg":Landroid/telephony/SmsMessage;
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 554
    .end local v0    # "sms":[Landroid/telephony/SmsMessage;
    :cond_3d
    goto :goto_42

    .line 552
    :catch_3e
    move-exception v0

    .line 553
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 555
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_42
    return-void
.end method

.method public checkOmadmWapPush(Landroid/content/Intent;)V
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;

    .line 569
    sget-boolean v0, Lcom/mediatek/omadm/OmadmServiceImpl;->DEBUG:Z

    const-string v1, "OmadmServiceImpl"

    if-eqz v0, :cond_b

    const-string v0, "checkOmadmWapPush()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_b
    :try_start_b
    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 572
    .local v0, "data":[B
    array-length v2, v0

    .line 573
    .local v2, "cnt":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v2, :cond_3b

    .line 574
    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    .line 575
    .local v4, "positive":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkOmadmWapPush: get content["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    nop

    .end local v4    # "positive":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 577
    .end local v3    # "i":I
    :cond_3b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkOmadmWapPush(): get WAP data len = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-object v1, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mOmadmProxy:Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;

    const-string v3, "transactionId"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 579
    invoke-virtual {p0, v2, v0}, Lcom/mediatek/omadm/OmadmServiceImpl;->byteToArrayList(I[B)Ljava/util/ArrayList;

    move-result-object v4

    .line 578
    invoke-interface {v1, v3, v2, v4}, Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;->writeEvent(IILjava/util/ArrayList;)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_64} :catch_65

    .line 582
    .end local v0    # "data":[B
    .end local v2    # "cnt":I
    goto :goto_69

    .line 580
    :catch_65
    move-exception v0

    .line 581
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 583
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_69
    return-void
.end method

.method public enable_Apn(II)I
    .registers 6
    .param p1, "apnCls"    # I
    .param p2, "enable"    # I

    .line 931
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/mediatek/omadm/Apns;->enable(Landroid/content/Context;II)I

    move-result v0

    .line 936
    .local v0, "ret":I
    sget-boolean v1, Lcom/mediatek/omadm/OmadmServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable_Apn [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OmadmServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    :cond_28
    invoke-virtual {p0, p1}, Lcom/mediatek/omadm/OmadmServiceImpl;->storeApnConfig(I)V

    .line 938
    return v0
.end method

.method public enable_ImsSmsOverIp(I)I
    .registers 4
    .param p1, "enable"    # I

    .line 974
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mImsConfigManager:Lcom/mediatek/omadm/ImsConfigManager;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/omadm/ImsConfigManager;->setProvisionedIntValue(II)V

    .line 976
    const/4 v0, 0x0

    return v0
.end method

.method public getOmadmProxy()Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;
    .registers 6

    .line 415
    const-string v0, "@M_OmadmServiceImpl"

    iget-object v1, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mOmadmProxy:Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;

    if-eqz v1, :cond_9

    .line 416
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mOmadmProxy:Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;

    return-object v0

    .line 419
    :cond_9
    :try_start_9
    const-string v1, "IOmadm.getService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const-string v1, "omadm"

    invoke-static {v1}, Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;->getService(Ljava/lang/String;)Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mOmadmProxy:Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;

    .line 422
    iget-object v1, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mOmadmProxy:Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;

    if-eqz v1, :cond_3a

    .line 423
    iget-object v1, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mOmadmProxy:Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;

    iget-object v2, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mOmadmProxyDeathRecipient:Lcom/mediatek/omadm/OmadmServiceImpl$OmadmProxyDeathRecipient;

    iget-object v3, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mOmadmProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 424
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v3

    .line 423
    invoke-interface {v1, v2, v3, v4}, Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 425
    const-string v1, "setResponseFunctions"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v1, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mOmadmProxy:Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;

    iget-object v2, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mOmadmIndication:Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;

    invoke-interface {v1, v2}, Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;->setResponseFunctions(Lvendor/mediatek/hardware/omadm/V1_0/IOmadmIndication;)V

    .line 427
    invoke-direct {p0}, Lcom/mediatek/omadm/OmadmServiceImpl;->setEventhndlIntentListeners()V

    .line 428
    invoke-direct {p0}, Lcom/mediatek/omadm/OmadmServiceImpl;->regNwkEventReceiver()V

    goto :goto_3f

    .line 431
    :cond_3a
    const-string v1, "getOmadmProxy: mImsaProxy == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_3f} :catch_40
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_3f} :catch_40

    .line 436
    :goto_3f
    goto :goto_58

    .line 433
    :catch_40
    move-exception v1

    .line 434
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mOmadmProxy:Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;

    .line 435
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOmadmProxy getService/setResponseFunctions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_58
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mOmadmProxy:Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;

    return-object v0
.end method

.method public get_ApnId(I)I
    .registers 5
    .param p1, "apnCls"    # I

    .line 907
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/mediatek/omadm/Apns;->getId(Landroid/content/Context;I)I

    move-result v0

    .line 908
    .local v0, "id":I
    sget-boolean v1, Lcom/mediatek/omadm/OmadmServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get_ApnId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OmadmServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_28
    return v0
.end method

.method public get_ApnIpvX(I)I
    .registers 6
    .param p1, "apnCls"    # I

    .line 897
    const-string v0, "OmadmServiceImpl"

    :try_start_2
    iget-object v1, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/mediatek/omadm/Apns;->getIpVersions(Landroid/content/Context;I)I

    move-result v1

    .line 898
    .local v1, "mask":I
    sget-boolean v2, Lcom/mediatek/omadm/OmadmServiceImpl;->DEBUG:Z

    if-eqz v2, :cond_28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get_ApnIpvX["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_28} :catch_29

    .line 899
    :cond_28
    return v1

    .line 900
    .end local v1    # "mask":I
    :catch_29
    move-exception v1

    .line 901
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "get_ApnIpvX cannot get valid info"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 902
    const/4 v0, -0x1

    return v0
.end method

.method public get_ApnName(I)Ljava/lang/String;
    .registers 6
    .param p1, "apnCls"    # I

    .line 879
    const-string v0, "OmadmServiceImpl"

    :try_start_2
    iget-object v1, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/mediatek/omadm/Apns;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 880
    .local v1, "apnName":Ljava/lang/String;
    sget-boolean v2, Lcom/mediatek/omadm/OmadmServiceImpl;->DEBUG:Z

    if-eqz v2, :cond_28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get_ApnName["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_28} :catch_29

    .line 881
    :cond_28
    return-object v1

    .line 882
    .end local v1    # "apnName":Ljava/lang/String;
    :catch_29
    move-exception v1

    .line 883
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "get_ApnName cannot get valid info"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 884
    const-string v0, ""

    return-object v0
.end method

.method public get_Date()Ljava/lang/String;
    .registers 6

    .line 702
    sget-wide v0, Landroid/os/Build;->TIME:J

    .line 703
    .local v0, "sec":J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 704
    .local v2, "date":Ljava/util/Date;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "MM:dd:yyyy"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 705
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 706
    .local v4, "dateString":Ljava/lang/String;
    return-object v4
.end method

.method public get_DeviceId()Ljava/lang/String;
    .registers 5

    .line 586
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mContext:Landroid/content/Context;

    .line 587
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 588
    .local v0, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 590
    .local v1, "str":Ljava/lang/String;
    if-eqz v1, :cond_11

    .line 591
    return-object v1

    .line 593
    :cond_11
    const-string v2, "OmadmServiceImpl"

    const-string v3, "TelephonyManageris not ready"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const-string v2, ""

    return-object v2
.end method

.method public get_DeviceOEM()Ljava/lang/String;
    .registers 5

    .line 643
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 644
    .local v0, "man":Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 646
    .local v1, "model":Ljava/lang/String;
    const-string v2, "OmadmServiceImpl"

    const-string v3, "manufactureris not identified"

    if-nez v1, :cond_16

    if-eqz v0, :cond_d

    goto :goto_16

    .line 647
    :cond_d
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 651
    :cond_16
    :goto_16
    if-eqz v0, :cond_23

    .line 652
    if-eqz v1, :cond_22

    .line 653
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 654
    return-object v1

    .line 656
    :cond_21
    return-object v0

    .line 659
    :cond_22
    return-object v0

    .line 662
    :cond_23
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public get_Dmversion()Ljava/lang/String;
    .registers 2

    .line 612
    const-string v0, "1.2"

    return-object v0
.end method

.method public get_Ext()Ljava/lang/String;
    .registers 2

    .line 639
    const-string v0, "./DevInfo/Ext/ConfigurationVer"

    return-object v0
.end method

.method public get_FWV()Ljava/lang/String;
    .registers 5

    .line 669
    const-string v0, ""

    .line 671
    .local v0, "ver":Ljava/lang/String;
    :try_start_2
    const-string v1, "/last_update_firmware_version"

    invoke-direct {p0, v1}, Lcom/mediatek/omadm/OmadmServiceImpl;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_8} :catch_a

    move-object v0, v1

    .line 674
    goto :goto_14

    .line 672
    :catch_a
    move-exception v1

    .line 673
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OmadmServiceImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    .end local v1    # "e":Ljava/io/IOException;
    :goto_14
    const-string v1, ""

    if-ne v0, v1, :cond_19

    .line 676
    return-object v1

    .line 678
    :cond_19
    return-object v0
.end method

.method public get_HWV()Ljava/lang/String;
    .registers 3

    .line 690
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 691
    .local v0, "ver":Ljava/lang/String;
    const-string v1, ""

    if-ne v0, v1, :cond_9

    .line 692
    const-string v1, "n/a"

    return-object v1

    .line 694
    :cond_9
    return-object v0
.end method

.method public get_HostDateStamp()Ljava/lang/String;
    .registers 7

    .line 801
    const/4 v0, 0x0

    .line 803
    .local v0, "type":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 804
    sget-wide v1, Landroid/os/Build;->TIME:J

    .line 805
    .local v1, "sec":J
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 806
    .local v3, "time":Ljava/util/Date;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "dd:MM:yyyy hh:mm:ss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 807
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 808
    .local v5, "timeString":Ljava/lang/String;
    return-object v5

    .line 810
    .end local v1    # "sec":J
    .end local v3    # "time":Ljava/util/Date;
    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v5    # "timeString":Ljava/lang/String;
    :cond_17
    const-string v1, "OmadmServiceImpl"

    const-string v2, "Host device operation Operation not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    const-string v1, "n/a"

    return-object v1
.end method

.method public get_HostDeviceManu()Ljava/lang/String;
    .registers 7

    .line 718
    const/4 v0, 0x0

    .line 720
    .local v0, "type":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 721
    invoke-virtual {p0}, Lcom/mediatek/omadm/OmadmServiceImpl;->get_DeviceOEM()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 722
    :cond_9
    const/4 v1, 0x2

    const-string v2, "OmadmServiceImpl"

    if-ne v0, v1, :cond_45

    .line 723
    iget-object v1, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mContext:Landroid/content/Context;

    const-string v3, "usb"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    .line 724
    .local v1, "mngr":Landroid/hardware/usb/UsbManager;
    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    .line 726
    .local v3, "devices":I
    if-eqz v3, :cond_38

    .line 730
    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 731
    .local v2, "dev":[Ljava/lang/Object;
    const/4 v4, 0x0

    aget-object v4, v2, v4

    check-cast v4, Landroid/hardware/usb/UsbDevice;

    .line 732
    .local v4, "usbDevice":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 727
    .end local v2    # "dev":[Ljava/lang/Object;
    .end local v4    # "usbDevice":Landroid/hardware/usb/UsbDevice;
    :cond_38
    const-string v4, "no devices"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Operation not supported"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 735
    .end local v1    # "mngr":Landroid/hardware/usb/UsbManager;
    .end local v3    # "devices":I
    :cond_45
    const-string v1, "Host device operation Operation not supported"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const-string v1, "n/a"

    return-object v1
.end method

.method public get_HostDeviceModel()Ljava/lang/String;
    .registers 7

    .line 741
    const/4 v0, 0x0

    .line 742
    .local v0, "type":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 743
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v1

    .line 744
    :cond_7
    const/4 v1, 0x2

    const-string v2, "OmadmServiceImpl"

    if-ne v0, v1, :cond_43

    .line 745
    iget-object v1, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mContext:Landroid/content/Context;

    const-string v3, "usb"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    .line 746
    .local v1, "mngr":Landroid/hardware/usb/UsbManager;
    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    .line 748
    .local v3, "devices":I
    if-eqz v3, :cond_36

    .line 753
    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 754
    .local v2, "device":[Ljava/lang/Object;
    const/4 v4, 0x0

    aget-object v4, v2, v4

    check-cast v4, Landroid/hardware/usb/UsbDevice;

    .line 755
    .local v4, "usbDevice":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 749
    .end local v2    # "device":[Ljava/lang/Object;
    .end local v4    # "usbDevice":Landroid/hardware/usb/UsbDevice;
    :cond_36
    const-string v4, "no devices"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Operation not supported"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 758
    .end local v1    # "mngr":Landroid/hardware/usb/UsbManager;
    .end local v3    # "devices":I
    :cond_43
    const-string v1, "Host device operation Operation not supported"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    const-string v1, "n/a"

    return-object v1
.end method

.method public get_HostFWV()Ljava/lang/String;
    .registers 4

    .line 790
    const/4 v0, 0x0

    .line 792
    .local v0, "type":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 793
    invoke-virtual {p0}, Lcom/mediatek/omadm/OmadmServiceImpl;->get_FWV()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 795
    :cond_9
    const-string v1, "OmadmServiceImpl"

    const-string v2, "Host device operation Operation not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    const-string v1, "n/a"

    return-object v1
.end method

.method public get_HostHWV()Ljava/lang/String;
    .registers 5

    .line 765
    const/4 v0, 0x0

    .line 766
    .local v0, "type":I
    const-string v1, ""

    .line 768
    .local v1, "res":Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    .line 769
    invoke-virtual {p0}, Lcom/mediatek/omadm/OmadmServiceImpl;->get_HWV()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 771
    :cond_b
    const-string v2, "OmadmServiceImpl"

    const-string v3, "Host device operation Operation not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const-string v2, "n/a"

    return-object v2
.end method

.method public get_HostID()Ljava/lang/String;
    .registers 4

    .line 816
    const/4 v0, 0x0

    .line 817
    .local v0, "type":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 818
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mediatek/omadm/OmadmServiceImpl;->get_DeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 820
    :cond_1f
    const-string v1, "OmadmServiceImpl"

    const-string v2, "Host device operation Operation not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    const-string v1, "n/a"

    return-object v1
.end method

.method public get_HostSWV()Ljava/lang/String;
    .registers 5

    .line 778
    const/4 v0, 0x0

    .line 779
    .local v0, "type":I
    const-string v1, ""

    .line 780
    .local v1, "res":Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    .line 781
    invoke-virtual {p0}, Lcom/mediatek/omadm/OmadmServiceImpl;->get_SWV()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 784
    :cond_b
    const-string v2, "OmadmServiceImpl"

    const-string v3, "Host device operation Operation not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const-string v2, "n/a"

    return-object v2
.end method

.method public get_Iccid()Ljava/lang/String;
    .registers 7

    .line 620
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mContext:Landroid/content/Context;

    .line 621
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 623
    .local v0, "mgr":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    .line 624
    .local v1, "ssn":Ljava/lang/String;
    const-string v2, "NULL"

    const-string v3, "OmadmServiceImpl"

    if-eqz v0, :cond_23

    .line 625
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1d

    .line 626
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 635
    return-object v1

    .line 628
    :cond_1d
    const-string v4, "Sim stateis not ready"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    return-object v2

    .line 632
    :cond_23
    const-string v4, "TelephonyManageris not ready"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    return-object v2
.end method

.method public get_ImsDomain()Ljava/lang/String;
    .registers 2

    .line 980
    const-string v0, "vzims.com"

    return-object v0
.end method

.method public get_ImsLvcState()I
    .registers 5

    .line 1099
    sget-boolean v0, Lcom/mediatek/omadm/OmadmServiceImpl;->DEBUG:Z

    const-string v1, "OmadmServiceImpl"

    if-eqz v0, :cond_b

    const-string v0, "getImsLvcState()"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    :cond_b
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mImsConfigManager:Lcom/mediatek/omadm/ImsConfigManager;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/mediatek/omadm/ImsConfigManager;->getProvisionedIntValue(I)I

    move-result v0

    .line 1102
    .local v0, "value":I
    sget-boolean v2, Lcom/mediatek/omadm/OmadmServiceImpl;->DEBUG:Z

    if-eqz v2, :cond_2b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImsLvcState() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    :cond_2b
    return v0
.end method

.method public get_ImsSmsFormat()I
    .registers 3

    .line 984
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mImsConfigManager:Lcom/mediatek/omadm/ImsConfigManager;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/mediatek/omadm/ImsConfigManager;->getProvisionedIntValue(I)I

    move-result v0

    return v0
.end method

.method public get_ImsVlt()I
    .registers 5

    .line 1084
    sget-boolean v0, Lcom/mediatek/omadm/OmadmServiceImpl;->DEBUG:Z

    const-string v1, "OmadmServiceImpl"

    if-eqz v0, :cond_b

    const-string v0, "getImsVlt()"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    :cond_b
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mImsConfigManager:Lcom/mediatek/omadm/ImsConfigManager;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/mediatek/omadm/ImsConfigManager;->getProvisionedIntValue(I)I

    move-result v0

    .line 1087
    .local v0, "value":I
    sget-boolean v2, Lcom/mediatek/omadm/OmadmServiceImpl;->DEBUG:Z

    if-eqz v2, :cond_2b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImsVlt() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    :cond_2b
    return v0
.end method

.method public get_ImsVwfState()I
    .registers 5

    .line 1114
    sget-boolean v0, Lcom/mediatek/omadm/OmadmServiceImpl;->DEBUG:Z

    const-string v1, "OmadmServiceImpl"

    if-eqz v0, :cond_b

    const-string v0, "getImsVwfState()"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :cond_b
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mImsConfigManager:Lcom/mediatek/omadm/ImsConfigManager;

    const/16 v2, 0x1b

    invoke-virtual {v0, v2}, Lcom/mediatek/omadm/ImsConfigManager;->getProvisionedIntValue(I)I

    move-result v0

    .line 1117
    .local v0, "value":I
    sget-boolean v2, Lcom/mediatek/omadm/OmadmServiceImpl;->DEBUG:Z

    if-eqz v2, :cond_2b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImsVwfState() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :cond_2b
    if-nez v0, :cond_2f

    .line 1119
    const/4 v0, 0x1

    goto :goto_30

    .line 1121
    :cond_2f
    const/4 v0, 0x0

    .line 1123
    :goto_30
    return v0
.end method

.method public get_Language()Ljava/lang/String;
    .registers 2

    .line 616
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get_Manufacturer()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 600
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, "manufacturer":Ljava/lang/String;
    return-object v0
.end method

.method public get_Model()Ljava/lang/String;
    .registers 5

    .line 605
    const-string v0, "ro.vendor.product.model"

    const-string v1, "k71v1_64_bsp"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 606
    .local v1, "str":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Model prop =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    const-string v3, ""

    invoke-static {v0, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "get str = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 606
    const-string v2, "OmadmServiceImpl"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    return-object v1
.end method

.method public get_SWV()Ljava/lang/String;
    .registers 3

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " API:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " build: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 683
    .local v0, "ver":Ljava/lang/String;
    const-string v1, ""

    if-ne v0, v1, :cond_29

    .line 684
    const-string v1, "n/a"

    return-object v1

    .line 686
    :cond_29
    return-object v0
.end method

.method public get_Time()Ljava/lang/String;
    .registers 6

    .line 710
    sget-wide v0, Landroid/os/Build;->TIME:J

    .line 711
    .local v0, "sec":J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 712
    .local v2, "time":Ljava/util/Date;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "hh:mm"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 713
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 714
    .local v4, "timeString":Ljava/lang/String;
    return-object v4
.end method

.method public get_Type()Ljava/lang/String;
    .registers 4

    .line 827
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mContext:Landroid/content/Context;

    .line 828
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 829
    .local v0, "mngr":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_19

    .line 834
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-nez v1, :cond_15

    .line 835
    const-string v1, "Feature Phone"

    .local v1, "result":Ljava/lang/String;
    goto :goto_17

    .line 837
    .end local v1    # "result":Ljava/lang/String;
    :cond_15
    const-string v1, "Smart Device"

    .line 840
    .restart local v1    # "result":Ljava/lang/String;
    :goto_17
    nop

    .line 841
    return-object v1

    .line 830
    .end local v1    # "result":Ljava/lang/String;
    :cond_19
    const-string v1, "OmadmServiceImpl"

    const-string v2, "TelephonyManageris not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public inputStream(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1152
    sget-boolean v0, Lcom/mediatek/omadm/OmadmServiceImpl;->DEBUG:Z

    const-string v1, "inputStream("

    const-string v2, "OmadmServiceImpl"

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    :cond_1f
    invoke-static {p1}, Lcom/mediatek/omadm/FileUtils;->checkPathAllow(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1158
    :try_start_25
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1159
    .local v0, "is":Ljava/io/FileInputStream;
    invoke-static {v0}, Lcom/mediatek/omadm/FileUtils;->pipeTo(Ljava/io/InputStream;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_2e} :catch_36
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2e} :catch_2f

    .line 1160
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    return-object v1

    .line 1164
    .end local v0    # "is":Ljava/io/FileInputStream;
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_2f
    move-exception v0

    .line 1165
    .local v0, "excp":Ljava/io/IOException;
    const/16 v1, 0xd

    invoke-static {v1}, Lcom/mediatek/omadm/PalConstDefs;->throwEcxeption(I)V

    goto :goto_3d

    .line 1161
    .end local v0    # "excp":Ljava/io/IOException;
    :catch_36
    move-exception v0

    .line 1162
    .local v0, "excp":Ljava/io/FileNotFoundException;
    const/16 v1, 0xb

    invoke-static {v1}, Lcom/mediatek/omadm/PalConstDefs;->throwEcxeption(I)V

    .line 1167
    .end local v0    # "excp":Ljava/io/FileNotFoundException;
    nop

    .line 1168
    :goto_3d
    const/4 v0, 0x0

    return-object v0

    .line 1154
    :cond_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "): is not allowed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public is_ApnEnabled(I)I
    .registers 6
    .param p1, "apnCls"    # I

    .line 921
    const-string v0, "OmadmServiceImpl"

    :try_start_2
    iget-object v1, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/mediatek/omadm/Apns;->isEnabled(Landroid/content/Context;I)I

    move-result v1

    .line 922
    .local v1, "enabled":I
    sget-boolean v2, Lcom/mediatek/omadm/OmadmServiceImpl;->DEBUG:Z

    if-eqz v2, :cond_28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is_ApnEnabled [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_28} :catch_29

    .line 923
    :cond_28
    return v1

    .line 924
    .end local v1    # "enabled":I
    :catch_29
    move-exception v1

    .line 925
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "is_ApnEnabled cannot get valid info"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 926
    const/4 v0, -0x1

    return v0
.end method

.method public is_ImsSmsOverIpEnabled()I
    .registers 2

    .line 970
    const/4 v0, 0x1

    return v0
.end method

.method public notifyOmadmNetworkManager(IZ)V
    .registers 7
    .param p1, "netFeature"    # I
    .param p2, "enabled"    # Z

    .line 993
    const-string v0, "OmadmServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyOmadmNetworkManager [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 995
    :try_start_21
    iget-object v1, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mOmadmProxy:Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;
    :try_end_23
    .catchall {:try_start_21 .. :try_end_23} :catchall_47

    if-eqz v1, :cond_45

    .line 997
    :try_start_25
    iget-object v1, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mOmadmProxy:Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;

    if-eqz p2, :cond_2b

    const/4 v2, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v2, 0x0

    :goto_2c
    invoke-interface {v1, p1, v2}, Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;->omadmNetManagerReply(II)V
    :try_end_2f
    .catch Landroid/os/DeadObjectException; {:try_start_25 .. :try_end_2f} :catch_39
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2f} :catch_30
    .catchall {:try_start_25 .. :try_end_2f} :catchall_47

    .line 1003
    :goto_2f
    goto :goto_45

    .line 1001
    :catch_30
    move-exception v1

    .line 1002
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_31
    const-string v2, "OmadmServiceImpl"

    const-string v3, "Unexpected Exception "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_45

    .line 998
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_39
    move-exception v1

    .line 999
    .local v1, "e":Landroid/os/DeadObjectException;
    const-string v2, "OmadmServiceImpl"

    const-string v3, "Binder died. Remove listener"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mOmadmProxy:Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;

    .end local v1    # "e":Landroid/os/DeadObjectException;
    goto :goto_2f

    .line 1005
    :cond_45
    :goto_45
    monitor-exit v0

    .line 1006
    return-void

    .line 1005
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_31 .. :try_end_49} :catchall_47

    throw v1
.end method

.method public omadmControllerDispachAdminNetStatus(II)V
    .registers 7
    .param p1, "status"    # I
    .param p2, "netId"    # I

    .line 1009
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1010
    :try_start_3
    iget-object v1, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mOmadmProxy:Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_24

    if-eqz v1, :cond_22

    .line 1012
    :try_start_7
    iget-object v1, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mOmadmProxy:Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;

    invoke-interface {v1, p1, p2}, Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;->omadmControllerDispachAdminNetStatus(II)V
    :try_end_c
    .catch Landroid/os/DeadObjectException; {:try_start_7 .. :try_end_c} :catch_16
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d
    .catchall {:try_start_7 .. :try_end_c} :catchall_24

    .line 1018
    :goto_c
    goto :goto_22

    .line 1016
    :catch_d
    move-exception v1

    .line 1017
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_e
    const-string v2, "OmadmServiceImpl"

    const-string v3, "Unexpected Exception "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    .line 1013
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_16
    move-exception v1

    .line 1014
    .local v1, "e":Landroid/os/DeadObjectException;
    const-string v2, "OmadmServiceImpl"

    const-string v3, "Binder died. Remove listener"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mOmadmProxy:Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;

    .end local v1    # "e":Landroid/os/DeadObjectException;
    goto :goto_c

    .line 1020
    :cond_22
    :goto_22
    monitor-exit v0

    .line 1021
    return-void

    .line 1020
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_e .. :try_end_26} :catchall_24

    throw v1
.end method

.method public request_AdminNetwork(Z)I
    .registers 7
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1026
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mAdNetLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1027
    :try_start_3
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 1028
    .local v1, "subID":I
    const/4 v2, -0x1

    if-ne v2, v1, :cond_24

    .line 1029
    const-string v2, "OmadmServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Phone is not ready. Sub ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    const/16 v2, 0xb

    monitor-exit v0

    return v2

    .line 1032
    :cond_24
    iget-object v2, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3e

    .line 1034
    const-string v2, "OmadmServiceImpl"

    const-string v3, "Unable to acquire Admin Network if Airplane mode ON"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v4}, Lcom/mediatek/omadm/OmadmServiceImpl;->omadmControllerDispachAdminNetStatus(II)V

    .line 1037
    :cond_3e
    iget-object v2, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mFotaManager:Lcom/mediatek/omadm/FotaNetworkManager;

    if-nez v2, :cond_4b

    .line 1038
    new-instance v2, Lcom/mediatek/omadm/FotaNetworkManager;

    iget-object v3, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v1}, Lcom/mediatek/omadm/FotaNetworkManager;-><init>(Lcom/mediatek/omadm/OmadmServiceImpl;Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mFotaManager:Lcom/mediatek/omadm/FotaNetworkManager;

    .line 1040
    :cond_4b
    if-eqz p1, :cond_6a

    .line 1041
    iget-object v2, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mOmadmProxy:Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;

    if-nez v2, :cond_5c

    .line 1042
    const-string v2, "OmadmServiceImpl"

    const-string v3, "No admin network listeners registred"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    const/16 v2, 0xa

    monitor-exit v0

    return v2

    .line 1045
    :cond_5c
    sget-object v2, Lcom/mediatek/omadm/OmadmServiceImpl;->trCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1046
    new-instance v2, Lcom/mediatek/omadm/OmadmServiceImpl$2;

    invoke-direct {v2, p0, v1}, Lcom/mediatek/omadm/OmadmServiceImpl$2;-><init>(Lcom/mediatek/omadm/OmadmServiceImpl;I)V

    .line 1071
    invoke-virtual {v2}, Lcom/mediatek/omadm/OmadmServiceImpl$2;->start()V

    goto :goto_7f

    .line 1073
    :cond_6a
    iget-object v2, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mFotaManager:Lcom/mediatek/omadm/FotaNetworkManager;

    const-string v3, "OmadmServiceImpl"

    invoke-virtual {v2, v3}, Lcom/mediatek/omadm/FotaNetworkManager;->releaseNetwork(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 1074
    sget-object v2, Lcom/mediatek/omadm/OmadmServiceImpl;->trCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v4, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 1075
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mFotaManager:Lcom/mediatek/omadm/FotaNetworkManager;

    .line 1079
    :cond_7f
    :goto_7f
    monitor-exit v0

    return v4

    .line 1080
    .end local v1    # "subID":I
    :catchall_81
    move-exception v1

    monitor-exit v0
    :try_end_83
    .catchall {:try_start_3 .. :try_end_83} :catchall_81

    throw v1
.end method

.method public set_ApnIpvX(II)I
    .registers 6
    .param p1, "apnCls"    # I
    .param p2, "protocol"    # I

    .line 913
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/mediatek/omadm/Apns;->setIpVersions(Landroid/content/Context;II)I

    move-result v0

    .line 914
    .local v0, "rc":I
    sget-boolean v1, Lcom/mediatek/omadm/OmadmServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set_ApnIpvX["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OmadmServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_28
    invoke-virtual {p0, p1}, Lcom/mediatek/omadm/OmadmServiceImpl;->storeApnConfig(I)V

    .line 916
    return v0
.end method

.method public set_ApnName(ILjava/lang/String;)I
    .registers 5
    .param p1, "apnCls"    # I
    .param p2, "apnName"    # Ljava/lang/String;

    .line 889
    sget-boolean v0, Lcom/mediatek/omadm/OmadmServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set_ApnName["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OmadmServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_22
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/mediatek/omadm/Apns;->setName(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    .line 891
    .local v0, "ret":I
    invoke-virtual {p0, p1}, Lcom/mediatek/omadm/OmadmServiceImpl;->storeApnConfig(I)V

    .line 892
    return v0
.end method

.method public set_ImsLvcState(I)I
    .registers 4
    .param p1, "val"    # I

    .line 1107
    sget-boolean v0, Lcom/mediatek/omadm/OmadmServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImsLvcState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OmadmServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    :cond_1f
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mImsConfigManager:Lcom/mediatek/omadm/ImsConfigManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/omadm/ImsConfigManager;->setProvisionedIntValue(II)V

    .line 1110
    const/4 v0, 0x0

    return v0
.end method

.method public set_ImsSmsFormat(I)I
    .registers 4
    .param p1, "format"    # I

    .line 988
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mImsConfigManager:Lcom/mediatek/omadm/ImsConfigManager;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/omadm/ImsConfigManager;->setProvisionedIntValue(II)V

    .line 989
    const/4 v0, 0x0

    return v0
.end method

.method public set_ImsVlt(I)I
    .registers 4
    .param p1, "value"    # I

    .line 1092
    sget-boolean v0, Lcom/mediatek/omadm/OmadmServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImsVlt("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OmadmServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    :cond_1f
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mImsConfigManager:Lcom/mediatek/omadm/ImsConfigManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/omadm/ImsConfigManager;->setProvisionedIntValue(II)V

    .line 1095
    const/4 v0, 0x0

    return v0
.end method

.method public set_ImsVwfState(I)I
    .registers 4
    .param p1, "val"    # I

    .line 1127
    sget-boolean v0, Lcom/mediatek/omadm/OmadmServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImsVwfState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OmadmServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    :cond_1f
    if-eqz p1, :cond_23

    .line 1129
    const/4 p1, 0x0

    goto :goto_24

    .line 1131
    :cond_23
    const/4 p1, 0x1

    .line 1133
    :goto_24
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mImsConfigManager:Lcom/mediatek/omadm/ImsConfigManager;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/omadm/ImsConfigManager;->setProvisionedIntValue(II)V

    .line 1135
    const/4 v0, 0x0

    return v0
.end method

.method public set_IsFactory(I)I
    .registers 4
    .param p1, "val"    # I

    .line 1139
    sget-boolean v0, Lcom/mediatek/omadm/OmadmServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set_IsFactory("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OmadmServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    :cond_1f
    iput p1, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mFactoyMode:I

    .line 1141
    const/4 v0, 0x0

    return v0
.end method

.method public storeApnConfig(I)V
    .registers 9
    .param p1, "idex"    # I

    .line 955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/apn_cfg_idx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 956
    .local v0, "fileName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/mediatek/omadm/OmadmServiceImpl;->get_ApnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    invoke-virtual {p0, p1}, Lcom/mediatek/omadm/OmadmServiceImpl;->get_ApnIpvX(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/mediatek/omadm/OmadmServiceImpl;->is_ApnEnabled(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 958
    .local v1, "Config":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storeApnConfig: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OmadmServiceImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    :try_start_58
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 961
    .local v2, "data":[B
    array-length v4, v2

    .line 962
    .local v4, "cnt":I
    iget-object v5, p0, Lcom/mediatek/omadm/OmadmServiceImpl;->mOmadmProxy:Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;

    invoke-virtual {p0, v4, v2}, Lcom/mediatek/omadm/OmadmServiceImpl;->byteToArrayList(I[B)Ljava/util/ArrayList;

    move-result-object v6

    invoke-interface {v5, v6}, Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;->writeBytes(Ljava/util/ArrayList;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_66} :catch_67

    .line 965
    .end local v2    # "data":[B
    .end local v4    # "cnt":I
    goto :goto_6f

    .line 963
    :catch_67
    move-exception v2

    .line 964
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_6f
    return-void
.end method

.method public support_lrgobj_get()Ljava/lang/String;
    .registers 2

    .line 698
    const-string v0, "false"

    return-object v0
.end method

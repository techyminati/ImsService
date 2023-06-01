.class public final Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;
.super Ljava/lang/Object;
.source "MMTelSSTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;
    }
.end annotation


# static fields
.field private static final CB_ALL:I = 0x5

.field private static CB_FACILITY:[Ljava/lang/String; = null

.field private static final CB_ICB:I = 0x2

.field private static final CB_MO:I = 0x3

.field private static final CB_MT:I = 0x4

.field private static final CB_NONE:I = 0x0

.field private static final CB_OCB:I = 0x1

.field private static CF_REASON:[I = null

.field private static final CLIR_NOT_PROVISION:I = 0x2

.field private static final CLIR_PROVISION:I = 0x1

.field private static final CLIR_TEMP_ALLOW:I = 0x4

.field private static final CLIR_TEMP_DISALLOW:I = 0x3

.field static final DBG:Z = true

.field private static final DEFAULT_WAKE_LOCK_TIMEOUT:I = 0x1388

.field static final EVENT_SEND:I = 0x1

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x2

.field private static final IDENTITY_CLIP:I = 0x0

.field private static final IDENTITY_CLIR:I = 0x1

.field private static final IDENTITY_COLP:I = 0x2

.field private static final IDENTITY_COLR:I = 0x3

.field private static final INSTANCE:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

.field private static final INVALID_PHONE_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "MMTelSS"

.field private static final MATCHED_MEDIA_AUDIO:I = 0x1

.field private static final MATCHED_MEDIA_NO_MATCHED:I = 0x0

.field private static final MATCHED_MEDIA_VIDEO:I = 0x2

.field static final MMTELSS_MAX_COMMAND_BYTES:I = 0x2000

.field static final MMTELSS_REQ_GET_CB:I = 0x7

.field static final MMTELSS_REQ_GET_CF:I = 0x9

.field static final MMTELSS_REQ_GET_CF_TIME_SLOT:I = 0x10

.field static final MMTELSS_REQ_GET_CLIP:I = 0x3

.field static final MMTELSS_REQ_GET_CLIR:I = 0x2

.field static final MMTELSS_REQ_GET_COLP:I = 0x4

.field static final MMTELSS_REQ_GET_COLR:I = 0x5

.field static final MMTELSS_REQ_GET_CW:I = 0xb

.field static final MMTELSS_REQ_SET_CB:I = 0x6

.field static final MMTELSS_REQ_SET_CF:I = 0x8

.field static final MMTELSS_REQ_SET_CF_TIME_SLOT:I = 0xf

.field static final MMTELSS_REQ_SET_CLIP:I = 0xc

.field static final MMTELSS_REQ_SET_CLIR:I = 0x1

.field static final MMTELSS_REQ_SET_COLP:I = 0xd

.field static final MMTELSS_REQ_SET_COLR:I = 0xe

.field static final MMTELSS_REQ_SET_CW:I = 0xa

.field private static final MODE_SS_CS:Ljava/lang/String; = "Prefer CS"

.field private static final MODE_SS_XCAP:Ljava/lang/String; = "Prefer XCAP"

.field private static final MODIFIED_SERVICE_AUDIO:I = 0x1

.field private static final MODIFIED_SERVICE_VIDEO:I = 0x2

.field private static final PROP_SS_CFNUM:Ljava/lang/String; = "persist.vendor.radio.xcap.cfn"

.field private static final PROP_SS_DISABLE_METHOD:Ljava/lang/String; = "persist.vendor.radio.ss.xrdm"

.field private static final PROP_SS_MODE:Ljava/lang/String; = "persist.vendor.radio.ss.mode"

.field private static final SENLOG:Z

.field private static final WAIT_GBA_TIME_OUT:I = 0x3e8

.field private static mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;

.field private static mSimservs:Lcom/mediatek/simservs/client/SimServs;


# instance fields
.field private final CACHE_IDX_CF:I

.field private final CACHE_IDX_CW:I

.field private final CACHE_IDX_ICB:I

.field private final CACHE_IDX_OCB:I

.field private final CACHE_IDX_OIP:I

.field private final CACHE_IDX_OIR:I

.field private final CACHE_IDX_TIP:I

.field private final CACHE_IDX_TIR:I

.field private final CACHE_IDX_TOTAL:I

.field private mCachePhoneId:[I

.field private mCacheSimserv:[Lcom/mediatek/simservs/client/SimservType;

.field mContext:Landroid/content/Context;

.field mFilter:Landroid/content/IntentFilter;

.field private mGbaConnection:Landroid/content/ServiceConnection;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastQueried:[J

.field private mNetwork:Landroid/net/Network;

.field mRequestMessagesPending:I

.field mRequestMessagesWaiting:I

.field mRequestsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;",
            ">;"
        }
    .end annotation
.end field

.field mSender:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;

.field mSenderThread:Landroid/os/HandlerThread;

.field private final mWaitLock:Ljava/lang/Object;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWakeLockTimeout:I

.field private mXcapMobileDataNetworkManager:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

.field private pm:Landroid/os/PowerManager;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 261
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->SENLOG:Z

    .line 264
    new-instance v0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    invoke-direct {v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;-><init>()V

    sput-object v0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->INSTANCE:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    .line 322
    invoke-static {}, Lcom/mediatek/simservs/client/SimServs;->getInstance()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    .line 345
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;

    .line 347
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_34

    sput-object v0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->CF_REASON:[I

    .line 354
    const-string v0, "AO"

    const-string v1, "OI"

    const-string v2, "OX"

    const-string v3, "AI"

    const-string v4, "IR"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->CB_FACILITY:[Ljava/lang/String;

    return-void

    nop

    :array_34
    .array-data 4
        0x1
        0x2
        0x3
        0x6
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .registers 8

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->pm:Landroid/os/PowerManager;

    .line 268
    iput-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mContext:Landroid/content/Context;

    .line 269
    iput-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    .line 270
    iput-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mNetwork:Landroid/net/Network;

    .line 310
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mRequestMessagesPending:I

    .line 318
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    .line 320
    iput-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mFilter:Landroid/content/IntentFilter;

    .line 331
    iput v1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->CACHE_IDX_CF:I

    .line 332
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->CACHE_IDX_OCB:I

    .line 333
    const/4 v1, 0x2

    iput v1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->CACHE_IDX_ICB:I

    .line 334
    const/4 v1, 0x3

    iput v1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->CACHE_IDX_CW:I

    .line 335
    const/4 v1, 0x4

    iput v1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->CACHE_IDX_OIP:I

    .line 336
    const/4 v1, 0x5

    iput v1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->CACHE_IDX_OIR:I

    .line 337
    const/4 v1, 0x6

    iput v1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->CACHE_IDX_TIP:I

    .line 338
    const/4 v1, 0x7

    iput v1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->CACHE_IDX_TIR:I

    .line 339
    const/16 v1, 0x8

    iput v1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->CACHE_IDX_TOTAL:I

    .line 340
    new-array v2, v1, [Lcom/mediatek/simservs/client/SimservType;

    iput-object v2, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mCacheSimserv:[Lcom/mediatek/simservs/client/SimservType;

    .line 341
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mCachePhoneId:[I

    .line 342
    new-array v2, v1, [J

    iput-object v2, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mLastQueried:[J

    .line 343
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mWaitLock:Ljava/lang/Object;

    .line 388
    new-instance v2, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$1;

    invoke-direct {v2, p0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$1;-><init>(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)V

    iput-object v2, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 399
    new-instance v2, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$2;

    invoke-direct {v2, p0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$2;-><init>(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)V

    iput-object v2, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mGbaConnection:Landroid/content/ServiceConnection;

    .line 421
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "MMTelSSTransmitter"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSenderThread:Landroid/os/HandlerThread;

    .line 422
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 423
    iget-object v2, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 424
    .local v2, "looper":Landroid/os/Looper;
    new-instance v3, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;

    invoke-direct {v3, p0, v2}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;-><init>(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSender:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;

    .line 427
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6e
    if-ge v3, v1, :cond_82

    .line 428
    iget-object v4, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mCacheSimserv:[Lcom/mediatek/simservs/client/SimservType;

    aput-object v0, v4, v3

    .line 429
    iget-object v4, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mCachePhoneId:[I

    const/4 v5, -0x1

    aput v5, v4, v3

    .line 430
    iget-object v4, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mLastQueried:[J

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v3

    .line 427
    add-int/lit8 v3, v3, 0x1

    goto :goto_6e

    .line 432
    .end local v3    # "i":I
    :cond_82
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 258
    invoke-direct {p0, p1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->onReceiveSimStateChangedIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    .line 258
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mWaitLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000()[I
    .registers 1

    .line 258
    sget-object v0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->CF_REASON:[I

    return-object v0
.end method

.method static synthetic access$1100()Z
    .registers 1

    .line 258
    sget-boolean v0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->SENLOG:Z

    return v0
.end method

.method static synthetic access$1200()[Ljava/lang/String;
    .registers 1

    .line 258
    sget-object v0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->CB_FACILITY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;I)Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;
    .param p1, "x1"    # I

    .line 258
    invoke-direct {p0, p1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->findAndRemoveRequestFromList(I)Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    .line 258
    invoke-direct {p0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->releaseWakeLockIfDone()V

    return-void
.end method

.method static synthetic access$200()Lcom/mediatek/ims/SuppSrvConfig;
    .registers 1

    .line 258
    sget-object v0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;
    .param p1, "x1"    # I

    .line 258
    invoke-direct {p0, p1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->updateNetworkInitSimServ(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    .line 258
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)Landroid/net/Network;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    .line 258
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)[Lcom/mediatek/simservs/client/SimservType;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    .line 258
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mCacheSimserv:[Lcom/mediatek/simservs/client/SimservType;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)[I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    .line 258
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mCachePhoneId:[I

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)[J
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    .line 258
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mLastQueried:[J

    return-object v0
.end method

.method static synthetic access$900()Lcom/mediatek/simservs/client/SimServs;
    .registers 1

    .line 258
    sget-object v0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    return-object v0
.end method

.method private acquireWakeLock()V
    .registers 6

    .line 3316
    const-string v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=>wakeLock() mRequestMessagesPending = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mRequestMessagesPending:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mRequestsList.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    .line 3318
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3316
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3319
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0

    .line 3320
    :try_start_29
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3321
    iget v1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mRequestMessagesPending:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mRequestMessagesPending:I

    .line 3323
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSender:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->removeMessages(I)V

    .line 3324
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSender:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3325
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSender:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;

    iget v3, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mWakeLockTimeout:I

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3326
    nop

    .end local v1    # "msg":Landroid/os/Message;
    monitor-exit v0

    .line 3327
    return-void

    .line 3326
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_29 .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method private findAndRemoveRequestFromList(I)Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    .registers 7
    .param p1, "serial"    # I

    .line 3347
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3348
    const/4 v1, 0x0

    .local v1, "i":I
    :try_start_4
    iget-object v2, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "s":I
    :goto_a
    if-ge v1, v2, :cond_2a

    .line 3349
    iget-object v3, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;

    .line 3351
    .local v3, "rr":Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    iget v4, v3, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mSerial:I

    if-ne v4, p1, :cond_27

    .line 3352
    iget-object v4, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3353
    iget v4, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mRequestMessagesWaiting:I

    if-lez v4, :cond_25

    .line 3354
    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mRequestMessagesWaiting:I

    .line 3355
    :cond_25
    monitor-exit v0

    return-object v3

    .line 3348
    .end local v3    # "rr":Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 3358
    .end local v1    # "i":I
    .end local v2    # "s":I
    :cond_2a
    monitor-exit v0

    .line 3360
    const/4 v0, 0x0

    return-object v0

    .line 3358
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public static getInstance()Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;
    .registers 1

    .line 435
    sget-object v0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->INSTANCE:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    return-object v0
.end method

.method private isGbaServiceRunning(Landroid/content/Context;)Z
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .line 494
    const/4 v0, 0x0

    .line 495
    .local v0, "isRunning":Z
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 496
    .local v1, "am":Landroid/app/ActivityManager;
    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v2

    .line 498
    .local v2, "runningServices":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_37

    .line 499
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 500
    .local v4, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.mediatek.gba.GbaService"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 501
    const-string v5, "MMTelSS"

    const-string v6, "Gba service is running"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 v0, 0x1

    .line 503
    goto :goto_37

    .line 498
    .end local v4    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 506
    .end local v3    # "i":I
    :cond_37
    :goto_37
    return v0
.end method

.method private onReceiveSimStateChangedIntent(Landroid/content/Intent;)V
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;

    .line 574
    const-string v0, "ss"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 575
    .local v0, "simStatus":Ljava/lang/String;
    const-string v1, "phone"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 576
    .local v1, "phoneId":I
    const-string v3, "ABSENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 577
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 578
    :cond_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceiveSimStateChangedIntent: simStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MMTelSS"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_40
    const/16 v4, 0x8

    if-ge v3, v4, :cond_56

    .line 582
    iget-object v4, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mCacheSimserv:[Lcom/mediatek/simservs/client/SimservType;

    const/4 v5, 0x0

    aput-object v5, v4, v3

    .line 583
    iget-object v4, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mCachePhoneId:[I

    aput v2, v4, v3

    .line 584
    iget-object v4, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mLastQueried:[J

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v3

    .line 581
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    .line 588
    .end local v3    # "i":I
    :cond_56
    sget-object v2, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/SimServs;->resetParameters()V

    .line 590
    :cond_5b
    return-void
.end method

.method private releaseWakeLockIfDone()V
    .registers 4

    .line 3331
    const-string v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wakeLock()=> mRequestMessagesPending = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mRequestMessagesPending:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mRequestsList.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    .line 3333
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3331
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3334
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0

    .line 3335
    :try_start_29
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_48

    iget v1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mRequestMessagesPending:I

    if-nez v1, :cond_48

    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    .line 3338
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_48

    .line 3340
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSender:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->removeMessages(I)V

    .line 3341
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3343
    :cond_48
    monitor-exit v0

    .line 3344
    return-void

    .line 3343
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_29 .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method static requestToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "request"    # I

    .line 3365
    packed-switch p0, :pswitch_data_36

    .line 3384
    const-string v0, "UNKNOWN MMTELSS REQ"

    return-object v0

    .line 3382
    :pswitch_6
    const-string v0, "GET_CF_TIME_SLOT"

    return-object v0

    .line 3381
    :pswitch_9
    const-string v0, "SET_CF_TIME_SLOT"

    return-object v0

    .line 3373
    :pswitch_c
    const-string v0, "SET_COLR"

    return-object v0

    .line 3371
    :pswitch_f
    const-string v0, "SET_COLP"

    return-object v0

    .line 3369
    :pswitch_12
    const-string v0, "SET_CLIP"

    return-object v0

    .line 3375
    :pswitch_15
    const-string v0, "GET_CW"

    return-object v0

    .line 3374
    :pswitch_18
    const-string v0, "SET_CW"

    return-object v0

    .line 3379
    :pswitch_1b
    const-string v0, "GET_CF"

    return-object v0

    .line 3378
    :pswitch_1e
    const-string v0, "SET_CF"

    return-object v0

    .line 3377
    :pswitch_21
    const-string v0, "GET_CB"

    return-object v0

    .line 3376
    :pswitch_24
    const-string v0, "SET_CB"

    return-object v0

    .line 3372
    :pswitch_27
    const-string v0, "GET_COLR"

    return-object v0

    .line 3370
    :pswitch_2a
    const-string v0, "GET_COLP"

    return-object v0

    .line 3368
    :pswitch_2d
    const-string v0, "GET_CLIP"

    return-object v0

    .line 3367
    :pswitch_30
    const-string v0, "GET_CLIR"

    return-object v0

    .line 3366
    :pswitch_33
    const-string v0, "SET_CLIR"

    return-object v0

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private requestXcapNetwork(I)V
    .registers 5
    .param p1, "phoneId"    # I

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestXcapNetwork(): phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mXcapMobileDataNetworkManager = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MMTelSS"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mNetwork:Landroid/net/Network;

    .line 464
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    if-eqz v0, :cond_43

    .line 465
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->acquireNetwork(I)Landroid/net/Network;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mNetwork:Landroid/net/Network;

    .line 467
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mContext:Landroid/content/Context;

    .line 468
    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 469
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_43

    .line 470
    const-string v2, "Bind process to xcap network"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    .line 474
    .end local v0    # "connMgr":Landroid/net/ConnectivityManager;
    :cond_43
    return-void
.end method

.method private send(Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;)V
    .registers 4
    .param p1, "rr"    # Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;

    .line 3392
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSender:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3393
    .local v0, "msg":Landroid/os/Message;
    invoke-direct {p0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->acquireWakeLock()V

    .line 3394
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3396
    return-void
.end method

.method private startGbaService(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 477
    const-string v0, "MMTelSS"

    const-string v1, "start gba service"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mWaitLock:Ljava/lang/Object;

    monitor-enter v0

    .line 479
    :try_start_a
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.mediatek.gba"

    const-string v3, "com.mediatek.gba.GbaService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    .local v1, "gbaService":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 482
    .local v2, "gbaIntent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 483
    iget-object v3, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mGbaConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 484
    const-string v3, "MMTelSS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Is gba service running = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->isGbaServiceRunning(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_a .. :try_end_3d} :catchall_4f

    .line 486
    :try_start_3d
    iget-object v3, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mWaitLock:Ljava/lang/Object;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_3d .. :try_end_44} :catch_45
    .catchall {:try_start_3d .. :try_end_44} :catchall_4f

    .line 489
    goto :goto_4d

    .line 487
    :catch_45
    move-exception v3

    .line 488
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_46
    const-string v4, "MMTelSS"

    const-string v5, "wait request interrupted"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    .end local v1    # "gbaService":Landroid/content/ComponentName;
    .end local v2    # "gbaIntent":Landroid/content/Intent;
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_4d
    monitor-exit v0

    .line 491
    return-void

    .line 490
    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_46 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method private updateNetworkInitSimServ(I)Z
    .registers 9
    .param p1, "phoneId"    # I

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateNetworkInitSimServ:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MMTelSS"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    sget-object v0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;

    invoke-virtual {v0}, Lcom/mediatek/ims/SuppSrvConfig;->isNotSupportXcap()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_25

    .line 513
    const-string v0, "Use CS instead of XCAP."

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    return v2

    .line 517
    :cond_25
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->initSimserv(Landroid/content/Context;I)Lcom/mediatek/simservs/client/SimServs;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    .line 519
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->getXcapRootUri(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 520
    .local v0, "xcapRoot":Ljava/lang/String;
    if-eqz v0, :cond_83

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3c

    goto :goto_83

    .line 525
    :cond_3c
    iget-object v3, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->isGbaServiceRunning(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_49

    .line 526
    iget-object v3, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->startGbaService(Landroid/content/Context;)V

    .line 530
    :cond_49
    invoke-direct {p0, p1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->requestXcapNetwork(I)V

    .line 531
    iget-object v3, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mNetwork:Landroid/net/Network;

    invoke-virtual {p0, v0, p1, v3}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->initAuthentication(Ljava/lang/String;ILandroid/net/Network;)V

    .line 537
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    .line 538
    .local v3, "subId":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    .line 539
    .local v4, "defaultDataPhoneId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "defaultDataPhoneId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", phoneId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v5, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mNetwork:Landroid/net/Network;

    if-nez v5, :cond_81

    if-eq v4, p1, :cond_81

    .line 541
    const-string v5, "mNetwork is null anddefault data doesn\'t match the current SIM card, request XCAP failed."

    invoke-static {v1, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    return v2

    .line 545
    :cond_81
    const/4 v1, 0x1

    return v1

    .line 521
    .end local v3    # "subId":I
    .end local v4    # "defaultDataPhoneId":I
    :cond_83
    :goto_83
    const-string v3, "XcapRoot is empty"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    return v2
.end method


# virtual methods
.method public getCLIR(Landroid/os/Message;I)V
    .registers 5
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "phoneId"    # I

    .line 3039
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;

    .line 3040
    const/4 v0, 0x2

    invoke-static {v0, p1}, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;

    move-result-object v0

    .line 3041
    .local v0, "rr":Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3042
    invoke-direct {p0, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->send(Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;)V

    .line 3043
    return-void
.end method

.method public getCOLP(Landroid/os/Message;I)V
    .registers 5
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "phoneId"    # I

    .line 3095
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;

    .line 3096
    nop

    .line 3097
    const/4 v0, 0x4

    invoke-static {v0, p1}, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;

    move-result-object v0

    .line 3098
    .local v0, "rr":Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3099
    invoke-direct {p0, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->send(Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;)V

    .line 3100
    return-void
.end method

.method public getCOLR(Landroid/os/Message;I)V
    .registers 5
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "phoneId"    # I

    .line 3124
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;

    .line 3125
    nop

    .line 3126
    const/4 v0, 0x5

    invoke-static {v0, p1}, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;

    move-result-object v0

    .line 3127
    .local v0, "rr":Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3128
    invoke-direct {p0, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->send(Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;)V

    .line 3129
    return-void
.end method

.method public initAuthentication(Ljava/lang/String;ILandroid/net/Network;)V
    .registers 8
    .param p1, "xcapRoot"    # Ljava/lang/String;
    .param p2, "phoneId"    # I
    .param p3, "network"    # Landroid/net/Network;

    .line 549
    sget-object v0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;

    invoke-virtual {v0}, Lcom/mediatek/ims/SuppSrvConfig;->getDigestId()Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, "digestId":Ljava/lang/String;
    sget-object v1, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;

    invoke-virtual {v1}, Lcom/mediatek/ims/SuppSrvConfig;->getDigestPwd()Ljava/lang/String;

    move-result-object v1

    .line 552
    .local v1, "digestPwd":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initAuthentication: xcapRoot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->SENLOG:Z

    if-nez v3, :cond_1c

    move-object v3, p1

    goto :goto_1e

    :cond_1c
    const-string v3, "[hidden]"

    :goto_1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", network="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", digestId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", digestPwd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MMTelSS"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_65

    .line 557
    :cond_56
    new-instance v2, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$3;

    invoke-direct {v2, p0, p2}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$3;-><init>(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;I)V

    invoke-static {v2}, Ljava/net/Authenticator;->setDefault(Ljava/net/Authenticator;)V

    .line 569
    const-string v2, "http.digest.support"

    const-string v3, "true"

    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 571
    :cond_65
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;I)V
    .registers 5
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "phoneId"    # I

    .line 3067
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;

    .line 3068
    const/4 v0, 0x3

    invoke-static {v0, p1}, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;

    move-result-object v0

    .line 3069
    .local v0, "rr":Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3070
    invoke-direct {p0, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->send(Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;)V

    .line 3071
    return-void
.end method

.method public queryCallForwardInTimeSlotStatus(IILandroid/os/Message;I)V
    .registers 8
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;
    .param p4, "phoneId"    # I

    .line 3303
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;

    .line 3304
    const/16 v0, 0x10

    invoke-static {v0, p3}, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;

    move-result-object v0

    .line 3305
    .local v0, "rr":Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3307
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3308
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3309
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3310
    invoke-direct {p0, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->send(Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;)V

    .line 3311
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;I)V
    .registers 9
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;
    .param p5, "phoneId"    # I

    .line 3242
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;

    .line 3243
    const/16 v0, 0x9

    invoke-static {v0, p4}, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;

    move-result-object v0

    .line 3245
    .local v0, "rr":Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3247
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3248
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3250
    if-eqz p3, :cond_26

    .line 3251
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2d

    .line 3253
    :cond_26
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3255
    :goto_2d
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3257
    invoke-direct {p0, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->send(Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;)V

    .line 3259
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;I)V
    .registers 6
    .param p1, "serviceClass"    # I
    .param p2, "response"    # Landroid/os/Message;
    .param p3, "phoneId"    # I

    .line 3156
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;

    .line 3157
    const/16 v0, 0xb

    invoke-static {v0, p2}, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;

    move-result-object v0

    .line 3158
    .local v0, "rr":Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3159
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3160
    invoke-direct {p0, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->send(Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;)V

    .line 3161
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;I)V
    .registers 8
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "response"    # Landroid/os/Message;
    .param p5, "phoneId"    # I

    .line 3197
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;

    .line 3198
    const/4 v0, 0x7

    invoke-static {v0, p4}, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;

    move-result-object v0

    .line 3199
    .local v0, "rr":Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3200
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3201
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3202
    invoke-direct {p0, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->send(Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;)V

    .line 3203
    return-void
.end method

.method public registerUtService(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 439
    iput-object p1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mContext:Landroid/content/Context;

    .line 440
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string v1, "MMTelSS"

    if-nez v0, :cond_27

    .line 441
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->pm:Landroid/os/PowerManager;

    .line 442
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 443
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 444
    const/16 v0, 0x1388

    const-string v2, "ro.ril.wake_lock_timeout"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mWakeLockTimeout:I

    .line 449
    :cond_27
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    if-nez v0, :cond_3a

    .line 450
    new-instance v0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    iget-object v2, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    .line 453
    :cond_3a
    const-string v0, "registerReceiver"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mFilter:Landroid/content/IntentFilter;

    .line 455
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 458
    return-void
.end method

.method public setCLIP(ILandroid/os/Message;I)V
    .registers 6
    .param p1, "clipEnable"    # I
    .param p2, "result"    # Landroid/os/Message;
    .param p3, "phoneId"    # I

    .line 3053
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;

    .line 3054
    const/16 v0, 0xc

    invoke-static {v0, p2}, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;

    move-result-object v0

    .line 3055
    .local v0, "rr":Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3056
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3057
    invoke-direct {p0, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->send(Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;)V

    .line 3058
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;I)V
    .registers 6
    .param p1, "clirMode"    # I
    .param p2, "result"    # Landroid/os/Message;
    .param p3, "phoneId"    # I

    .line 3022
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;

    .line 3023
    const/4 v0, 0x1

    invoke-static {v0, p2}, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;

    move-result-object v0

    .line 3027
    .local v0, "rr":Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3028
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3029
    invoke-direct {p0, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->send(Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;)V

    .line 3030
    return-void
.end method

.method public setCOLP(ILandroid/os/Message;I)V
    .registers 6
    .param p1, "colpEnable"    # I
    .param p2, "result"    # Landroid/os/Message;
    .param p3, "phoneId"    # I

    .line 3081
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;

    .line 3082
    const/16 v0, 0xd

    invoke-static {v0, p2}, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;

    move-result-object v0

    .line 3083
    .local v0, "rr":Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3084
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3085
    invoke-direct {p0, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->send(Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;)V

    .line 3086
    return-void
.end method

.method public setCOLR(ILandroid/os/Message;I)V
    .registers 6
    .param p1, "colrMode"    # I
    .param p2, "result"    # Landroid/os/Message;
    .param p3, "phoneId"    # I

    .line 3110
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;

    .line 3111
    const/16 v0, 0xe

    invoke-static {v0, p2}, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;

    move-result-object v0

    .line 3112
    .local v0, "rr":Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3113
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3114
    invoke-direct {p0, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->send(Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;)V

    .line 3115
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;I)V
    .registers 10
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "response"    # Landroid/os/Message;
    .param p7, "phoneId"    # I

    .line 3218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->SENLOG:Z

    if-nez v1, :cond_10

    move-object v1, p4

    goto :goto_12

    :cond_10
    const-string v1, "[hidden]"

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MMTelSS"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3219
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;

    .line 3220
    const/16 v0, 0x8

    invoke-static {v0, p6}, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;

    move-result-object v0

    .line 3221
    .local v0, "rr":Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3222
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3223
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3224
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3225
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3226
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 3227
    invoke-direct {p0, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->send(Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;)V

    .line 3228
    return-void
.end method

.method public setCallForwardInTimeSlot(IIILjava/lang/String;I[JLandroid/os/Message;I)V
    .registers 11
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "timeSlot"    # [J
    .param p7, "response"    # Landroid/os/Message;
    .param p8, "phoneId"    # I

    .line 3277
    if-eqz p4, :cond_29

    const-string v0, "sip:"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "sips:"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 3278
    const-string v0, "tel:"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 3279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 3281
    :cond_29
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;

    .line 3282
    const/16 v0, 0xf

    invoke-static {v0, p7}, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;

    move-result-object v0

    .line 3283
    .local v0, "rr":Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3284
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3285
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3286
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3287
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3288
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 3289
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 3290
    invoke-direct {p0, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->send(Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;)V

    .line 3291
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;I)V
    .registers 8
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;
    .param p4, "phoneId"    # I

    .line 3140
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;

    .line 3141
    const/16 v0, 0xa

    invoke-static {v0, p3}, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;

    move-result-object v0

    .line 3142
    .local v0, "rr":Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    if-ne p1, v2, :cond_14

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3143
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3144
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3145
    invoke-direct {p0, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->send(Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;)V

    .line 3146
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;I)V
    .registers 10
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "response"    # Landroid/os/Message;
    .param p6, "phoneId"    # I

    .line 3175
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;

    .line 3176
    const/4 v0, 0x6

    invoke-static {v0, p5}, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;

    move-result-object v0

    .line 3177
    .local v0, "rr":Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3178
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    if-ne p2, v2, :cond_18

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3179
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3180
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3181
    invoke-direct {p0, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->send(Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;)V

    .line 3182
    return-void
.end method

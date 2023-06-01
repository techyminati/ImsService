.class public Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;
.super Ljava/lang/Object;
.source "XcapMobileDataNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager$NetworkHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "XcapMobileDataNetworkManager"

.field private static final MSG_RELEASE_NETWORK:I = 0x0

.field public static final TYPE_XCAP:I = 0x800

.field private static mDataCoolDownTimer:I

.field private static mKeepAliveTimer:I

.field private static mRequestTimer:I


# instance fields
.field private isNotifyByDataDisconnected:Z

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDataUsedPhoneId:I

.field private mHandlerReleaseNW:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mNetwork:Landroid/net/Network;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreviousReleaseTime:J

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mXcapDataConnectionState:I

.field private mXcapMobileDataNetworkRequestCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mKeepAliveTimer:I

    .line 57
    sput v0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mRequestTimer:I

    .line 58
    sput v0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mDataCoolDownTimer:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mPreviousReleaseTime:J

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mHandlerReleaseNW:Landroid/os/Handler;

    .line 65
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mDataUsedPhoneId:I

    .line 75
    iput v1, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mXcapDataConnectionState:I

    .line 76
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->isNotifyByDataDisconnected:Z

    .line 88
    iput-object p1, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mContext:Landroid/content/Context;

    .line 89
    iput-object v0, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 90
    iput-object v0, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mNetwork:Landroid/net/Network;

    .line 91
    iput v1, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mXcapMobileDataNetworkRequestCount:I

    .line 92
    iput-object v0, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 94
    new-instance v0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager$NetworkHandler;

    invoke-direct {v0, p0, p2}, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager$NetworkHandler;-><init>(Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mHandlerReleaseNW:Landroid/os/Handler;

    .line 96
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 100
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PhoneStateListenerNotify"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 101
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;)Landroid/net/Network;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    .line 51
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;Landroid/net/Network;)Landroid/net/Network;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;
    .param p1, "x1"    # Landroid/net/Network;

    .line 51
    iput-object p1, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mNetwork:Landroid/net/Network;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    .line 51
    invoke-direct {p0}, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->releaseRequest()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    .line 51
    invoke-direct {p0}, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->stopListenXcapDataConnectionState()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;
    .param p1, "x1"    # I

    .line 51
    invoke-direct {p0, p1}, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->dataStateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    .line 51
    iget v0, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mXcapDataConnectionState:I

    return v0
.end method

.method static synthetic access$402(Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;
    .param p1, "x1"    # I

    .line 51
    iput p1, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mXcapDataConnectionState:I

    return p1
.end method

.method static synthetic access$502(Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;
    .param p1, "x1"    # Z

    .line 51
    iput-boolean p1, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->isNotifyByDataDisconnected:Z

    return p1
.end method

.method private dataStateToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "state"    # I

    .line 324
    packed-switch p1, :pswitch_data_16

    .line 336
    const-string v0, "Error"

    return-object v0

    .line 334
    :pswitch_6
    const-string v0, "DATA_SUSPENDED"

    return-object v0

    .line 332
    :pswitch_9
    const-string v0, "DATA_CONNECTED"

    return-object v0

    .line 330
    :pswitch_c
    const-string v0, "DATA_CONNECTING"

    return-object v0

    .line 328
    :pswitch_f
    const-string v0, "DATA_DISCONNECTED"

    return-object v0

    .line 326
    :pswitch_12
    const-string v0, "DATA_UNKNOWN"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch -0x1
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .registers 3

    .line 316
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_10

    .line 317
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 320
    :cond_10
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private getSubIdUsingPhoneId(I)I
    .registers 5
    .param p1, "phoneId"    # I

    .line 387
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 388
    .local v0, "subIds":[I
    const/4 v1, -0x1

    .line 389
    .local v1, "subId":I
    array-length v2, v0

    if-eqz v2, :cond_b

    .line 390
    const/4 v2, 0x0

    aget v1, v0, v2

    .line 392
    :cond_b
    return v1
.end method

.method private newRequest(I)V
    .registers 9
    .param p1, "phoneId"    # I

    .line 235
    invoke-direct {p0}, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 237
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-direct {p0, p1}, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 238
    .local v1, "subId":I
    new-instance v2, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager$1;

    invoke-direct {v2, p0}, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager$1;-><init>(Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;)V

    iput-object v2, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newRequest, subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XcapMobileDataNetworkManager"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 274
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    .line 275
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    .line 281
    .local v2, "networkBuilder":Landroid/net/NetworkRequest$Builder;
    iget-object v3, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v3

    .line 283
    .local v3, "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    invoke-virtual {v3}, Lcom/mediatek/ims/SuppSrvConfig;->isUseInternetTypeApn()Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 284
    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 285
    const/16 v4, 0xd

    invoke-virtual {v2, v4}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    goto :goto_53

    .line 287
    :cond_4e
    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 289
    :goto_53
    invoke-direct {p0, p1}, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->startListenXcapDataConnectionState(I)V

    .line 290
    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v4

    .line 291
    .local v4, "networkRequest":Landroid/net/NetworkRequest;
    iget-object v5, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    sget v6, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mRequestTimer:I

    invoke-virtual {v0, v4, v5, v6}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;I)V

    .line 292
    return-void
.end method

.method private releaseRequest()V
    .registers 6

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseRequest: mNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mNetworkCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XcapMobileDataNetworkManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-direct {p0}, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 298
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    iget-object v2, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v2, :cond_2d

    .line 299
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 301
    :cond_2d
    iget-object v2, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mNetwork:Landroid/net/Network;

    if-eqz v2, :cond_4d

    .line 302
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mPreviousReleaseTime:J

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Release time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mPreviousReleaseTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_4d
    const/4 v2, 0x0

    if-eqz v0, :cond_58

    .line 306
    const-string v3, "UnBind process network"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    .line 309
    :cond_58
    iput-object v2, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 310
    iput-object v2, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mNetwork:Landroid/net/Network;

    .line 311
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mXcapMobileDataNetworkRequestCount:I

    .line 312
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mDataUsedPhoneId:I

    .line 313
    return-void
.end method

.method public static setDataCoolDownTimer(I)V
    .registers 3
    .param p0, "timer"    # I

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDataCoolDownTimer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XcapMobileDataNetworkManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    sput p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mDataCoolDownTimer:I

    .line 117
    return-void
.end method

.method public static setKeepAliveTimer(I)V
    .registers 3
    .param p0, "timer"    # I

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setKeepAliveTimer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XcapMobileDataNetworkManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sput p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mKeepAliveTimer:I

    .line 107
    return-void
.end method

.method public static setRequestDataTimer(I)V
    .registers 3
    .param p0, "timer"    # I

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRequestDataTimer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XcapMobileDataNetworkManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sput p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mRequestTimer:I

    .line 112
    return-void
.end method

.method private startListenXcapDataConnectionState(I)V
    .registers 6
    .param p1, "phoneId"    # I

    .line 342
    invoke-direct {p0, p1}, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->getSubIdUsingPhoneId(I)I

    move-result v0

    .line 343
    .local v0, "subId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startListenXcapDataConnectionState: subid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XcapMobileDataNetworkManager"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    new-instance v1, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager$2;

    iget-object v2, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager$2;-><init>(Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 370
    iget-object v2, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_30

    .line 371
    const/16 v3, 0x1000

    invoke-virtual {v2, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 374
    :cond_30
    return-void
.end method

.method private stopListenXcapDataConnectionState()V
    .registers 4

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopListenXcapDataConnectionState: listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XcapMobileDataNetworkManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_24

    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v1, :cond_24

    .line 380
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 382
    :cond_24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 383
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mXcapDataConnectionState:I

    .line 384
    return-void
.end method


# virtual methods
.method public acquireNetwork(I)Landroid/net/Network;
    .registers 14
    .param p1, "phoneId"    # I

    .line 125
    const-string v0, "XcapMobileDataNetworkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquireNetwork: phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v0

    .line 128
    .local v0, "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    invoke-virtual {v0}, Lcom/mediatek/ims/SuppSrvConfig;->isUseXCAPTypeApn()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_31

    invoke-virtual {v0}, Lcom/mediatek/ims/SuppSrvConfig;->isUseInternetTypeApn()Z

    move-result v1

    if-nez v1, :cond_31

    .line 129
    const-string v1, "XcapMobileDataNetworkManager"

    const-string v3, "not use any APN. No need to acquireNetwork"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-object v2

    .line 132
    :cond_31
    monitor-enter p0

    .line 133
    :try_start_32
    const-string v1, "XcapMobileDataNetworkManager"

    const-string v3, "acquireNetwork start"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget v1, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mXcapMobileDataNetworkRequestCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mXcapMobileDataNetworkRequestCount:I

    .line 135
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mHandlerReleaseNW:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 137
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_73

    .line 138
    iget v1, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mDataUsedPhoneId:I

    if-eq v1, p1, :cond_57

    .line 139
    invoke-direct {p0}, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->releaseRequest()V

    .line 140
    iget v1, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mXcapMobileDataNetworkRequestCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mXcapMobileDataNetworkRequestCount:I

    goto :goto_73

    .line 142
    :cond_57
    const-string v1, "XcapMobileDataNetworkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "already available: mNetwork="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mNetwork:Landroid/net/Network;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mNetwork:Landroid/net/Network;

    monitor-exit p0

    return-object v1

    .line 147
    :cond_73
    :goto_73
    const-string v1, "XcapMobileDataNetworkManager"

    const-string v4, "start new network request"

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iput p1, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mDataUsedPhoneId:I

    .line 149
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 150
    .local v4, "current":J
    iget-wide v6, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mPreviousReleaseTime:J

    sub-long v6, v4, v6

    .line 151
    .local v6, "coolDownDuration":J
    sget v1, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mDataCoolDownTimer:I

    int-to-long v8, v1

    cmp-long v8, v6, v8

    if-lez v8, :cond_8e

    .line 152
    const-wide/16 v8, 0x0

    goto :goto_90

    :cond_8e
    int-to-long v8, v1

    sub-long/2addr v8, v6

    .line 154
    .local v8, "waitCoolDown":J
    :goto_90
    const-string v1, "XcapMobileDataNetworkManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "waitCoolDown="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", coolDownDuration="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", mDataCoolDownTimer="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v11, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mDataCoolDownTimer:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b8
    .catchall {:try_start_32 .. :try_end_b8} :catchall_132

    .line 158
    :try_start_b8
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_bb
    .catch Ljava/lang/InterruptedException; {:try_start_b8 .. :try_end_bb} :catch_bc
    .catchall {:try_start_b8 .. :try_end_bb} :catchall_132

    .line 161
    goto :goto_c4

    .line 159
    :catch_bc
    move-exception v1

    .line 160
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_bd
    const-string v10, "XcapMobileDataNetworkManager"

    const-string v11, "wait cool down interrupted"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_c4
    invoke-direct {p0, p1}, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->newRequest(I)V

    .line 165
    const-string v1, "XcapMobileDataNetworkManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "wait request result ... mRequestTimer="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v11, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mRequestTimer:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_df
    .catchall {:try_start_bd .. :try_end_df} :catchall_132

    .line 167
    :try_start_df
    sget v1, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mRequestTimer:I

    int-to-long v10, v1

    invoke-virtual {p0, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_e5
    .catch Ljava/lang/InterruptedException; {:try_start_df .. :try_end_e5} :catch_e6
    .catchall {:try_start_df .. :try_end_e5} :catchall_132

    .line 170
    goto :goto_ee

    .line 168
    :catch_e6
    move-exception v1

    .line 169
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    :try_start_e7
    const-string v10, "XcapMobileDataNetworkManager"

    const-string v11, "wait request interrupted"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_ee
    const-string v1, "XcapMobileDataNetworkManager"

    const-string v10, "continue ..."

    invoke-static {v1, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_115

    .line 174
    const-string v1, "XcapMobileDataNetworkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireNetwork success: mNetwork="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mNetwork:Landroid/net/Network;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mNetwork:Landroid/net/Network;

    monitor-exit p0

    return-object v1

    .line 177
    :cond_115
    iget-boolean v1, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->isNotifyByDataDisconnected:Z

    if-eqz v1, :cond_123

    .line 178
    const-string v1, "XcapMobileDataNetworkManager"

    const-string v10, "create xcap data connection failed"

    invoke-static {v1, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iput-boolean v3, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->isNotifyByDataDisconnected:Z

    goto :goto_12a

    .line 181
    :cond_123
    const-string v1, "XcapMobileDataNetworkManager"

    const-string v3, "timed out"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :goto_12a
    invoke-direct {p0}, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->stopListenXcapDataConnectionState()V

    .line 184
    invoke-direct {p0}, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->releaseRequest()V

    .line 185
    .end local v4    # "current":J
    .end local v6    # "coolDownDuration":J
    .end local v8    # "waitCoolDown":J
    monitor-exit p0

    .line 187
    return-object v2

    .line 185
    :catchall_132
    move-exception v1

    monitor-exit p0
    :try_end_134
    .catchall {:try_start_e7 .. :try_end_134} :catchall_132

    throw v1
.end method

.method public releaseNetwork()V
    .registers 5

    .line 213
    monitor-enter p0

    .line 214
    :try_start_1
    iget v0, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mXcapMobileDataNetworkRequestCount:I

    if-lez v0, :cond_4a

    .line 215
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mXcapMobileDataNetworkRequestCount:I

    .line 216
    const-string v0, "XcapMobileDataNetworkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseNetwork count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mXcapMobileDataNetworkRequestCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget v0, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mXcapMobileDataNetworkRequestCount:I

    if-ge v0, v1, :cond_4a

    .line 218
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mNetwork:Landroid/net/Network;

    if-nez v0, :cond_34

    .line 219
    const-string v0, "XcapMobileDataNetworkManager"

    const-string v1, "No dedicate network here, release directly."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-direct {p0}, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->releaseRequest()V

    goto :goto_4a

    .line 222
    :cond_34
    const-string v0, "XcapMobileDataNetworkManager"

    const-string v1, "Delay release network."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mHandlerReleaseNW:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 224
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mHandlerReleaseNW:Landroid/os/Handler;

    sget v2, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mKeepAliveTimer:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 228
    .end local v0    # "msg":Landroid/os/Message;
    :cond_4a
    :goto_4a
    monitor-exit p0

    .line 229
    return-void

    .line 228
    :catchall_4c
    move-exception v0

    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_1 .. :try_end_4e} :catchall_4c

    throw v0
.end method

.class public Lcom/mediatek/ims/rcse/MtkSipTransport;
.super Landroid/telephony/ims/stub/SipTransportImplBase;
.source "MtkSipTransport.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MtkSipTransport"


# instance fields
.field private cellularCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private cm:Landroid/net/ConnectivityManager;

.field private ipv4localAddress:Ljava/lang/String;

.field private ipv6localAddress:Ljava/lang/String;

.field private localAddr:Ljava/net/InetSocketAddress;

.field private logger:Lcom/mediatek/ims/utils/logger/Logger;

.field private mCid:Ljava/lang/String;

.field private mConfig:Lcom/mediatek/ims/rcsua/Configuration;

.field private mContext:Landroid/content/Context;

.field private mCurrentPlmn:Ljava/lang/String;

.field private mDelegateMessageCallback:Landroid/telephony/ims/DelegateMessageCallback;

.field private mDelegateStateCallBack:Landroid/telephony/ims/DelegateStateCallback;

.field private final mDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/ims/rcse/MtkSipDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mLac:Ljava/lang/String;

.field private mLinkProp:Landroid/net/LinkProperties;

.field private mNetworkObj:Landroid/net/Network;

.field private mOldPlmn:Ljava/lang/String;

.field private mPcscfList:[Ljava/lang/String;

.field private mSlotId:I

.field private sipConfig:Landroid/telephony/ims/SipDelegateConfiguration;

.field private tm:Landroid/telephony/TelephonyManager;

.field private wifiCallback:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Landroid/content/Context;)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "context"    # Landroid/content/Context;

    .line 95
    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/SipTransportImplBase;-><init>(Ljava/util/concurrent/Executor;)V

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mSlotId:I

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mDelegates:Ljava/util/ArrayList;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mDelegateStateCallBack:Landroid/telephony/ims/DelegateStateCallback;

    .line 74
    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mDelegateMessageCallback:Landroid/telephony/ims/DelegateMessageCallback;

    .line 75
    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mContext:Landroid/content/Context;

    .line 76
    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mConfig:Lcom/mediatek/ims/rcsua/Configuration;

    .line 77
    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->sipConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    .line 78
    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->localAddr:Ljava/net/InetSocketAddress;

    .line 79
    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->cm:Landroid/net/ConnectivityManager;

    .line 80
    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->tm:Landroid/telephony/TelephonyManager;

    .line 81
    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->cellularCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 82
    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->wifiCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 83
    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mNetworkObj:Landroid/net/Network;

    .line 84
    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mLinkProp:Landroid/net/LinkProperties;

    .line 86
    const-string v1, ""

    iput-object v1, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mLac:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mCid:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mOldPlmn:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mCurrentPlmn:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->ipv6localAddress:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->ipv4localAddress:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    .line 96
    const-string v0, "MtkSipTransport"

    invoke-static {v0}, Lcom/mediatek/ims/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/mediatek/ims/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    .line 97
    iput-object p2, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mContext:Landroid/content/Context;

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " MtkSipTransport executor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ,mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->cm:Landroid/net/ConnectivityManager;

    .line 100
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " MtkSipTransport cm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->tm:Landroid/telephony/TelephonyManager;

    .line 102
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " MtkSipTransport tm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 103
    invoke-direct {p0}, Lcom/mediatek/ims/rcse/MtkSipTransport;->registerNetworkCallback()V

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/rcse/MtkSipTransport;)Lcom/mediatek/ims/utils/logger/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/MtkSipTransport;

    .line 68
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/ims/rcse/MtkSipTransport;)Landroid/net/Network;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/MtkSipTransport;

    .line 68
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mNetworkObj:Landroid/net/Network;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/ims/rcse/MtkSipTransport;Landroid/net/Network;)Landroid/net/Network;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/MtkSipTransport;
    .param p1, "x1"    # Landroid/net/Network;

    .line 68
    iput-object p1, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mNetworkObj:Landroid/net/Network;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mediatek/ims/rcse/MtkSipTransport;)Landroid/net/LinkProperties;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/MtkSipTransport;

    .line 68
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mLinkProp:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/ims/rcse/MtkSipTransport;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/MtkSipTransport;
    .param p1, "x1"    # Landroid/net/LinkProperties;

    .line 68
    iput-object p1, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mLinkProp:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mediatek/ims/rcse/MtkSipTransport;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/MtkSipTransport;

    .line 68
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->cm:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/ims/rcse/MtkSipTransport;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/MtkSipTransport;

    .line 68
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->ipv6localAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mediatek/ims/rcse/MtkSipTransport;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/MtkSipTransport;
    .param p1, "x1"    # Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->ipv6localAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mediatek/ims/rcse/MtkSipTransport;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/MtkSipTransport;
    .param p1, "x1"    # Ljava/util/List;

    .line 68
    invoke-direct {p0, p1}, Lcom/mediatek/ims/rcse/MtkSipTransport;->getIpv6Address(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/ims/rcse/MtkSipTransport;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/MtkSipTransport;

    .line 68
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->ipv4localAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/mediatek/ims/rcse/MtkSipTransport;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/MtkSipTransport;
    .param p1, "x1"    # Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->ipv4localAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mediatek/ims/rcse/MtkSipTransport;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/MtkSipTransport;
    .param p1, "x1"    # Ljava/util/List;

    .line 68
    invoke-direct {p0, p1}, Lcom/mediatek/ims/rcse/MtkSipTransport;->getIpv4Address(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentUserPhoneId()I
    .locals 5

    .line 201
    const-string v0, "MtkSipTransport"

    invoke-static {v0}, Lcom/mediatek/ims/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/mediatek/ims/utils/logger/Logger;

    move-result-object v0

    .line 202
    .local v0, "logger":Lcom/mediatek/ims/utils/logger/Logger;
    const/4 v1, 0x0

    .line 203
    .local v1, "subId":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 204
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    .line 205
    .local v2, "phoneId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentUserPhoneId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 206
    return v2
.end method

.method private getIpv4Address(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 290
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIpv4Address addresses: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 291
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 292
    .local v1, "addr":Ljava/net/InetAddress;
    instance-of v2, v1, Ljava/net/Inet4Address;

    if-eqz v2, :cond_0

    .line 293
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIpv4Address addr.getHostAddress() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIpv4Address addr.getHostName() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 297
    .end local v1    # "addr":Ljava/net/InetAddress;
    :cond_0
    goto :goto_0

    .line 298
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getIpv6Address(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 276
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIpv6Address addresses: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 277
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 278
    .local v1, "addr":Ljava/net/InetAddress;
    instance-of v2, v1, Ljava/net/Inet6Address;

    if-eqz v2, :cond_0

    .line 279
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v2

    if-nez v2, :cond_0

    .line 280
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIpv6Address addr.getHostAddress() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIpv6Address addr.getHostName() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 285
    .end local v1    # "addr":Ljava/net/InetAddress;
    :cond_0
    goto :goto_0

    .line 286
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private registerNetworkCallback()V
    .locals 5

    .line 211
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    const-string v1, " MtkSipTransport registerNetworkCallback inside"

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 213
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 214
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 215
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 217
    .local v0, "cellularRequest":Landroid/net/NetworkRequest;
    iget-object v2, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cellularRequest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 218
    new-instance v2, Lcom/mediatek/ims/rcse/MtkSipTransport$1;

    invoke-direct {v2, p0}, Lcom/mediatek/ims/rcse/MtkSipTransport$1;-><init>(Lcom/mediatek/ims/rcse/MtkSipTransport;)V

    iput-object v2, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->cellularCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 241
    iget-object v2, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " MtkSipTransport registerNetworkCallback inside cellularCallback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->cellularCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 243
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 244
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    .line 245
    invoke-virtual {v2, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 246
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 247
    .local v1, "wifiRequest":Landroid/net/NetworkRequest;
    iget-object v2, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wifiRequest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 248
    new-instance v2, Lcom/mediatek/ims/rcse/MtkSipTransport$2;

    invoke-direct {v2, p0}, Lcom/mediatek/ims/rcse/MtkSipTransport$2;-><init>(Lcom/mediatek/ims/rcse/MtkSipTransport;)V

    iput-object v2, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->wifiCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 269
    iget-object v2, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " MtkSipTransport registerNetworkCallback inside wifiCallback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->wifiCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 270
    iget-object v2, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->cm:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->cellularCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v2, v0, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 271
    iget-object v2, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->cm:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->wifiCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v2, v1, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 273
    return-void
.end method


# virtual methods
.method public createSipDelegate(ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/DelegateStateCallback;Landroid/telephony/ims/DelegateMessageCallback;)V
    .locals 18
    .param p1, "subscriptionId"    # I
    .param p2, "request"    # Landroid/telephony/ims/DelegateRequest;
    .param p3, "dc"    # Landroid/telephony/ims/DelegateStateCallback;
    .param p4, "mc"    # Landroid/telephony/ims/DelegateMessageCallback;

    .line 112
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v5, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "2 MtkSipTransport called createSipDelegate subscriptionId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 113
    iget-object v5, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MtkSipTransport called createSipDelegate request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 114
    iget-object v5, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MtkSipTransport called createSipDelegate dc: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 115
    iget-object v5, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MtkSipTransport called createSipDelegate mc: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 116
    iput-object v3, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mDelegateStateCallBack:Landroid/telephony/ims/DelegateStateCallback;

    .line 117
    iput-object v4, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mDelegateMessageCallback:Landroid/telephony/ims/DelegateMessageCallback;

    .line 118
    new-instance v5, Lcom/mediatek/ims/rcse/MtkSipDelegate;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/mediatek/ims/rcse/MtkSipDelegate;-><init>(ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/DelegateStateCallback;Landroid/telephony/ims/DelegateMessageCallback;)V

    .line 119
    .local v5, "d":Lcom/mediatek/ims/rcse/MtkSipDelegate;
    iget-object v6, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createSipDelegate d: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 120
    iget-object v6, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createSipDelegate request.toString: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/DelegateRequest;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 121
    iget-object v6, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createSipDelegate request getFeature: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/DelegateRequest;->getFeatureTags()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 122
    iget-object v6, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createSipDelegate UaServiceManager.getInstance().getService() : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mediatek/ims/rcse/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcse/UaServiceManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/ims/rcse/UaServiceManager;->getService()Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/mediatek/ims/rcse/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcse/UaServiceManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/ims/rcse/UaServiceManager;->getService()Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 124
    invoke-static {}, Lcom/mediatek/ims/rcse/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcse/UaServiceManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/ims/rcse/UaServiceManager;->readConfiguraion()Lcom/mediatek/ims/rcsua/Configuration;

    move-result-object v6

    iput-object v6, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mConfig:Lcom/mediatek/ims/rcsua/Configuration;

    .line 125
    iget-object v6, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createSipDelegate mConfig : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mConfig:Lcom/mediatek/ims/rcsua/Configuration;

    invoke-virtual {v10}, Lcom/mediatek/ims/rcsua/Configuration;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 126
    iget-object v6, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mConfig:Lcom/mediatek/ims/rcsua/Configuration;

    invoke-virtual {v9}, Lcom/mediatek/ims/rcsua/Configuration;->getPAssociatedUri()[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 127
    iget-object v6, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mConfig:Lcom/mediatek/ims/rcsua/Configuration;

    invoke-virtual {v6}, Lcom/mediatek/ims/rcsua/Configuration;->getPLastAccessNetworkInfo()Ljava/lang/String;

    move-result-object v6

    .line 128
    .local v6, "pLast":Ljava/lang/String;
    iget-object v7, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createSipDelegate pLast : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 129
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 130
    iget-object v7, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mConfig:Lcom/mediatek/ims/rcsua/Configuration;

    invoke-virtual {v7}, Lcom/mediatek/ims/rcsua/Configuration;->getPAccessNetworkInfo()Ljava/lang/String;

    move-result-object v6

    .line 132
    :cond_0
    iget-object v7, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createSipDelegate ipv6localAddr ess : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->ipv6localAddress:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 133
    iget-object v7, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createSipDelegate ipv4localAddress : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->ipv4localAddress:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 134
    iget-object v7, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->ipv6localAddress:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 135
    new-instance v7, Ljava/net/InetSocketAddress;

    iget-object v9, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->ipv6localAddress:Ljava/lang/String;

    iget-object v10, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mConfig:Lcom/mediatek/ims/rcsua/Configuration;

    invoke-virtual {v10}, Lcom/mediatek/ims/rcsua/Configuration;->getLocalPort()I

    move-result v10

    invoke-direct {v7, v9, v10}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object v7, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->localAddr:Ljava/net/InetSocketAddress;

    goto :goto_0

    .line 137
    :cond_1
    new-instance v7, Ljava/net/InetSocketAddress;

    iget-object v9, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->ipv4localAddress:Ljava/lang/String;

    iget-object v10, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mConfig:Lcom/mediatek/ims/rcsua/Configuration;

    invoke-virtual {v10}, Lcom/mediatek/ims/rcsua/Configuration;->getLocalPort()I

    move-result v10

    invoke-direct {v7, v9, v10}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object v7, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->localAddr:Ljava/net/InetSocketAddress;

    .line 139
    :goto_0
    iget-object v7, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createSipDelegate localAddr : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->localAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 140
    new-instance v7, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v9, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mConfig:Lcom/mediatek/ims/rcsua/Configuration;

    invoke-virtual {v9}, Lcom/mediatek/ims/rcsua/Configuration;->getSecurityVerify()Ljava/lang/String;

    move-result-object v17

    move-object v10, v7

    invoke-direct/range {v10 .. v17}, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;-><init>(IIIIIILjava/lang/String;)V

    .line 141
    .local v7, "ipSecConfig":Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;
    new-instance v15, Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    const-wide/16 v10, 0x1

    const/4 v12, 0x1

    iget-object v14, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->localAddr:Ljava/net/InetSocketAddress;

    move-object v9, v15

    move-object v13, v14

    invoke-direct/range {v9 .. v14}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;-><init>(JILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    iget-object v9, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mConfig:Lcom/mediatek/ims/rcsua/Configuration;

    .line 142
    invoke-virtual {v9}, Lcom/mediatek/ims/rcsua/Configuration;->getPIdentifier()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setPublicUserIdentifier(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v9

    iget-object v10, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mConfig:Lcom/mediatek/ims/rcsua/Configuration;

    .line 143
    invoke-virtual {v10}, Lcom/mediatek/ims/rcsua/Configuration;->getHomeDomain()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setHomeDomain(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v9

    iget-object v10, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mConfig:Lcom/mediatek/ims/rcsua/Configuration;

    .line 144
    invoke-virtual {v10}, Lcom/mediatek/ims/rcsua/Configuration;->getPAssociatedUriStr()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipAssociatedUriHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v9

    .line 145
    invoke-virtual {v9, v7}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setIpSecConfiguration(Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v9

    iget-object v10, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mConfig:Lcom/mediatek/ims/rcsua/Configuration;

    .line 146
    invoke-virtual {v10}, Lcom/mediatek/ims/rcsua/Configuration;->getServiceRouteStr()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipServiceRouteHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v9

    .line 147
    const-string v10, "user"

    invoke-virtual {v9, v10}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipContactUserParameter(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v9

    iget-object v10, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mConfig:Lcom/mediatek/ims/rcsua/Configuration;

    .line 148
    invoke-virtual {v10}, Lcom/mediatek/ims/rcsua/Configuration;->getImei()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setImei(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v9

    iget-object v10, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mConfig:Lcom/mediatek/ims/rcsua/Configuration;

    .line 149
    invoke-virtual {v10}, Lcom/mediatek/ims/rcsua/Configuration;->getPAccessNetworkInfo()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipPaniHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v9

    .line 150
    invoke-virtual {v9, v6}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipPlaniHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v9

    iget-object v10, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mConfig:Lcom/mediatek/ims/rcsua/Configuration;

    .line 151
    invoke-virtual {v10}, Lcom/mediatek/ims/rcsua/Configuration;->getUserAgent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipUserAgentHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v9

    const/16 v10, 0x5dc

    .line 152
    invoke-virtual {v9, v10}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setMaxUdpPayloadSizeBytes(I)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v9

    .line 153
    invoke-virtual {v9}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->build()Landroid/telephony/ims/SipDelegateConfiguration;

    move-result-object v9

    iput-object v9, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->sipConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    .line 154
    iget-object v9, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createSipDelegate, sipConfig: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->sipConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 156
    .end local v6    # "pLast":Ljava/lang/String;
    .end local v7    # "ipSecConfig":Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;
    :cond_2
    nop

    .line 157
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 158
    .local v6, "deniedTags":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/FeatureTagState;>;"
    const-string v7, ""

    .line 159
    .local v7, "featureTagStr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/DelegateRequest;->getFeatureTags()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 160
    .local v10, "featureTag":Ljava/lang/String;
    iget-object v11, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "createSipDelegate featureTag: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 161
    move-object v7, v10

    .line 162
    new-instance v11, Landroid/telephony/ims/FeatureTagState;

    const/4 v12, 0x2

    const-string v13, ""

    invoke-direct {v11, v13, v12}, Landroid/telephony/ims/FeatureTagState;-><init>(Ljava/lang/String;I)V

    invoke-interface {v6, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 163
    .end local v10    # "featureTag":Ljava/lang/String;
    goto :goto_1

    .line 164
    :cond_3
    iget-object v9, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createSipDelegate deniedTags: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 165
    iget-object v9, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createSipDelegate featureTagStr: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 166
    iget-object v9, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    const-string v10, "createSipDelegate mDelegateStateCallBack.onCreated called: "

    invoke-virtual {v9, v10}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 167
    iget-object v9, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mDelegateStateCallBack:Landroid/telephony/ims/DelegateStateCallback;

    invoke-interface {v9, v5, v6}, Landroid/telephony/ims/DelegateStateCallback;->onCreated(Landroid/telephony/ims/stub/SipDelegate;Ljava/util/Set;)V

    .line 168
    iget-object v9, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    const-string v10, "createSipDelegate mDelegateStateCallBack.onConfigurationChanged called: "

    invoke-virtual {v9, v10}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 169
    iget-object v9, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mDelegateStateCallBack:Landroid/telephony/ims/DelegateStateCallback;

    iget-object v10, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->sipConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    invoke-interface {v9, v10}, Landroid/telephony/ims/DelegateStateCallback;->onConfigurationChanged(Landroid/telephony/ims/SipDelegateConfiguration;)V

    .line 170
    new-instance v9, Landroid/telephony/ims/DelegateRegistrationState$Builder;

    invoke-direct {v9}, Landroid/telephony/ims/DelegateRegistrationState$Builder;-><init>()V

    .line 171
    invoke-virtual {v9, v7}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addRegisteredFeatureTag(Ljava/lang/String;)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    move-result-object v9

    .line 172
    invoke-virtual {v9}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->build()Landroid/telephony/ims/DelegateRegistrationState;

    move-result-object v9

    .line 173
    .local v9, "regState":Landroid/telephony/ims/DelegateRegistrationState;
    iget-object v10, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mDelegateStateCallBack:Landroid/telephony/ims/DelegateStateCallback;

    invoke-interface {v10, v9}, Landroid/telephony/ims/DelegateStateCallback;->onFeatureTagRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V

    .line 175
    .end local v6    # "deniedTags":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/FeatureTagState;>;"
    .end local v7    # "featureTagStr":Ljava/lang/String;
    .end local v9    # "regState":Landroid/telephony/ims/DelegateRegistrationState;
    iget-object v6, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 176
    iget-object v6, v0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    return-void
.end method

.method public destroySipDelegate(Landroid/telephony/ims/stub/SipDelegate;I)V
    .locals 3
    .param p1, "delegate"    # Landroid/telephony/ims/stub/SipDelegate;
    .param p2, "reason"    # I

    .line 181
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SipTransport called destroySipDelegate delegate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ,reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 182
    instance-of v0, p1, Lcom/mediatek/ims/rcse/MtkSipDelegate;

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    const-string v1, "SipTransport called destroySipDelegate delegate instanceof MtkSipDelegate"

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroySipDelegate mDelegateStateCallBack: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mDelegateStateCallBack:Landroid/telephony/ims/DelegateStateCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mDelegateStateCallBack:Landroid/telephony/ims/DelegateStateCallback;

    if-eqz v0, :cond_0

    .line 186
    invoke-interface {v0, p2}, Landroid/telephony/ims/DelegateStateCallback;->onDestroyed(I)V

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 192
    :cond_1
    return-void
.end method

.method public getDelegates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mediatek/ims/rcse/MtkSipDelegate;",
            ">;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mDelegates:Ljava/util/ArrayList;

    return-object v0
.end method

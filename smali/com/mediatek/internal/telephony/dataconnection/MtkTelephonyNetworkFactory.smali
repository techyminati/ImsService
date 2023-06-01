.class public Lcom/mediatek/internal/telephony/dataconnection/MtkTelephonyNetworkFactory;
.super Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;
.source "MtkTelephonyNetworkFactory.java"


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/internal/telephony/Phone;)V
    .registers 3
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;-><init>(Landroid/os/Looper;Lcom/android/internal/telephony/Phone;)V

    .line 69
    return-void
.end method


# virtual methods
.method public makeNetworkFilter(I)Landroid/net/NetworkCapabilities;
    .registers 4
    .param p1, "subscriptionId"    # I

    .line 74
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities$Builder;-><init>()V

    .line 75
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addTransportType(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    .line 76
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    .line 77
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    .line 78
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    .line 79
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    .line 80
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    .line 81
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    .line 82
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    .line 83
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    .line 84
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    .line 85
    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    .line 86
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    .line 87
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    .line 88
    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    .line 89
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    .line 90
    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    .line 91
    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    new-instance v1, Landroid/net/TelephonyNetworkSpecifier$Builder;

    invoke-direct {v1}, Landroid/net/TelephonyNetworkSpecifier$Builder;-><init>()V

    .line 93
    invoke-virtual {v1, p1}, Landroid/net/TelephonyNetworkSpecifier$Builder;->setSubscriptionId(I)Landroid/net/TelephonyNetworkSpecifier$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/TelephonyNetworkSpecifier$Builder;->build()Landroid/net/TelephonyNetworkSpecifier;

    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    .line 94
    .local v0, "builder":Landroid/net/NetworkCapabilities$Builder;
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v1

    return-object v1
.end method

.method protected mtkIgnoreCapabilityCheck(Landroid/net/NetworkRequest;I)Z
    .registers 5
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p2, "action"    # I

    .line 100
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_21

    const/16 v0, 0xa

    .line 101
    invoke-virtual {p1, v0}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_21

    .line 108
    :cond_11
    const/16 v0, 0x1e

    invoke-virtual {p1, v0}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 109
    const-string v0, "ignoreCapabilityCheck() ignore VSIM PDN"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkTelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 110
    return v1

    .line 113
    :cond_1f
    const/4 v0, 0x0

    return v0

    .line 102
    :cond_21
    :goto_21
    const-string v0, "ignoreCapabilityCheck() ignore IMS/EIMS PDN"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkTelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 103
    return v1
.end method

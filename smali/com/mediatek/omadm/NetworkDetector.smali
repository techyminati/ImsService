.class public Lcom/mediatek/omadm/NetworkDetector;
.super Ljava/lang/Object;
.source "NetworkDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/omadm/NetworkDetector$Feature;,
        Lcom/mediatek/omadm/NetworkDetector$NwEvntBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final NW_CONN_ADMIN:I = 0x1

.field private static final NW_CONN_WIFI:I = 0x0

.field private static final NW_DATA_ROAM:I = 0x2

.field private static final TAG:Ljava/lang/String; = "NetworkDetector"


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mNetEventsReceiver:Landroid/content/BroadcastReceiver;

.field private final mOmadmSrv:Lcom/mediatek/omadm/OmadmServiceImpl;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/omadm/OmadmServiceImpl;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "omadmServiceImpl"    # Lcom/mediatek/omadm/OmadmServiceImpl;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/omadm/NetworkDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 57
    iput-object v0, p0, Lcom/mediatek/omadm/NetworkDetector;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 58
    iput-object v0, p0, Lcom/mediatek/omadm/NetworkDetector;->mNetEventsReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    iput-object p2, p0, Lcom/mediatek/omadm/NetworkDetector;->mOmadmSrv:Lcom/mediatek/omadm/OmadmServiceImpl;

    .line 62
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/mediatek/omadm/NetworkDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 63
    nop

    .line 64
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/mediatek/omadm/NetworkDetector;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 65
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/omadm/NetworkDetector;Landroid/net/NetworkInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/omadm/NetworkDetector;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .line 49
    invoke-direct {p0, p1}, Lcom/mediatek/omadm/NetworkDetector;->networkChanged(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method private defaultStateNotify()V
    .registers 12

    .line 68
    iget-object v0, p0, Lcom/mediatek/omadm/NetworkDetector;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-string v1, "NetworkDetector"

    if-nez v0, :cond_c

    .line 69
    const-string v0, "defaultStateNotify(): NULL ConnectivityManager!!!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void

    .line 73
    :cond_c
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 74
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/mediatek/omadm/NetworkDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    invoke-static {v0, v2}, Lcom/mediatek/omadm/NetworkDetector$Feature;->getFeature(Landroid/net/NetworkInfo;I)Lcom/mediatek/omadm/NetworkDetector$Feature;

    move-result-object v2

    .line 75
    .local v2, "feature":Lcom/mediatek/omadm/NetworkDetector$Feature;
    const/4 v3, 0x3

    new-array v3, v3, [I

    fill-array-data v3, :array_86

    .line 79
    .local v3, "features":[I
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_23
    if-ge v6, v4, :cond_85

    aget v7, v3, v6

    .line 80
    .local v7, "type":I
    const-string v8, "Notify omadm NM with type: "

    if-eqz v2, :cond_66

    iget v9, v2, Lcom/mediatek/omadm/NetworkDetector$Feature;->type:I

    if-ne v7, v9, :cond_66

    .line 81
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v2, Lcom/mediatek/omadm/NetworkDetector$Feature;->type:I

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", status: "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v2, Lcom/mediatek/omadm/NetworkDetector$Feature;->status:Z

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget v8, v2, Lcom/mediatek/omadm/NetworkDetector$Feature;->type:I

    const/4 v9, 0x1

    if-ne v9, v8, :cond_5c

    .line 83
    iget-object v8, p0, Lcom/mediatek/omadm/NetworkDetector;->mOmadmSrv:Lcom/mediatek/omadm/OmadmServiceImpl;

    const/4 v9, 0x2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/mediatek/omadm/OmadmServiceImpl;->notifyOmadmNetworkManager(IZ)V

    .line 85
    :cond_5c
    iget-object v8, p0, Lcom/mediatek/omadm/NetworkDetector;->mOmadmSrv:Lcom/mediatek/omadm/OmadmServiceImpl;

    iget v9, v2, Lcom/mediatek/omadm/NetworkDetector$Feature;->type:I

    iget-boolean v10, v2, Lcom/mediatek/omadm/NetworkDetector$Feature;->status:Z

    invoke-virtual {v8, v9, v10}, Lcom/mediatek/omadm/OmadmServiceImpl;->notifyOmadmNetworkManager(IZ)V

    goto :goto_82

    .line 87
    :cond_66
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", status: false"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v8, p0, Lcom/mediatek/omadm/NetworkDetector;->mOmadmSrv:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v8, v7, v5}, Lcom/mediatek/omadm/OmadmServiceImpl;->notifyOmadmNetworkManager(IZ)V

    .line 79
    .end local v7    # "type":I
    :goto_82
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    .line 91
    :cond_85
    return-void

    :array_86
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method private networkChanged(Landroid/net/NetworkInfo;)V
    .registers 7
    .param p1, "nwInfo"    # Landroid/net/NetworkInfo;

    .line 94
    const-string v0, "NetworkDetector"

    const-string v1, "networkChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v1, p0, Lcom/mediatek/omadm/NetworkDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_11

    .line 96
    const-string v1, "onReceive() NULL TelephonyManager !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void

    .line 100
    :cond_11
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 101
    .local v1, "type":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive() - handle for type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v2, p0, Lcom/mediatek/omadm/NetworkDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    invoke-static {p1, v2}, Lcom/mediatek/omadm/NetworkDetector$Feature;->getFeature(Landroid/net/NetworkInfo;I)Lcom/mediatek/omadm/NetworkDetector$Feature;

    move-result-object v2

    .line 104
    .local v2, "feature":Lcom/mediatek/omadm/NetworkDetector$Feature;
    if-eqz p1, :cond_52

    if-eqz v2, :cond_52

    .line 105
    const/4 v0, 0x1

    iget v3, v2, Lcom/mediatek/omadm/NetworkDetector$Feature;->type:I

    if-ne v0, v3, :cond_48

    .line 106
    iget-object v0, p0, Lcom/mediatek/omadm/NetworkDetector;->mOmadmSrv:Lcom/mediatek/omadm/OmadmServiceImpl;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/mediatek/omadm/NetworkDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 107
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v4

    .line 106
    invoke-virtual {v0, v3, v4}, Lcom/mediatek/omadm/OmadmServiceImpl;->notifyOmadmNetworkManager(IZ)V

    .line 109
    :cond_48
    iget-object v0, p0, Lcom/mediatek/omadm/NetworkDetector;->mOmadmSrv:Lcom/mediatek/omadm/OmadmServiceImpl;

    iget v3, v2, Lcom/mediatek/omadm/NetworkDetector$Feature;->type:I

    iget-boolean v4, v2, Lcom/mediatek/omadm/NetworkDetector$Feature;->status:Z

    invoke-virtual {v0, v3, v4}, Lcom/mediatek/omadm/OmadmServiceImpl;->notifyOmadmNetworkManager(IZ)V

    goto :goto_66

    .line 111
    :cond_52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive() - nothing to handle for type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_66
    return-void
.end method


# virtual methods
.method public register(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 116
    invoke-direct {p0}, Lcom/mediatek/omadm/NetworkDetector;->defaultStateNotify()V

    .line 117
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 118
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    new-instance v1, Lcom/mediatek/omadm/NetworkDetector$NwEvntBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mediatek/omadm/NetworkDetector$NwEvntBroadcastReceiver;-><init>(Lcom/mediatek/omadm/NetworkDetector;Lcom/mediatek/omadm/NetworkDetector$1;)V

    iput-object v1, p0, Lcom/mediatek/omadm/NetworkDetector;->mNetEventsReceiver:Landroid/content/BroadcastReceiver;

    .line 120
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 124
    iget-object v0, p0, Lcom/mediatek/omadm/NetworkDetector;->mNetEventsReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_a

    .line 125
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/omadm/NetworkDetector;->mNetEventsReceiver:Landroid/content/BroadcastReceiver;

    .line 128
    :cond_a
    return-void
.end method

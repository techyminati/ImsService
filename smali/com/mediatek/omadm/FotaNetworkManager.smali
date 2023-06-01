.class public Lcom/mediatek/omadm/FotaNetworkManager;
.super Ljava/lang/Object;
.source "FotaNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/omadm/FotaNetworkManager$NetworkReqClbk;
    }
.end annotation


# static fields
.field private static final NETWORK_ACQUIRE_TIMEOUT_MILLIS:I = 0x4e20

.field private static final NETWORK_REQUEST_TIMEOUT_MILLIS:I = 0x3a98

.field private static final TAG:Ljava/lang/String; = "FotaNetworkManager"


# instance fields
.field private volatile mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mFotaReqCnt:I

.field private mNwk:Landroid/net/Network;

.field private mNwkClbk:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mNwkReq:Landroid/net/NetworkRequest;

.field mOmadmSrv:Lcom/mediatek/omadm/OmadmServiceImpl;

.field private final mSubId:I


# direct methods
.method public constructor <init>(Lcom/mediatek/omadm/OmadmServiceImpl;Landroid/content/Context;I)V
    .registers 6
    .param p1, "service"    # Lcom/mediatek/omadm/OmadmServiceImpl;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "subId"    # I

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/omadm/FotaNetworkManager;->mOmadmSrv:Lcom/mediatek/omadm/OmadmServiceImpl;

    .line 137
    iput-object p2, p0, Lcom/mediatek/omadm/FotaNetworkManager;->mContext:Landroid/content/Context;

    .line 138
    iput-object v0, p0, Lcom/mediatek/omadm/FotaNetworkManager;->mNwkClbk:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 139
    iput-object v0, p0, Lcom/mediatek/omadm/FotaNetworkManager;->mNwk:Landroid/net/Network;

    .line 140
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/omadm/FotaNetworkManager;->mFotaReqCnt:I

    .line 141
    iput-object v0, p0, Lcom/mediatek/omadm/FotaNetworkManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 142
    iput p3, p0, Lcom/mediatek/omadm/FotaNetworkManager;->mSubId:I

    .line 143
    iput-object p1, p0, Lcom/mediatek/omadm/FotaNetworkManager;->mOmadmSrv:Lcom/mediatek/omadm/OmadmServiceImpl;

    .line 144
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 145
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 146
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 147
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/omadm/FotaNetworkManager;->mNwkReq:Landroid/net/NetworkRequest;

    .line 149
    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/omadm/FotaNetworkManager;Landroid/net/Network;)Landroid/net/Network;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/omadm/FotaNetworkManager;
    .param p1, "x1"    # Landroid/net/Network;

    .line 52
    iput-object p1, p0, Lcom/mediatek/omadm/FotaNetworkManager;->mNwk:Landroid/net/Network;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/omadm/FotaNetworkManager;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/omadm/FotaNetworkManager;
    .param p1, "x1"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .line 52
    invoke-direct {p0, p1}, Lcom/mediatek/omadm/FotaNetworkManager;->releaseReqLock(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/mediatek/omadm/FotaNetworkManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_10

    .line 130
    iget-object v0, p0, Lcom/mediatek/omadm/FotaNetworkManager;->mContext:Landroid/content/Context;

    .line 131
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/mediatek/omadm/FotaNetworkManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 133
    :cond_10
    iget-object v0, p0, Lcom/mediatek/omadm/FotaNetworkManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private releaseReqLock(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .line 111
    if-eqz p1, :cond_12

    .line 112
    invoke-direct {p0}, Lcom/mediatek/omadm/FotaNetworkManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 114
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    :try_start_6
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_9} :catch_a

    .line 117
    goto :goto_12

    .line 115
    :catch_a
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "FotaNetworkManager"

    const-string v3, "Unregister network callback exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_12
    :goto_12
    invoke-direct {p0}, Lcom/mediatek/omadm/FotaNetworkManager;->resetLocked()V

    .line 120
    return-void
.end method

.method private resetLocked()V
    .registers 2

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/omadm/FotaNetworkManager;->mNwkClbk:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 124
    iput-object v0, p0, Lcom/mediatek/omadm/FotaNetworkManager;->mNwk:Landroid/net/Network;

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/omadm/FotaNetworkManager;->mFotaReqCnt:I

    .line 126
    return-void
.end method

.method private startNwkReqLock()V
    .registers 5

    .line 105
    invoke-direct {p0}, Lcom/mediatek/omadm/FotaNetworkManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 106
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    new-instance v1, Lcom/mediatek/omadm/FotaNetworkManager$NetworkReqClbk;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mediatek/omadm/FotaNetworkManager$NetworkReqClbk;-><init>(Lcom/mediatek/omadm/FotaNetworkManager;Lcom/mediatek/omadm/FotaNetworkManager$1;)V

    iput-object v1, p0, Lcom/mediatek/omadm/FotaNetworkManager;->mNwkClbk:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 107
    iget-object v2, p0, Lcom/mediatek/omadm/FotaNetworkManager;->mNwkReq:Landroid/net/NetworkRequest;

    const/16 v3, 0x3a98

    invoke-virtual {v0, v2, v1, v3}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;I)V

    .line 108
    return-void
.end method


# virtual methods
.method public acquireNetwork(Ljava/lang/String;)I
    .registers 8
    .param p1, "callerID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/omadm/FotaException;
        }
    .end annotation

    .line 152
    monitor-enter p0

    .line 153
    :try_start_1
    iget v0, p0, Lcom/mediatek/omadm/FotaNetworkManager;->mFotaReqCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/omadm/FotaNetworkManager;->mFotaReqCnt:I

    .line 154
    iget-object v0, p0, Lcom/mediatek/omadm/FotaNetworkManager;->mNwk:Landroid/net/Network;

    if-eqz v0, :cond_18

    .line 155
    const-string v0, "FotaNetworkManager: already available"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/mediatek/omadm/FotaNetworkManager;->mNwk:Landroid/net/Network;

    invoke-virtual {v0}, Landroid/net/Network;->getNetId()I

    move-result v0

    monitor-exit p0

    return v0

    .line 159
    :cond_18
    iget-object v0, p0, Lcom/mediatek/omadm/FotaNetworkManager;->mNwkClbk:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v0, :cond_24

    .line 160
    const-string v0, "FotaNetworkManager: start new network request"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-direct {p0}, Lcom/mediatek/omadm/FotaNetworkManager;->startNwkReqLock()V

    .line 164
    :cond_24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_60

    const-wide/16 v2, 0x4e20

    add-long/2addr v0, v2

    .line 165
    .local v0, "shouldEnd":J
    const-wide/16 v2, 0x4e20

    .line 167
    .local v2, "waitTime":J
    :goto_2d
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_4e

    .line 169
    :try_start_33
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_36} :catch_37
    .catchall {:try_start_33 .. :try_end_36} :catchall_60

    .line 172
    goto :goto_3d

    .line 170
    :catch_37
    move-exception v4

    .line 171
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_38
    const-string v5, "FotaNetworkManager: acquire network wait interrupted"

    invoke-static {p1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_3d
    iget-object v4, p0, Lcom/mediatek/omadm/FotaNetworkManager;->mNwk:Landroid/net/Network;

    if-eqz v4, :cond_47

    .line 175
    invoke-virtual {v4}, Landroid/net/Network;->getNetId()I

    move-result v4

    monitor-exit p0

    return v4

    .line 178
    :cond_47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v0, v4

    goto :goto_2d

    .line 181
    :cond_4e
    const-string v4, "FotaNetworkManager: timed out"

    invoke-static {p1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v4, p0, Lcom/mediatek/omadm/FotaNetworkManager;->mNwkClbk:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0, v4}, Lcom/mediatek/omadm/FotaNetworkManager;->releaseReqLock(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 184
    new-instance v4, Lcom/mediatek/omadm/FotaException;

    const-string v5, "Acquiring network timed out"

    invoke-direct {v4, v5}, Lcom/mediatek/omadm/FotaException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/mediatek/omadm/FotaNetworkManager;
    .end local p1    # "callerID":Ljava/lang/String;
    throw v4

    .line 185
    .end local v0    # "shouldEnd":J
    .end local v2    # "waitTime":J
    .restart local p0    # "this":Lcom/mediatek/omadm/FotaNetworkManager;
    .restart local p1    # "callerID":Ljava/lang/String;
    :catchall_60
    move-exception v0

    monitor-exit p0
    :try_end_62
    .catchall {:try_start_38 .. :try_end_62} :catchall_60

    throw v0
.end method

.method public getApnName()Ljava/lang/String;
    .registers 5

    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, "network":Landroid/net/Network;
    monitor-enter p0

    .line 205
    :try_start_2
    iget-object v1, p0, Lcom/mediatek/omadm/FotaNetworkManager;->mNwk:Landroid/net/Network;

    if-nez v1, :cond_9

    .line 206
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 208
    :cond_9
    move-object v0, v1

    .line 209
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_1b

    .line 210
    const/4 v1, 0x0

    .line 211
    .local v1, "apnName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/mediatek/omadm/FotaNetworkManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v2

    .line 212
    .local v2, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 213
    .local v3, "FotaNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_1a

    .line 214
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    .line 216
    :cond_1a
    return-object v1

    .line 209
    .end local v1    # "apnName":Ljava/lang/String;
    .end local v2    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v3    # "FotaNetworkInfo":Landroid/net/NetworkInfo;
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public releaseNetwork(Ljava/lang/String;)Z
    .registers 5
    .param p1, "callerID"    # Ljava/lang/String;

    .line 189
    monitor-enter p0

    .line 190
    :try_start_1
    iget v0, p0, Lcom/mediatek/omadm/FotaNetworkManager;->mFotaReqCnt:I

    if-lez v0, :cond_2f

    .line 191
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/omadm/FotaNetworkManager;->mFotaReqCnt:I

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FotaNetworkManager: release, count="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/omadm/FotaNetworkManager;->mFotaReqCnt:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget v0, p0, Lcom/mediatek/omadm/FotaNetworkManager;->mFotaReqCnt:I

    if-ge v0, v1, :cond_2f

    .line 194
    const-string v0, "FotaNetworkManager: Release FOTA Network"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/mediatek/omadm/FotaNetworkManager;->mNwkClbk:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0, v0}, Lcom/mediatek/omadm/FotaNetworkManager;->releaseReqLock(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 196
    monitor-exit p0

    return v1

    .line 199
    :cond_2f
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 200
    :catchall_32
    move-exception v0

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_32

    throw v0
.end method

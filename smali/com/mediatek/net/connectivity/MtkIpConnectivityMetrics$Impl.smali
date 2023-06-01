.class public final Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics$Impl;
.super Lcom/mediatek/net/connectivity/IMtkIpConnectivityMetrics$Stub;
.source "MtkIpConnectivityMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Impl"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNetdEventCallback:Landroid/net/INetdEventCallback;

.field final mUidSockeRulestLock:Ljava/lang/Object;

.field private mUidSocketRules:Landroid/util/SparseBooleanArray;

.field final synthetic this$0:Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics;


# direct methods
.method public constructor <init>(Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics;Landroid/content/Context;)V
    .registers 4
    .param p1, "this$0"    # Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics;
    .param p2, "ctx"    # Landroid/content/Context;

    .line 80
    iput-object p1, p0, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics$Impl;->this$0:Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics;

    invoke-direct {p0}, Lcom/mediatek/net/connectivity/IMtkIpConnectivityMetrics$Stub;-><init>()V

    .line 75
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics$Impl;->mUidSocketRules:Landroid/util/SparseBooleanArray;

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics$Impl;->mUidSockeRulestLock:Ljava/lang/Object;

    .line 81
    iput-object p2, p0, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics$Impl;->mContext:Landroid/content/Context;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics$Impl;I)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics$Impl;
    .param p1, "x1"    # I

    .line 72
    invoke-direct {p0, p1}, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics$Impl;->onCtaConnectEvent(I)V

    return-void
.end method

.method private enforceNetworkMonitorPermission()V
    .registers 6

    .line 201
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 202
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    .line 206
    return-void

    .line 203
    :cond_9
    new-instance v1, Ljava/lang/SecurityException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 204
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 203
    const-string v3, "Uid %d has no permission to change watchlist setting."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private isPermissionAllowed()Z
    .registers 3

    .line 192
    invoke-direct {p0}, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics$Impl;->enforceNetworkMonitorPermission()V

    .line 193
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_27

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No permission:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[MDC]MtkIpConnectivityMetrics"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v0, 0x0

    return v0

    .line 197
    :cond_27
    const/4 v0, 0x1

    return v0
.end method

.method private isValidUid(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 188
    if-lez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private onCtaConnectEvent(I)V
    .registers 12
    .param p1, "uid"    # I

    .line 171
    iget-object v0, p0, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics$Impl;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    if-nez v0, :cond_5

    return-void

    .line 173
    :cond_5
    const/4 v0, 0x1

    .line 174
    .local v0, "needNotify":Z
    iget-object v1, p0, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics$Impl;->mUidSockeRulestLock:Ljava/lang/Object;

    monitor-enter v1

    .line 175
    :try_start_9
    iget-object v2, p0, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics$Impl;->mUidSocketRules:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    move v0, v2

    .line 176
    const-string v2, "[MDC]MtkIpConnectivityMetrics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCtaConnectEvent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_9 .. :try_end_2f} :catchall_56

    .line 177
    if-eqz v0, :cond_54

    .line 179
    :try_start_31
    iget-object v4, p0, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics$Impl;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    const-string v5, ""

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move v9, p1

    invoke-interface/range {v4 .. v9}, Landroid/net/INetdEventCallback;->onConnectEvent(Ljava/lang/String;IJI)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3c} :catch_3d
    .catchall {:try_start_31 .. :try_end_3c} :catchall_56

    .line 182
    goto :goto_54

    .line 180
    :catch_3d
    move-exception v2

    .line 181
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3e
    const-string v3, "[MDC]MtkIpConnectivityMetrics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCtaConnectEvent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_54
    :goto_54
    monitor-exit v1

    .line 185
    return-void

    .line 184
    :catchall_56
    move-exception v2

    monitor-exit v1
    :try_end_58
    .catchall {:try_start_3e .. :try_end_58} :catchall_56

    throw v2
.end method


# virtual methods
.method public registerMtkNetdEventCallback(Landroid/net/INetdEventCallback;)Z
    .registers 4
    .param p1, "callback"    # Landroid/net/INetdEventCallback;

    .line 87
    invoke-direct {p0}, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics$Impl;->isPermissionAllowed()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 88
    const-string v0, "[MDC]MtkIpConnectivityMetrics"

    const-string v1, "registerMtkNetdEventCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iput-object p1, p0, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics$Impl;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    .line 90
    const/4 v0, 0x1

    return v0

    .line 92
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public registerMtkSocketEventCallback(Landroid/net/INetdEventCallback;)Z
    .registers 4
    .param p1, "callback"    # Landroid/net/INetdEventCallback;

    .line 107
    const-string v0, "[MDC]MtkIpConnectivityMetrics"

    const-string v1, "registerMtkSocketEventCallback is deprecated!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public setSpeedDownload(I)V
    .registers 4
    .param p1, "timeoutMs"    # I

    .line 129
    const-string v0, "[MDC]MtkIpConnectivityMetrics"

    const-string v1, "setSpeedDownload is deprecated!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void
.end method

.method public startMonitorProcessWithUid(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 146
    invoke-direct {p0, p1}, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics$Impl;->isValidUid(I)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics$Impl;->this$0:Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics;

    # getter for: Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics;->mMtkPacketMonitor:Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;
    invoke-static {v0}, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics;->access$100(Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics;)Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 147
    iget-object v0, p0, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics$Impl;->this$0:Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics;

    # getter for: Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics;->mMtkPacketMonitor:Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;
    invoke-static {v0}, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics;->access$100(Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics;)Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->startMonitorProcessWithUid(I)V

    .line 149
    :cond_17
    return-void
.end method

.method public startMonitorProcessWithUidArray([I)V
    .registers 5
    .param p1, "uidArray"    # [I

    .line 134
    if-eqz p1, :cond_13

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_13

    .line 139
    :cond_6
    array-length v0, p1

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_12

    aget v2, p1, v1

    .line 140
    .local v2, "uid":I
    invoke-virtual {p0, v2}, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics$Impl;->startMonitorProcessWithUid(I)V

    .line 139
    .end local v2    # "uid":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 142
    :cond_12
    return-void

    .line 135
    :cond_13
    :goto_13
    const-string v0, "[MDC]MtkIpConnectivityMetrics"

    const-string v1, "startMonitorProcessWithUidArray invalid uid array"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void
.end method

.method public stopMonitorProcessWithUid(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 165
    invoke-direct {p0, p1}, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics$Impl;->isValidUid(I)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics$Impl;->this$0:Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics;

    # getter for: Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics;->mMtkPacketMonitor:Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;
    invoke-static {v0}, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics;->access$100(Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics;)Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 166
    iget-object v0, p0, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics$Impl;->this$0:Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics;

    # getter for: Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics;->mMtkPacketMonitor:Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;
    invoke-static {v0}, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics;->access$100(Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics;)Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->stopMonitorProcessWithUid(I)V

    .line 168
    :cond_17
    return-void
.end method

.method public stopMonitorProcessWithUidArray([I)V
    .registers 5
    .param p1, "uidArray"    # [I

    .line 153
    if-eqz p1, :cond_13

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_13

    .line 158
    :cond_6
    array-length v0, p1

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_12

    aget v2, p1, v1

    .line 159
    .local v2, "uid":I
    invoke-virtual {p0, v2}, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics$Impl;->stopMonitorProcessWithUid(I)V

    .line 158
    .end local v2    # "uid":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 161
    :cond_12
    return-void

    .line 154
    :cond_13
    :goto_13
    const-string v0, "[MDC]MtkIpConnectivityMetrics"

    const-string v1, "stopMonitorProcessWithUidArray invalid uid array"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void
.end method

.method public unregisterMtkNetdEventCallback()Z
    .registers 3

    .line 97
    invoke-direct {p0}, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics$Impl;->isPermissionAllowed()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 98
    const-string v0, "[MDC]MtkIpConnectivityMetrics"

    const-string v1, "unregisterMtkNetdEventCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics$Impl;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    .line 100
    const/4 v0, 0x1

    return v0

    .line 102
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterMtkSocketEventCallback()Z
    .registers 3

    .line 113
    const-string v0, "[MDC]MtkIpConnectivityMetrics"

    const-string v1, "unregisterMtkSocketEventCallback is deprecated!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public updateCtaAppStatus(IZ)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "needNotify"    # Z

    .line 119
    invoke-direct {p0}, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics$Impl;->isPermissionAllowed()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 120
    iget-object v0, p0, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics$Impl;->mUidSockeRulestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_9
    const-string v1, "[MDC]MtkIpConnectivityMetrics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCtaAppStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v1, p0, Lcom/mediatek/net/connectivity/MtkIpConnectivityMetrics$Impl;->mUidSocketRules:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 123
    monitor-exit v0

    goto :goto_31

    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_9 .. :try_end_30} :catchall_2e

    throw v1

    .line 125
    :cond_31
    :goto_31
    return-void
.end method

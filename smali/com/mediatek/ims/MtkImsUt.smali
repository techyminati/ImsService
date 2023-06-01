.class public Lcom/mediatek/ims/MtkImsUt;
.super Lcom/android/ims/ImsUt;
.source "MtkImsUt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/MtkImsUt$IMtkImsUtListenerProxy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MtkImsUt"


# instance fields
.field private final miMtkUt:Lcom/mediatek/ims/internal/IMtkImsUt;


# direct methods
.method public constructor <init>(Lcom/android/ims/internal/IImsUt;Lcom/mediatek/ims/internal/IMtkImsUt;)V
    .registers 5
    .param p1, "iUt"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "iMtkUt"    # Lcom/mediatek/ims/internal/IMtkImsUt;

    .line 66
    invoke-direct {p0, p1}, Lcom/android/ims/ImsUt;-><init>(Lcom/android/ims/internal/IImsUt;)V

    .line 68
    iput-object p2, p0, Lcom/mediatek/ims/MtkImsUt;->miMtkUt:Lcom/mediatek/ims/internal/IMtkImsUt;

    .line 70
    if-eqz p2, :cond_12

    .line 72
    :try_start_7
    new-instance v0, Lcom/mediatek/ims/MtkImsUt$IMtkImsUtListenerProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/MtkImsUt$IMtkImsUtListenerProxy;-><init>(Lcom/mediatek/ims/MtkImsUt;Lcom/mediatek/ims/MtkImsUt$1;)V

    invoke-interface {p2, v0}, Lcom/mediatek/ims/internal/IMtkImsUt;->setListener(Lcom/mediatek/ims/internal/IMtkImsUtListener;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11

    .line 74
    goto :goto_12

    .line 73
    :catch_11
    move-exception v0

    .line 76
    :cond_12
    :goto_12
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/ims/MtkImsUt;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/MtkImsUt;

    .line 60
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsUt;->mLockObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/ims/MtkImsUt;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/MtkImsUt;

    .line 60
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsUt;->mPendingCmds:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/ims/MtkImsUt;Landroid/os/Message;Ljava/lang/Object;)V
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/ims/MtkImsUt;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # Ljava/lang/Object;

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/ims/MtkImsUt;->sendSuccessReport(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/ims/MtkImsUt;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/MtkImsUt;

    .line 60
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsUt;->mPendingCmds:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/ims/MtkImsUt;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/MtkImsUt;

    .line 60
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsUt;->mLockObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/ims/MtkImsUt;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/MtkImsUt;

    .line 60
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsUt;->mPendingCmds:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/ims/MtkImsUt;Landroid/os/Message;Ljava/lang/Object;)V
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/ims/MtkImsUt;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # Ljava/lang/Object;

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/ims/MtkImsUt;->sendSuccessReport(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/ims/MtkImsUt;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/MtkImsUt;

    .line 60
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsUt;->mPendingCmds:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 1

    .line 79
    invoke-super {p0}, Lcom/android/ims/ImsUt;->close()V

    .line 80
    return-void
.end method

.method public getUtIMPUFromNetwork()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUtIMPUFromNetwork :: Ut = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/MtkImsUt;->miMtkUt:Lcom/mediatek/ims/internal/IMtkImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/MtkImsUt;->log(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_19
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsUt;->miMtkUt:Lcom/mediatek/ims/internal/IMtkImsUt;

    invoke-interface {v1}, Lcom/mediatek/ims/internal/IMtkImsUt;->getUtIMPUFromNetwork()Ljava/lang/String;

    move-result-object v1
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1f} :catch_23
    .catchall {:try_start_19 .. :try_end_1f} :catchall_21

    :try_start_1f
    monitor-exit v0

    return-object v1

    .line 126
    :catchall_21
    move-exception v1

    goto :goto_2e

    .line 122
    :catch_23
    move-exception v1

    .line 123
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "getUtIMPUFromNetwork()"

    const/16 v4, 0x322

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .end local p0    # "this":Lcom/mediatek/ims/MtkImsUt;
    throw v2

    .line 126
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/mediatek/ims/MtkImsUt;
    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_21

    throw v1
.end method

.method public getXcapConflictErrorMessage()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getXcapConflictErrorMessage :: Ut = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/MtkImsUt;->miMtkUt:Lcom/mediatek/ims/internal/IMtkImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/MtkImsUt;->log(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 242
    :try_start_19
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsUt;->miMtkUt:Lcom/mediatek/ims/internal/IMtkImsUt;

    invoke-interface {v1}, Lcom/mediatek/ims/internal/IMtkImsUt;->getXcapConflictErrorMessage()Ljava/lang/String;

    move-result-object v1
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1f} :catch_23
    .catchall {:try_start_19 .. :try_end_1f} :catchall_21

    :try_start_1f
    monitor-exit v0

    return-object v1

    .line 247
    :catchall_21
    move-exception v1

    goto :goto_2e

    .line 243
    :catch_23
    move-exception v1

    .line 244
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "getXcapConflictErrorMessage()"

    const/16 v4, 0x322

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .end local p0    # "this":Lcom/mediatek/ims/MtkImsUt;
    throw v2

    .line 247
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/mediatek/ims/MtkImsUt;
    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_21

    throw v1
.end method

.method protected log(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 281
    const-string v0, "MtkImsUt"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void
.end method

.method public queryCFForServiceClass(ILjava/lang/String;ILandroid/os/Message;)V
    .registers 11
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCFForServiceClass :: condition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "MtkImsUt"

    .line 258
    invoke-static {v1, p2}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/MtkImsUt;->log(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    const/4 v1, 0x0

    const/16 v2, 0x322

    :try_start_30
    iget-object v3, p0, Lcom/mediatek/ims/MtkImsUt;->miMtkUt:Lcom/mediatek/ims/internal/IMtkImsUt;

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/ims/internal/IMtkImsUt;->queryCFForServiceClass(ILjava/lang/String;I)I

    move-result v3

    .line 265
    .local v3, "id":I
    if-gez v3, :cond_42

    .line 266
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {p0, p4, v4}, Lcom/mediatek/ims/MtkImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_40} :catch_4e
    .catchall {:try_start_30 .. :try_end_40} :catchall_4c

    .line 268
    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_4c

    return-void

    .line 271
    :cond_42
    :try_start_42
    iget-object v4, p0, Lcom/mediatek/ims/MtkImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_4b} :catch_4e
    .catchall {:try_start_42 .. :try_end_4b} :catchall_4c

    .line 275
    .end local v3    # "id":I
    goto :goto_57

    .line 276
    :catchall_4c
    move-exception v1

    goto :goto_59

    .line 272
    :catch_4e
    move-exception v3

    .line 273
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_4f
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {p0, p4, v4}, Lcom/mediatek/ims/MtkImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 276
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_57
    monitor-exit v0

    .line 277
    return-void

    .line 276
    :goto_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_4f .. :try_end_5a} :catchall_4c

    throw v1
.end method

.method public queryCallForwardInTimeSlot(ILandroid/os/Message;)V
    .registers 9
    .param p1, "condition"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCallForwardInTimeSlot :: Ut = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/MtkImsUt;->miMtkUt:Lcom/mediatek/ims/internal/IMtkImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", condition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/MtkImsUt;->log(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    const/4 v1, 0x0

    const/16 v2, 0x322

    :try_start_24
    iget-object v3, p0, Lcom/mediatek/ims/MtkImsUt;->miMtkUt:Lcom/mediatek/ims/internal/IMtkImsUt;

    invoke-interface {v3, p1}, Lcom/mediatek/ims/internal/IMtkImsUt;->queryCallForwardInTimeSlot(I)I

    move-result v3

    .line 153
    .local v3, "id":I
    if-gez v3, :cond_36

    .line 154
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {p0, p2, v4}, Lcom/mediatek/ims/MtkImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_34} :catch_42
    .catchall {:try_start_24 .. :try_end_34} :catchall_40

    .line 156
    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_40

    return-void

    .line 159
    :cond_36
    :try_start_36
    iget-object v4, p0, Lcom/mediatek/ims/MtkImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3f} :catch_42
    .catchall {:try_start_36 .. :try_end_3f} :catchall_40

    .line 163
    .end local v3    # "id":I
    goto :goto_4b

    .line 164
    :catchall_40
    move-exception v1

    goto :goto_4d

    .line 160
    :catch_42
    move-exception v3

    .line 161
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_43
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {p0, p2, v4}, Lcom/mediatek/ims/MtkImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 164
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_4b
    monitor-exit v0

    .line 165
    return-void

    .line 164
    :goto_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_43 .. :try_end_4e} :catchall_40

    throw v1
.end method

.method public setupXcapUserAgentString(Ljava/lang/String;)V
    .registers 7
    .param p1, "userAgent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setupXcapUserAgentString :: Ut = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/MtkImsUt;->miMtkUt:Lcom/mediatek/ims/internal/IMtkImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/MtkImsUt;->log(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_19
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsUt;->miMtkUt:Lcom/mediatek/ims/internal/IMtkImsUt;

    invoke-interface {v1, p1}, Lcom/mediatek/ims/internal/IMtkImsUt;->setupXcapUserAgentString(Ljava/lang/String;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_23
    .catchall {:try_start_19 .. :try_end_1e} :catchall_21

    .line 140
    nop

    .line 141
    :try_start_1f
    monitor-exit v0

    .line 142
    return-void

    .line 141
    :catchall_21
    move-exception v1

    goto :goto_2e

    .line 137
    :catch_23
    move-exception v1

    .line 138
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "setupXcapUserAgentString()"

    const/16 v4, 0x322

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .end local p0    # "this":Lcom/mediatek/ims/MtkImsUt;
    .end local p1    # "userAgent":Ljava/lang/String;
    throw v2

    .line 141
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/mediatek/ims/MtkImsUt;
    .restart local p1    # "userAgent":Ljava/lang/String;
    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_21

    throw v1
.end method

.method public updateCallBarring(Ljava/lang/String;IILandroid/os/Message;[Ljava/lang/String;I)V
    .registers 16
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "cbType"    # I
    .param p3, "action"    # I
    .param p4, "result"    # Landroid/os/Message;
    .param p5, "barrList"    # [Ljava/lang/String;
    .param p6, "serviceClass"    # I

    .line 201
    if-eqz p5, :cond_5c

    .line 202
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 203
    .local v0, "bList":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, p5

    if-ge v1, v2, :cond_25

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p5, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 206
    .end local v1    # "i":I
    :cond_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCallBarring :: Ut="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/MtkImsUt;->miMtkUt:Lcom/mediatek/ims/internal/IMtkImsUt;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", cbType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", serviceClass="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", barrList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/MtkImsUt;->log(Ljava/lang/String;)V

    .line 209
    .end local v0    # "bList":Ljava/lang/String;
    goto :goto_8a

    .line 211
    :cond_5c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCallBarring :: Ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/MtkImsUt;->miMtkUt:Lcom/mediatek/ims/internal/IMtkImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cbType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", serviceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/MtkImsUt;->log(Ljava/lang/String;)V

    .line 216
    :goto_8a
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    const/4 v1, 0x0

    const/16 v2, 0x322

    :try_start_90
    iget-object v3, p0, Lcom/mediatek/ims/MtkImsUt;->miMtkUt:Lcom/mediatek/ims/internal/IMtkImsUt;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p5

    move v8, p6

    invoke-interface/range {v3 .. v8}, Lcom/mediatek/ims/internal/IMtkImsUt;->updateCallBarringForServiceClass(Ljava/lang/String;II[Ljava/lang/String;I)I

    move-result v3

    .line 221
    .local v3, "id":I
    if-gez v3, :cond_a7

    .line 222
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {p0, p4, v4}, Lcom/mediatek/ims/MtkImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_a5
    .catch Landroid/os/RemoteException; {:try_start_90 .. :try_end_a5} :catch_b3
    .catchall {:try_start_90 .. :try_end_a5} :catchall_b1

    .line 224
    :try_start_a5
    monitor-exit v0
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_b1

    return-void

    .line 227
    :cond_a7
    :try_start_a7
    iget-object v4, p0, Lcom/mediatek/ims/MtkImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b0
    .catch Landroid/os/RemoteException; {:try_start_a7 .. :try_end_b0} :catch_b3
    .catchall {:try_start_a7 .. :try_end_b0} :catchall_b1

    .line 231
    .end local v3    # "id":I
    goto :goto_bc

    .line 232
    :catchall_b1
    move-exception v1

    goto :goto_be

    .line 228
    :catch_b3
    move-exception v3

    .line 229
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_b4
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {p0, p4, v4}, Lcom/mediatek/ims/MtkImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 232
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_bc
    monitor-exit v0

    .line 233
    return-void

    .line 232
    :goto_be
    monitor-exit v0
    :try_end_bf
    .catchall {:try_start_b4 .. :try_end_bf} :catchall_b1

    throw v1
.end method

.method public updateCallForwardInTimeSlot(IILjava/lang/String;I[JLandroid/os/Message;)V
    .registers 16
    .param p1, "action"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "timeSeconds"    # I
    .param p5, "timeSlot"    # [J
    .param p6, "result"    # Landroid/os/Message;

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCallForwardInTimeSlot :: Ut = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/MtkImsUt;->miMtkUt:Lcom/mediatek/ims/internal/IMtkImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", condition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timeSeconds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeSlot = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-static {p5}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/MtkImsUt;->log(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    const/4 v1, 0x0

    const/16 v2, 0x322

    :try_start_48
    iget-object v3, p0, Lcom/mediatek/ims/MtkImsUt;->miMtkUt:Lcom/mediatek/ims/internal/IMtkImsUt;

    move v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/mediatek/ims/internal/IMtkImsUt;->updateCallForwardInTimeSlot(IILjava/lang/String;I[J)I

    move-result v3

    .line 181
    .local v3, "id":I
    if-gez v3, :cond_5f

    .line 182
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {p0, p6, v4}, Lcom/mediatek/ims/MtkImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_5d} :catch_6b
    .catchall {:try_start_48 .. :try_end_5d} :catchall_69

    .line 184
    :try_start_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_69

    return-void

    .line 187
    :cond_5f
    :try_start_5f
    iget-object v4, p0, Lcom/mediatek/ims/MtkImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_68} :catch_6b
    .catchall {:try_start_5f .. :try_end_68} :catchall_69

    .line 191
    .end local v3    # "id":I
    goto :goto_74

    .line 192
    :catchall_69
    move-exception v1

    goto :goto_76

    .line 188
    :catch_6b
    move-exception v3

    .line 189
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_6c
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {p0, p6, v4}, Lcom/mediatek/ims/MtkImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 192
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_74
    monitor-exit v0

    .line 193
    return-void

    .line 192
    :goto_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_6c .. :try_end_77} :catchall_69

    throw v1
.end method

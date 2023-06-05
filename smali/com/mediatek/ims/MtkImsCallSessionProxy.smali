.class public Lcom/mediatek/ims/MtkImsCallSessionProxy;
.super Ljava/lang/Object;
.source "MtkImsCallSessionProxy.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/MtkImsCallSessionProxy$ImsCallLogLevel;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "MtkImsCallSessionProxy"


# instance fields
.field private mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

.field private mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

.field private mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "listener"    # Landroid/telephony/ims/ImsCallSessionListener;
    .param p4, "imsService"    # Lcom/mediatek/ims/ImsService;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "ci"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p7, "phoneId"    # I

    .line 177
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/mediatek/ims/MtkImsCallSessionProxy;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;I)V

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MtkImsCallSessionProxy() : RILAdapter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p6

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    move-object v3, p0

    invoke-direct {p0, v0, v2}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 180
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "listener"    # Landroid/telephony/ims/ImsCallSessionListener;
    .param p4, "imsService"    # Lcom/mediatek/ims/ImsService;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "ci"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p7, "callId"    # Ljava/lang/String;
    .param p8, "phoneId"    # I

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/mediatek/ims/MtkImsCallSessionProxy$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/MtkImsCallSessionProxy$1;-><init>(Lcom/mediatek/ims/MtkImsCallSessionProxy;)V

    iput-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    .line 171
    return-void
.end method

.method private logWithCallId(Ljava/lang/String;I)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "lvl"    # I

    .line 523
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v1, "MtkImsCallSessionProxy"

    if-nez v0, :cond_0

    .line 524
    const-string v0, "logWithCallId with mAospImsCallSessionProxy = null"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    return-void

    .line 528
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getCallId()Ljava/lang/String;

    move-result-object v0

    .line 531
    .local v0, "mCallId":Ljava/lang/String;
    const/4 v2, 0x1

    const-string v3, "] "

    const-string v4, "[callId = "

    if-ne v2, p2, :cond_1

    .line 532
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 533
    :cond_1
    const/4 v2, 0x2

    if-ne v2, p2, :cond_2

    .line 534
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 535
    :cond_2
    const/4 v2, 0x3

    if-ne v2, p2, :cond_3

    .line 536
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 537
    :cond_3
    const/4 v2, 0x4

    if-ne v2, p2, :cond_4

    .line 538
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 539
    :cond_4
    const/4 v2, 0x5

    if-ne v2, p2, :cond_5

    .line 540
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 542
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :goto_0
    return-void
.end method


# virtual methods
.method public approveEccRedial(Z)V
    .locals 2
    .param p1, "isAprroved"    # Z

    .line 253
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->approveEccRedial(Z)V

    .line 259
    return-void

    .line 254
    :cond_1
    :goto_0
    const/4 v0, 0x5

    const-string v1, "approveEccRedial() : mCallSessionImpl is null"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 256
    return-void
.end method

.method public callTerminated()V
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-nez v0, :cond_0

    .line 388
    const/4 v0, 0x5

    const-string v1, "callTerminated() : mAospImsCallSessionProxy is null"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 390
    return-void

    .line 393
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->callTerminated()V

    .line 394
    return-void
.end method

.method public cancelDeviceSwitch()V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-nez v0, :cond_0

    .line 289
    const/4 v0, 0x5

    const-string v1, "cancelDeviceSwitch() : mAospImsCallSessionProxy is null"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 290
    return-void

    .line 292
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->cancelDeviceSwitch()V

    .line 293
    return-void
.end method

.method public close()V
    .locals 2

    .line 184
    const-string v0, "close() : MtkImsCallSessionProxy is going to be closed!!! "

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 187
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->close()V

    .line 189
    iput-object v1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 191
    :cond_0
    iput-object v1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    .line 192
    return-void
.end method

.method public deviceSwitch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;

    .line 280
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-nez v0, :cond_0

    .line 281
    const/4 v0, 0x5

    const-string v1, "deviceSwitch() : mAospImsCallSessionProxy is null"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 282
    return-void

    .line 284
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->deviceSwitch(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-nez v0, :cond_0

    .line 263
    const/4 v0, 0x5

    const-string v1, "explicitCallTransfer() : mAospImsCallSessionProxy is null"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 265
    return-void

    .line 267
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->explicitCallTransfer()V

    .line 268
    return-void
.end method

.method public getAospCallSessionProxy()Lcom/mediatek/ims/ImsCallSessionProxy;
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    return-object v0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 4

    .line 195
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v1, ""

    const/4 v2, 0x5

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "getCallId() : RemoteException getCallId()"

    invoke-direct {p0, v3, v2}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 204
    return-object v1

    .line 196
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    const-string v0, "getCallId() : mCallSessionImpl is null"

    invoke-direct {p0, v0, v2}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 197
    return-object v1
.end method

.method public getCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 4

    .line 209
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "getCallProfile() : RemoteException getCallProfile()"

    invoke-direct {p0, v3, v2}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 219
    return-object v1

    .line 210
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    const-string v0, "getCallProfile() : mCallSessionImpl is null"

    invoke-direct {p0, v0, v2}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 211
    return-object v1
.end method

.method getConfEvtListener()Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;
    .locals 2

    .line 487
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-nez v0, :cond_0

    .line 488
    const/4 v0, 0x5

    const-string v1, "ConferenceEventListener() : mAospImsCallSessionProxy is null"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 490
    const/4 v0, 0x0

    return-object v0

    .line 492
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getConfEvtListener()Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderCallId()Ljava/lang/String;
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getHeaderCallId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIImsCallSession()Lcom/android/ims/internal/IImsCallSession;
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-nez v0, :cond_0

    .line 230
    const/4 v0, 0x5

    const-string v1, "getIImsCallSession() : mAospImsCallSessionProxy is null"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 232
    const/4 v0, 0x0

    return-object v0

    .line 234
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    return-object v0
.end method

.method public getServiceImpl()Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    return-object v0
.end method

.method public isIncomingCallMultiparty()Z
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isIncomingCallMultiparty()Z

    move-result v0

    return v0

    .line 245
    :cond_1
    :goto_0
    const/4 v0, 0x5

    const-string v1, "isIncomingCallMultiparty() : mCallSessionImpl is null"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public notifyCallSessionBusy()V
    .locals 3

    .line 475
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    if-nez v0, :cond_0

    .line 476
    const/4 v0, 0x2

    const-string v1, "notifyCallSessionBusy() : mMtkListener is null"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 477
    return-void

    .line 480
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    invoke-interface {v0, v1}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionBusy(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    goto :goto_0

    .line 481
    :catch_0
    move-exception v0

    .line 482
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x5

    const-string v2, "notifyCallSessionBusy() : RemoteException notifyCallSessionBusy()"

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 484
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public notifyCallSessionCalling()V
    .locals 3

    .line 463
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    if-nez v0, :cond_0

    .line 464
    const/4 v0, 0x2

    const-string v1, "notifyCallSessionCalling() : mMtkListener is null"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 465
    return-void

    .line 468
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    invoke-interface {v0, v1}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionCalling(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    goto :goto_0

    .line 469
    :catch_0
    move-exception v0

    .line 470
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x5

    const-string v2, "notifyCallSessionCalling() : RemoteException notifyCallSessionCalling()"

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 472
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method notifyCallSessionMergeComplete(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    .locals 3
    .param p1, "mtkConfSession"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;

    .line 424
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    const/4 v1, 0x5

    if-nez v0, :cond_0

    .line 425
    const-string v0, "notifyCallSessionMergeComplete() : mMtkListener is null"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 427
    return-void

    .line 430
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionMergeComplete(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    goto :goto_0

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "notifyCallSessionMergeComplete() : RemoteException when MTK session merged started"

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 435
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method notifyCallSessionMergeStarted(Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "mtkConfSession"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .param p2, "imsCallProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 410
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    const/4 v1, 0x5

    if-nez v0, :cond_0

    .line 411
    const-string v0, "notifyCallSessionMergeStarted() : mMtkListener is null"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 413
    return-void

    .line 416
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    invoke-interface {v0, v2, p1, p2}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionMergeStarted(Lcom/mediatek/ims/internal/IMtkImsCallSession;Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    goto :goto_0

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "notifyCallSessionMergeStarted() : RemoteException when MTK session merged started"

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 421
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public notifyCallSessionRinging(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "imsCallProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 451
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    if-nez v0, :cond_0

    .line 452
    const/4 v0, 0x2

    const-string v1, "notifyCallSessionRinging() : mMtkListener is null"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 453
    return-void

    .line 456
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    invoke-interface {v0, v1, p1}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionRinging(Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    goto :goto_0

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x5

    const-string v2, "notifyCallSessionRinging() : RemoteException notifyCallSessionRinging()"

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 460
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public notifyDeviceSwitchFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 336
    const-string v0, "MtkImsCallSessionProxy"

    const-string v1, "notifyTransferFailed()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    const/4 v1, 0x5

    if-nez v0, :cond_0

    .line 338
    const-string v0, "notifyDeviceSwitchFailed() : mMtkListener is null"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 340
    return-void

    .line 343
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    invoke-interface {v0, v2, p1}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionDeviceSwitchFailed(Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    goto :goto_0

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "notifyDeviceSwitchFailed() : RemoteException notifyDeviceSwitchFailed()"

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 348
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public notifyDeviceSwitched()V
    .locals 3

    .line 322
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    const/4 v1, 0x5

    if-nez v0, :cond_0

    .line 323
    const-string v0, "notifyDeviceSwitched() : mMtkListener is null"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 324
    return-void

    .line 327
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionDeviceSwitched(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "notifyDeviceSwitched() : RemoteException notifyDeviceSwitched()"

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 332
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method notifyRedialEcc(Z)V
    .locals 3
    .param p1, "isNeedUserConfirm"    # Z

    .line 438
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    const/4 v1, 0x5

    if-nez v0, :cond_0

    .line 439
    const-string v0, "notifyRedialEcc() : mMtkListener is null"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 440
    return-void

    .line 443
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    invoke-interface {v0, v2, p1}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionRedialEcc(Lcom/mediatek/ims/internal/IMtkImsCallSession;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    goto :goto_0

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "notifyRedialEcc() : RemoteException callSessionRedialEcc()"

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 448
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public notifyRttECCRedialEvent()V
    .locals 4

    .line 366
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    const-string v1, "MtkImsCallSessionProxy"

    if-nez v0, :cond_0

    .line 367
    const-string v0, "notifyRttECCRedialEvent() listener is null"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return-void

    .line 371
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    const/16 v3, 0x89

    invoke-interface {v0, v2, v3}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionRttEventReceived(Lcom/mediatek/ims/internal/IMtkImsCallSession;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    goto :goto_0

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteException callSessionRttEventReceived()"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public notifyTextCapabilityChanged(IIII)V
    .locals 7
    .param p1, "localCapability"    # I
    .param p2, "remoteCapability"    # I
    .param p3, "localTextStatus"    # I
    .param p4, "realRemoteCapability"    # I

    .line 352
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    const-string v6, "MtkImsCallSessionProxy"

    if-nez v0, :cond_0

    .line 353
    const-string v0, "notifyTextCapabilityChanged() listener is null"

    invoke-static {v6, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return-void

    .line 357
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionTextCapabilityChanged(Lcom/mediatek/ims/internal/IMtkImsCallSession;IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    goto :goto_0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RemoteException callSessionTextCapabilityChanged()"

    invoke-static {v6, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method notifyTransferFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 309
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    const/4 v1, 0x5

    if-nez v0, :cond_0

    .line 310
    const-string v0, "notifyTransferFailed() : mMtkListener is null"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 311
    return-void

    .line 314
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    invoke-interface {v0, v2, p1}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionTransferFailed(Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    goto :goto_0

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "notifyTransferFailed() : RemoteException callSessionTransferFailed()"

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 319
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method notifyTransferred()V
    .locals 3

    .line 296
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    const/4 v1, 0x5

    if-nez v0, :cond_0

    .line 297
    const-string v0, "notifyTransferred() : mMtkListener is null"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 298
    return-void

    .line 301
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionTransferred(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "notifyTransferred() : RemoteException callSessionTransferred()"

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 306
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public removeLastParticipant()V
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->removeLastParticipant()V

    .line 402
    return-void
.end method

.method public resume()V
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-nez v0, :cond_0

    .line 379
    const/4 v0, 0x5

    const-string v1, "resume() : mAospImsCallSessionProxy is null"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 380
    return-void

    .line 383
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 384
    return-void
.end method

.method public setAospCallSessionProxy(Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .locals 0
    .param p1, "callSessionProxy"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 516
    iput-object p1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 517
    return-void
.end method

.method setIImsCallSession(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 1
    .param p1, "iSession"    # Lcom/android/ims/internal/IImsCallSession;

    .line 238
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->setServiceImpl(Lcom/android/ims/internal/IImsCallSession;)V

    .line 241
    :cond_0
    return-void
.end method

.method public setImsCallMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 397
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->setImsCallMode(I)V

    .line 398
    return-void
.end method

.method public setListener(Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    .line 225
    iput-object p1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    .line 226
    return-void
.end method

.method public setServiceImpl(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    .locals 0
    .param p1, "serviceImpl"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;

    .line 508
    iput-object p1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    .line 509
    return-void
.end method

.method terminate(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 496
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-nez v0, :cond_0

    .line 497
    const/4 v0, 0x5

    const-string v1, "terminate() : mAospImsCallSessionProxy is null"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 498
    return-void

    .line 500
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->terminate(I)V

    .line 501
    return-void
.end method

.method public unattendedCallTransfer(Ljava/lang/String;I)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 271
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-nez v0, :cond_0

    .line 272
    const/4 v0, 0x5

    const-string v1, "unattendedCallTransfer() : mAospImsCallSessionProxy is null"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 274
    return-void

    .line 276
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->unattendedCallTransfer(Ljava/lang/String;I)V

    .line 277
    return-void
.end method

.class public Lcom/mediatek/ims/MtkImsCall;
.super Lcom/android/ims/ImsCall;
.source "MtkImsCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/MtkImsCall$MtkImsCallSessionListenerProxy;,
        Lcom/mediatek/ims/MtkImsCall$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MtkImsCall"

.field private static final UPDATE_ECT:I = 0x7


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mIsConferenceMerging:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsCall;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;)V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/MtkImsCall;->mIsConferenceMerging:Z

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/MtkImsCall;->mAddress:Ljava/lang/String;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/MtkImsCall;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/MtkImsCall;

    .line 53
    invoke-virtual {p0}, Lcom/mediatek/ims/MtkImsCall;->isMergeHost()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/ims/MtkImsCall;)Lcom/android/ims/ImsCall;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/MtkImsCall;

    .line 53
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/ims/MtkImsCall;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/MtkImsCall;
    .param p1, "x1"    # Ljava/lang/String;

    .line 53
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/MtkImsCall;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/mediatek/ims/MtkImsCall;)Lcom/android/ims/ImsCall$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/MtkImsCall;

    .line 53
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/ims/MtkImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/ims/MtkImsCall;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/ims/MtkImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/ims/MtkImsCall;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/MtkImsCall;
    .param p1, "x1"    # Ljava/lang/String;

    .line 53
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/MtkImsCall;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/ims/MtkImsCall;)Lcom/android/ims/ImsCall$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/MtkImsCall;

    .line 53
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/ims/MtkImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/ims/MtkImsCall;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/ims/MtkImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/mediatek/ims/MtkImsCall;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/MtkImsCall;
    .param p1, "x1"    # Ljava/lang/String;

    .line 53
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/MtkImsCall;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/mediatek/ims/MtkImsCall;)Lcom/android/ims/ImsCall$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/MtkImsCall;

    .line 53
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mediatek/ims/MtkImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/ims/MtkImsCall;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/ims/MtkImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/ims/MtkImsCall;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/MtkImsCall;
    .param p1, "x1"    # Ljava/lang/String;

    .line 53
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/MtkImsCall;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/ims/MtkImsCall;)Lcom/android/ims/ImsCall;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/MtkImsCall;

    .line 53
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mediatek/ims/MtkImsCall;Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/MtkImsCall;
    .param p1, "x1"    # Landroid/telephony/ims/ImsCallSession;

    .line 53
    iput-object p1, p0, Lcom/mediatek/ims/MtkImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mediatek/ims/MtkImsCall;)Landroid/telephony/ims/ImsCallSession;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/MtkImsCall;

    .line 53
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/ims/MtkImsCall;)Lcom/android/ims/ImsCall$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/MtkImsCall;

    .line 53
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/ims/MtkImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/ims/MtkImsCall;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/ims/MtkImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/ims/MtkImsCall;)Lcom/android/ims/ImsCall$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/MtkImsCall;

    .line 53
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/ims/MtkImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/ims/MtkImsCall;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/ims/MtkImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private appendImsCallInfoToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 414
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    const-string v1, " MtkImsCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public approveEccRedial(Z)V
    .registers 4
    .param p1, "isAprroved"    # Z

    .line 190
    const-string v0, "approveEccRedial :: "

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/MtkImsCall;->logi(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 192
    :try_start_8
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/mediatek/ims/MtkImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    instance-of v1, v1, Lcom/mediatek/ims/internal/MtkImsCallSession;

    if-nez v1, :cond_13

    goto :goto_1c

    .line 196
    :cond_13
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    check-cast v1, Lcom/mediatek/ims/internal/MtkImsCallSession;

    invoke-virtual {v1, p1}, Lcom/mediatek/ims/internal/MtkImsCallSession;->approveEccRedial(Z)V

    .line 197
    monitor-exit v0

    .line 198
    return-void

    .line 193
    :cond_1c
    :goto_1c
    monitor-exit v0

    return-void

    .line 197
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method protected checkIfConferenceMerge(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 436
    invoke-virtual {p0}, Lcom/mediatek/ims/MtkImsCall;->isCallSessionMergePending()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/mediatek/ims/MtkImsCall;->isConferenceHost()Z

    move-result v0

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/mediatek/ims/MtkImsCall;->mTerminationRequestPending:Z

    if-eqz v0, :cond_18

    .line 437
    :cond_10
    const-string v0, "this is a conference host during merging, and is disconnected.."

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/MtkImsCall;->logi(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/MtkImsCall;->processMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 440
    :cond_18
    return-void
.end method

.method protected copyCallProfileIfNecessary(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 422
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v0, :cond_b

    .line 423
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->copyFrom(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 425
    :cond_b
    return-void
.end method

.method protected createCallSessionListener()Landroid/telephony/ims/ImsCallSession$Listener;
    .registers 2

    .line 241
    new-instance v0, Lcom/mediatek/ims/MtkImsCall$MtkImsCallSessionListenerProxy;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/MtkImsCall$MtkImsCallSessionListenerProxy;-><init>(Lcom/mediatek/ims/MtkImsCall;)V

    iput-object v0, p0, Lcom/mediatek/ims/MtkImsCall;->mImsCallSessionListenerProxy:Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;

    .line 242
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCall;->mImsCallSessionListenerProxy:Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;

    return-object v0
.end method

.method protected createNewCall(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/ImsCall;
    .registers 5
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 220
    new-instance v0, Lcom/mediatek/ims/MtkImsCall;

    iget-object v1, p0, Lcom/mediatek/ims/MtkImsCall;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/mediatek/ims/MtkImsCall;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;)V

    .line 223
    .local v0, "call":Lcom/android/ims/ImsCall;
    :try_start_7
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->attachSession(Landroid/telephony/ims/ImsCallSession;)V
    :try_end_a
    .catch Lcom/android/ims/ImsException; {:try_start_7 .. :try_end_a} :catch_b

    .line 229
    goto :goto_11

    .line 224
    :catch_b
    move-exception v1

    .line 225
    .local v1, "e":Lcom/android/ims/ImsException;
    nop

    .line 226
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->close()V

    .line 227
    const/4 v0, 0x0

    .line 233
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_11
    return-object v0
.end method

.method public isIncomingCallMultiparty()Z
    .registers 3

    .line 174
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_3
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/mediatek/ims/MtkImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    instance-of v1, v1, Lcom/mediatek/ims/internal/MtkImsCallSession;

    if-nez v1, :cond_e

    goto :goto_18

    .line 179
    :cond_e
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    check-cast v1, Lcom/mediatek/ims/internal/MtkImsCallSession;

    invoke-virtual {v1}, Lcom/mediatek/ims/internal/MtkImsCallSession;->isIncomingCallMultiparty()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 176
    :cond_18
    :goto_18
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 180
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public isMultipartyEx()Z
    .registers 2

    .line 477
    invoke-virtual {p0}, Lcom/mediatek/ims/MtkImsCall;->isConferenceHost()Z

    move-result v0

    return v0
.end method

.method protected logi(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 404
    invoke-direct {p0, p1}, Lcom/mediatek/ims/MtkImsCall;->appendImsCallInfoToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkImsCall"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    return-void
.end method

.method protected resetConferenceMergingFlag()V
    .registers 2

    .line 457
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/MtkImsCall;->mIsConferenceMerging:Z

    .line 458
    return-void
.end method

.method protected setPendingUpdateMerge()V
    .registers 3

    .line 466
    const/4 v0, 0x4

    iput v0, p0, Lcom/mediatek/ims/MtkImsCall;->mUpdateRequest:I

    .line 467
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    if-eqz v1, :cond_b

    .line 468
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    iput v0, v1, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 470
    :cond_b
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    if-eqz v1, :cond_13

    .line 471
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    iput v0, v1, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 473
    :cond_13
    return-void
.end method

.method public setTerminationRequestFlag(Z)V
    .registers 2
    .param p1, "result"    # Z

    .line 461
    iput-boolean p1, p0, Lcom/mediatek/ims/MtkImsCall;->mTerminationRequestPending:Z

    .line 462
    return-void
.end method

.method protected setTransientSessionAsPrimary(Landroid/telephony/ims/ImsCallSession;)V
    .registers 4
    .param p1, "transientSession"    # Landroid/telephony/ims/ImsCallSession;

    .line 145
    monitor-enter p0

    .line 147
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v0, :cond_b

    .line 148
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSession;->setListener(Landroid/telephony/ims/ImsCallSession$Listener;)V

    .line 150
    :cond_b
    iput-object p1, p0, Lcom/mediatek/ims/MtkImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    .line 152
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v0, :cond_27

    .line 153
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {p0}, Lcom/mediatek/ims/MtkImsCall;->createCallSessionListener()Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSession;->setListener(Landroid/telephony/ims/ImsCallSession$Listener;)V

    .line 158
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallSession;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    .line 159
    .local v0, "imsCallProfile":Landroid/telephony/ims/ImsCallProfile;
    if-eqz v0, :cond_27

    .line 160
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, v0}, Landroid/telephony/ims/ImsCallProfile;->updateCallType(Landroid/telephony/ims/ImsCallProfile;)V

    .line 163
    .end local v0    # "imsCallProfile":Landroid/telephony/ims/ImsCallProfile;
    :cond_27
    monitor-exit p0

    .line 164
    return-void

    .line 163
    :catchall_29
    move-exception v0

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method protected shouldSkipResetMergePending()Z
    .registers 2

    .line 452
    const/4 v0, 0x1

    return v0
.end method

.method public start(Landroid/telephony/ims/ImsCallSession;Ljava/lang/String;)V
    .registers 3
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "callee"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 118
    invoke-super {p0, p1, p2}, Lcom/android/ims/ImsCall;->start(Landroid/telephony/ims/ImsCallSession;Ljava/lang/String;)V

    .line 119
    iput-object p2, p0, Lcom/mediatek/ims/MtkImsCall;->mAddress:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public start(Landroid/telephony/ims/ImsCallSession;[Ljava/lang/String;)V
    .registers 5
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "participants"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 133
    invoke-super {p0, p1, p2}, Lcom/android/ims/ImsCall;->start(Landroid/telephony/ims/ImsCallSession;[Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 138
    const-string v1, "android.telephony.ims.extra.CONFERENCE"

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/MtkImsCall;->mIsConferenceHost:Z

    .line 141
    :cond_14
    return-void
.end method

.method protected updateHoldStateIfNecessary(Z)V
    .registers 2
    .param p1, "hold"    # Z

    .line 447
    iput-boolean p1, p0, Lcom/mediatek/ims/MtkImsCall;->mHold:Z

    .line 448
    return-void
.end method

.method protected updateRequestToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "updateRequest"    # I

    .line 390
    packed-switch p1, :pswitch_data_c

    .line 394
    invoke-super {p0, p1}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 392
    :pswitch_8
    const-string v0, "ECT"

    return-object v0

    nop

    :pswitch_data_c
    .packed-switch 0x7
        :pswitch_8
    .end packed-switch
.end method

.method public videoRingtoneOperation(ILjava/lang/String;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "operation"    # Ljava/lang/String;

    .line 207
    const-string v0, "videoRingtoneOperation :: "

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/MtkImsCall;->logi(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_8
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/mediatek/ims/MtkImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    instance-of v1, v1, Lcom/mediatek/ims/internal/MtkImsCallSession;

    if-nez v1, :cond_13

    goto :goto_1c

    .line 213
    :cond_13
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    check-cast v1, Lcom/mediatek/ims/internal/MtkImsCallSession;

    invoke-virtual {v1, p1, p2}, Lcom/mediatek/ims/internal/MtkImsCallSession;->videoRingtoneOperation(ILjava/lang/String;)V

    .line 214
    monitor-exit v0

    .line 215
    return-void

    .line 210
    :cond_1c
    :goto_1c
    monitor-exit v0

    return-void

    .line 214
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_1e

    throw v1
.end method

.class public Lcom/android/ims/ImsCall;
.super Ljava/lang/Object;
.source "ImsCall.java"

# interfaces
.implements Lcom/android/ims/internal/ICall;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;,
        Lcom/android/ims/ImsCall$Listener;
    }
.end annotation


# static fields
.field private static final CONF_DBG:Z = true

.field private static final DBG:Z

.field private static final FORCE_DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "ImsCall"

.field private static final UPDATE_EXTEND_TO_CONFERENCE:I = 0x5

.field private static final UPDATE_HOLD:I = 0x1

.field private static final UPDATE_HOLD_MERGE:I = 0x2

.field private static final UPDATE_MERGE:I = 0x4

.field protected static final UPDATE_NONE:I = 0x0

.field private static final UPDATE_RESUME:I = 0x3

.field private static final UPDATE_UNSPECIFIED:I = 0x6

.field public static final USSD_MODE_NOTIFY:I = 0x0

.field public static final USSD_MODE_REQUEST:I = 0x1

.field private static final VDBG:Z

.field private static final sUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mAnswerWithRtt:Z

.field protected mCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mCallSessionMergePending:Z

.field private mConferenceParticipants:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field protected mHold:Z

.field protected mImsCallSessionListenerProxy:Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;

.field private mInCall:Z

.field protected mIsConferenceHost:Z

.field private mIsMerged:Z

.field private mLastReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

.field protected mListener:Lcom/android/ims/ImsCall$Listener;

.field protected mLockObj:Ljava/lang/Object;

.field private mMediaSession:Lcom/android/ims/internal/ImsStreamMediaSession;

.field protected mMergeHost:Lcom/android/ims/ImsCall;

.field protected mMergePeer:Lcom/android/ims/ImsCall;

.field private mMergeRequestedByConference:Z

.field private mMute:Z

.field private mOverrideReason:I

.field private mProposedCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field public mSession:Landroid/telephony/ims/ImsCallSession;

.field private mSessionEndDuringMerge:Z

.field private mSessionEndDuringMergeReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

.field protected mTerminationRequestPending:Z

.field protected mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

.field protected mUpdateRequest:I

.field private mWasVideoCall:Z

.field public final uniqueId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    .line 77
    sput-boolean v0, Lcom/android/ims/ImsCall;->VDBG:Z

    .line 609
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/android/ims/ImsCall;->sUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    .line 517
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    .line 521
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 523
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mMute:Z

    .line 525
    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 527
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 530
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 532
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    .line 536
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mMergeRequestedByConference:Z

    .line 538
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    .line 541
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 545
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 546
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 549
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mMediaSession:Lcom/android/ims/internal/ImsStreamMediaSession;

    .line 553
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    .line 559
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    .line 563
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMergeReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 567
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mIsMerged:Z

    .line 573
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mCallSessionMergePending:Z

    .line 582
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mTerminationRequestPending:Z

    .line 595
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mIsConferenceHost:Z

    .line 604
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mWasVideoCall:Z

    .line 628
    iput v0, p0, Lcom/android/ims/ImsCall;->mOverrideReason:I

    .line 634
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mAnswerWithRtt:Z

    .line 643
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mContext:Landroid/content/Context;

    .line 644
    invoke-virtual {p0, p2}, Lcom/android/ims/ImsCall;->setCallProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 645
    sget-object v0, Lcom/android/ims/ImsCall;->sUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/android/ims/ImsCall;->uniqueId:I

    .line 646
    return-void
.end method

.method static synthetic access$000(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/ImsCall;
    .param p1, "x1"    # Landroid/telephony/ims/ImsCallSession;

    .line 58
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->isTransientConferenceSession(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/ims/ImsCall;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsCall;
    .param p1, "x1"    # Z

    .line 58
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsCall;
    .param p1, "x1"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 58
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/ims/ImsCall;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/ImsCall;

    .line 58
    iget v0, p0, Lcom/android/ims/ImsCall;->mOverrideReason:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsCall;
    .param p1, "x1"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 58
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->processCallTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsCall;

    .line 58
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->mergeInternal()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallProfile;
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsCall;
    .param p1, "x1"    # Landroid/telephony/ims/ImsCallProfile;

    .line 58
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object p1
.end method

.method static synthetic access$700()Z
    .locals 1

    .line 58
    sget-boolean v0, Lcom/android/ims/ImsCall;->VDBG:Z

    return v0
.end method

.method private appendImsCallInfoToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 3594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3595
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3596
    const-string v1, " ImsCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3597
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3598
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private clear(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "lastReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1741
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    .line 1742
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 1743
    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1744
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 1745
    return-void
.end method

.method private clearMergeInfo()V
    .locals 3

    .line 3353
    const-string v0, "clearMergeInfo :: clearing all merge info"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 3357
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3358
    iput-object v1, v0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 3359
    iput v2, v0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 3360
    iput-boolean v2, v0, Lcom/android/ims/ImsCall;->mCallSessionMergePending:Z

    .line 3362
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_1

    .line 3363
    iput-object v1, v0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    .line 3364
    iput v2, v0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 3365
    iput-boolean v2, v0, Lcom/android/ims/ImsCall;->mCallSessionMergePending:Z

    .line 3367
    :cond_1
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    .line 3368
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 3369
    iput v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 3370
    iput-boolean v2, p0, Lcom/android/ims/ImsCall;->mCallSessionMergePending:Z

    .line 3371
    return-void
.end method

.method private clearSessionTerminationFlags()V
    .locals 1

    .line 2270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    .line 2271
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMergeReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 2272
    return-void
.end method

.method private createHoldMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;
    .locals 3

    .line 1781
    new-instance v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    .line 1783
    .local v0, "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-nez v1, :cond_0

    .line 1784
    return-object v0

    .line 1787
    :cond_0
    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 1788
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 1789
    const/4 v1, 0x2

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 1791
    iget v2, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    if-eqz v2, :cond_1

    .line 1792
    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 1795
    :cond_1
    return-object v0
.end method

.method private createResumeMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;
    .locals 3

    .line 1799
    new-instance v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    .line 1801
    .local v0, "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-nez v1, :cond_0

    .line 1802
    return-object v0

    .line 1805
    :cond_0
    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 1806
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 1807
    const/4 v1, 0x3

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 1809
    iget v2, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    if-eqz v2, :cond_1

    .line 1810
    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 1813
    :cond_1
    return-object v0
.end method

.method private enforceConversationMode()V
    .locals 1

    .line 1817
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    if-eqz v0, :cond_0

    .line 1818
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 1819
    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1821
    :cond_0
    return-void
.end method

.method private isMerging()Z
    .locals 1

    .line 3407
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isSessionAlive(Landroid/telephony/ims/ImsCallSession;)Z
    .locals 1
    .param p0, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 703
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallSession;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isTransientConferenceSession(Landroid/telephony/ims/ImsCallSession;)Z
    .locals 1
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 1967
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    if-ne p1, v0, :cond_0

    .line 1968
    const/4 v0, 0x1

    return v0

    .line 1970
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isUpdatePending(Lcom/android/ims/ImsCall;)Z
    .locals 2
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .line 1376
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    if-eqz v0, :cond_0

    .line 1377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "merge :: update is in progress; request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1378
    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1377
    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1379
    const/4 v0, 0x1

    return v0

    .line 1381
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private logv(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 3695
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->appendImsCallInfoToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsCall"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3696
    return-void
.end method

.method private markCallAsMerged(Z)V
    .locals 4
    .param p1, "playDisconnectTone"    # Z

    .line 1985
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/ImsCall;->isSessionAlive(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1988
    const-string v0, "markCallAsMerged"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1995
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    .line 1997
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    .line 1999
    const/4 v0, 0x0

    .line 2000
    .local v0, "reasonCode":I
    if-eqz p1, :cond_0

    .line 2001
    const/16 v0, 0x1fe

    .line 2002
    const-string v1, "Call ended by network"

    .local v1, "reasonInfo":Ljava/lang/String;
    goto :goto_0

    .line 2004
    .end local v1    # "reasonInfo":Ljava/lang/String;
    :cond_0
    const/16 v0, 0x6c

    .line 2005
    const-string v1, "Call ended during conference merge process."

    .line 2007
    .restart local v1    # "reasonInfo":Ljava/lang/String;
    :goto_0
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    iput-object v2, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMergeReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 2010
    .end local v0    # "reasonCode":I
    .end local v1    # "reasonInfo":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private merge()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1391
    const-string v0, "merge :: "

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1393
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1396
    :try_start_0
    invoke-direct {p0, p0}, Lcom/android/ims/ImsCall;->isUpdatePending(Lcom/android/ims/ImsCall;)Z

    move-result v1

    const/16 v2, 0x66

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 1397
    invoke-direct {p0, v3}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    .line 1398
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-direct {v1, v3}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    .line 1399
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    invoke-direct {v1, v3}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    .line 1400
    :cond_1
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v3, "Call update is in progress"

    invoke-direct {v1, v3, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    throw v1

    .line 1406
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    :cond_2
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->isUpdatePending(Lcom/android/ims/ImsCall;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->isUpdatePending(Lcom/android/ims/ImsCall;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_3

    .line 1414
    :cond_3
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_8

    .line 1422
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mHold:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111011e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 1445
    :cond_4
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createHoldMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallSession;->hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1446
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 1447
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    goto :goto_2

    .line 1425
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    const/4 v2, 0x4

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1433
    iput v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1434
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    iput v2, v1, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    goto :goto_1

    .line 1435
    :cond_6
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1436
    iput v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1437
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    iput v2, v1, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1440
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->merge()V

    .line 1449
    :goto_2
    monitor-exit v0

    .line 1450
    return-void

    .line 1415
    :cond_8
    const-string v1, "merge :: no call session"

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1416
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    throw v1

    .line 1407
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    :cond_9
    :goto_3
    invoke-direct {p0, v3}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    .line 1408
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-direct {v1, v3}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    .line 1409
    :cond_a
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    invoke-direct {v1, v3}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    .line 1410
    :cond_b
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v3, "Peer or host call update is in progress"

    invoke-direct {v1, v3, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    throw v1

    .line 1449
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private mergeInternal()V
    .locals 1

    .line 1825
    const-string v0, "mergeInternal :: "

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1828
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallSession;->merge()V

    .line 1829
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1830
    return-void
.end method

.method private notifyConferenceSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1833
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 1834
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->clear(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1836
    if-eqz v0, :cond_0

    .line 1838
    :try_start_0
    invoke-virtual {v0, p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallTerminated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1841
    goto :goto_0

    .line 1839
    :catchall_0
    move-exception v1

    .line 1840
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "notifyConferenceSessionTerminated :: "

    invoke-virtual {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1843
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method private notifyConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V
    .locals 22
    .param p1, "state"    # Landroid/telephony/ims/ImsConferenceState;

    .line 1846
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz v2, :cond_6

    iget-object v0, v2, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 1850
    :cond_0
    iget-object v0, v2, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 1852
    .local v3, "participants":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    if-nez v3, :cond_1

    .line 1853
    return-void

    .line 1856
    :cond_1
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1859
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1861
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1862
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1864
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1865
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 1866
    .local v6, "confInfo":Landroid/os/Bundle;
    const-string v7, "status"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1867
    .local v7, "status":Ljava/lang/String;
    const-string v8, "user"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1868
    .local v8, "user":Ljava/lang/String;
    const-string v9, "display-text"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1869
    .local v9, "displayName":Ljava/lang/String;
    const-string v10, "endpoint"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1872
    .local v10, "endpoint":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "notifyConferenceStateUpdated :: key="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "ImsCall"

    invoke-static {v12, v5}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", status="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", user="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1874
    invoke-static {v12, v8}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", displayName= "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1875
    invoke-static {v12, v9}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", endpoint="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1872
    invoke-virtual {v1, v11}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1879
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 1880
    .local v16, "handle":Landroid/net/Uri;
    if-nez v10, :cond_2

    .line 1881
    const-string v10, ""

    move-object/from16 v17, v10

    goto :goto_1

    .line 1880
    :cond_2
    move-object/from16 v17, v10

    .line 1883
    .end local v10    # "endpoint":Ljava/lang/String;
    .local v17, "endpoint":Ljava/lang/String;
    :goto_1
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 1884
    .local v18, "endpointUri":Landroid/net/Uri;
    invoke-static {v7}, Landroid/telephony/ims/ImsConferenceState;->getConnectionStateForStatus(Ljava/lang/String;)I

    move-result v15

    .line 1886
    .local v15, "connectionState":I
    const/4 v10, 0x6

    if-eq v15, v10, :cond_3

    .line 1887
    new-instance v19, Landroid/telecom/ConferenceParticipant;

    const/16 v20, -0x1

    move-object/from16 v10, v19

    move-object/from16 v11, v16

    move-object v12, v9

    move-object/from16 v13, v18

    move v14, v15

    move/from16 v21, v15

    .end local v15    # "connectionState":I
    .local v21, "connectionState":I
    move/from16 v15, v20

    invoke-direct/range {v10 .. v15}, Landroid/telecom/ConferenceParticipant;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 1889
    .local v10, "conferenceParticipant":Landroid/telecom/ConferenceParticipant;
    iget-object v11, v1, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v11, v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1886
    .end local v10    # "conferenceParticipant":Landroid/telecom/ConferenceParticipant;
    .end local v21    # "connectionState":I
    .restart local v15    # "connectionState":I
    :cond_3
    move/from16 v21, v15

    .line 1891
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "confInfo":Landroid/os/Bundle;
    .end local v7    # "status":Ljava/lang/String;
    .end local v8    # "user":Ljava/lang/String;
    .end local v9    # "displayName":Ljava/lang/String;
    .end local v15    # "connectionState":I
    .end local v16    # "handle":Landroid/net/Uri;
    .end local v17    # "endpoint":Ljava/lang/String;
    .end local v18    # "endpointUri":Landroid/net/Uri;
    :goto_2
    goto/16 :goto_0

    .line 1893
    :cond_4
    iget-object v0, v1, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_5

    iget-object v5, v1, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    if-eqz v5, :cond_5

    .line 1895
    :try_start_0
    invoke-virtual {v5, v1, v0}, Lcom/android/ims/ImsCall$Listener;->onConferenceParticipantsStateChanged(Lcom/android/ims/ImsCall;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1898
    goto :goto_3

    .line 1896
    :catchall_0
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 1897
    .local v0, "t":Ljava/lang/Throwable;
    const-string v5, "notifyConferenceStateUpdated :: "

    invoke-virtual {v1, v5, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1900
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_5
    :goto_3
    return-void

    .line 1847
    .end local v3    # "participants":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    :cond_6
    :goto_4
    return-void
.end method

.method private notifySessionTerminatedDuringMerge()V
    .locals 5

    .line 2242
    const/4 v0, 0x0

    .line 2243
    .local v0, "notifyFailure":Z
    const/4 v1, 0x0

    .line 2245
    .local v1, "notifyFailureReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    monitor-enter p0

    .line 2246
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 2247
    .local v2, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-boolean v3, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    if-eqz v3, :cond_0

    .line 2252
    const-string v3, "notifySessionTerminatedDuringMerge ::reporting terminate during merge"

    invoke-virtual {p0, v3}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2254
    const/4 v0, 0x1

    .line 2255
    iget-object v3, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMergeReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    move-object v1, v3

    .line 2257
    :cond_0
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->clearSessionTerminationFlags()V

    .line 2258
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2260
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 2262
    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->processCallTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2265
    goto :goto_0

    .line 2263
    :catchall_0
    move-exception v3

    .line 2264
    .local v3, "t":Ljava/lang/Throwable;
    const-string v4, "notifySessionTerminatedDuringMerge :: "

    invoke-virtual {p0, v4, v3}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2267
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void

    .line 2258
    .end local v2    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method private processCallTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processCallTerminated :: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " userInitiated = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mTerminationRequestPending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1915
    const/4 v0, 0x0

    .line 1916
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-enter p0

    .line 1921
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mTerminationRequestPending:Z

    if-nez v1, :cond_0

    .line 1929
    const-string v1, "processCallTerminated :: burying termination during ongoing merge."

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1931
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    .line 1932
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMergeReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 1933
    monitor-exit p0

    return-void

    .line 1937
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1938
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->notifyConferenceSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1939
    monitor-exit p0

    return-void

    .line 1941
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    move-object v0, v1

    .line 1942
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->clear(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1944
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1946
    if-eqz v0, :cond_2

    .line 1948
    :try_start_1
    invoke-virtual {v0, p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallTerminated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1951
    goto :goto_0

    .line 1949
    :catchall_0
    move-exception v1

    .line 1950
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "processCallTerminated :: "

    invoke-virtual {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1953
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    return-void

    .line 1944
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private setCallSessionMergePending(Z)V
    .locals 0
    .param p1, "callSessionMergePending"    # Z

    .line 3444
    iput-boolean p1, p0, Lcom/android/ims/ImsCall;->mCallSessionMergePending:Z

    .line 3445
    return-void
.end method

.method private setMergePeer(Lcom/android/ims/ImsCall;)V
    .locals 1
    .param p1, "mergePeer"    # Lcom/android/ims/ImsCall;

    .line 3380
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 3381
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    .line 3383
    iput-object p0, p1, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    .line 3384
    iput-object v0, p1, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 3385
    return-void
.end method

.method private shouldProcessConferenceResult()Z
    .locals 5

    .line 3462
    const/4 v0, 0x0

    .line 3464
    .local v0, "areMergeTriggersDone":Z
    monitor-enter p0

    .line 3468
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMergeHost()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMergePeer()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3470
    const-string v1, "shouldProcessConferenceResult :: no merge in progress"

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 3472
    monitor-exit p0

    return v2

    .line 3478
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMergeHost()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 3480
    const-string v1, "shouldProcessConferenceResult :: We are a merge host"

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 3481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldProcessConferenceResult :: Here is the merge peer="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 3483
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 3484
    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    move-result v1

    if-nez v1, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    nop

    :goto_0
    move v0, v2

    .line 3485
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 3487
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->isSessionAlive(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v1

    and-int/2addr v0, v1

    goto :goto_2

    .line 3489
    :cond_2
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMergePeer()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3491
    const-string v1, "shouldProcessConferenceResult :: We are a merge peer"

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 3492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldProcessConferenceResult :: Here is the merge host="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 3494
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    .line 3495
    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    move-result v1

    if-nez v1, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    nop

    :goto_1
    move v0, v2

    .line 3496
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3498
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    iget-object v1, v1, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->isSessionAlive(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v1

    and-int/2addr v0, v1

    goto :goto_2

    .line 3510
    :cond_4
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    move-result v1

    xor-int/2addr v1, v3

    move v0, v1

    goto :goto_2

    .line 3514
    :cond_5
    const-string v1, "shouldProcessConferenceResult : merge in progress but call is neither host nor peer."

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 3518
    :cond_6
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldProcessConferenceResult :: returning:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3519
    if-eqz v0, :cond_7

    const-string v2, "true"

    goto :goto_3

    :cond_7
    const-string v2, "false"

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3518
    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 3521
    monitor-exit p0

    .line 3522
    return v0

    .line 3521
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private throwImsException(Ljava/lang/Throwable;I)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3581
    instance-of v0, p1, Lcom/android/ims/ImsException;

    if-eqz v0, :cond_0

    .line 3582
    move-object v0, p1

    check-cast v0, Lcom/android/ims/ImsException;

    throw v0

    .line 3584
    :cond_0
    new-instance v0, Lcom/android/ims/ImsException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0
.end method

.method private trackVideoStateHistory(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 3607
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mWasVideoCall:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mWasVideoCall:Z

    .line 3608
    return-void
.end method

.method private updateCallProfile()V
    .locals 2

    .line 2229
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 2230
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_0

    .line 2231
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->setCallProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2233
    :cond_0
    monitor-exit v0

    .line 2234
    return-void

    .line 2233
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static updateCallProfile(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p0, "call"    # Lcom/android/ims/ImsCall;

    .line 2223
    if-eqz p0, :cond_0

    .line 2224
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->updateCallProfile()V

    .line 2226
    :cond_0
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 1
    .param p1, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1153
    new-instance v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/ims/ImsCall;->accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1154
    return-void
.end method

.method public accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 5
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accept :: callType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1167
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mAnswerWithRtt:Z

    if-eqz v0, :cond_0

    .line 1168
    const/4 v0, 0x1

    iput v0, p2, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    .line 1169
    const-string v0, "accept :: changing media profile RTT mode to full"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1172
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1173
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_4

    .line 1179
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v2, p1, p2}, Landroid/telephony/ims/ImsCallSession;->accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1183
    nop

    .line 1185
    :try_start_2
    iget-boolean v2, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v2, :cond_2

    .line 1186
    sget-boolean v2, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v2, :cond_1

    .line 1187
    const-string v2, "accept :: call profile will be updated"

    invoke-virtual {p0, v2}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1190
    :cond_1
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput-object v2, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1191
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->trackVideoStateHistory(Landroid/telephony/ims/ImsCallProfile;)V

    .line 1192
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1196
    :cond_2
    iget-boolean v2, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    .line 1197
    iput v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1199
    :cond_3
    monitor-exit v0

    .line 1200
    return-void

    .line 1180
    :catchall_0
    move-exception v2

    .line 1181
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "accept :: "

    invoke-virtual {p0, v3, v2}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1182
    new-instance v3, Lcom/android/ims/ImsException;

    const-string v4, "accept()"

    invoke-direct {v3, v4, v2, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "callType":I
    .end local p2    # "profile":Landroid/telephony/ims/ImsStreamMediaProfile;
    throw v3

    .line 1174
    .end local v2    # "t":Ljava/lang/Throwable;
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "callType":I
    .restart local p2    # "profile":Landroid/telephony/ims/ImsStreamMediaProfile;
    :cond_4
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call to answer"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "callType":I
    .end local p2    # "profile":Landroid/telephony/ims/ImsStreamMediaProfile;
    throw v1

    .line 1199
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "callType":I
    .restart local p2    # "profile":Landroid/telephony/ims/ImsStreamMediaProfile;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public attachSession(Landroid/telephony/ims/ImsCallSession;)V
    .locals 3
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attachSession :: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1082
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1083
    :try_start_0
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1086
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->createCallSessionListener()Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallSession;->setListener(Landroid/telephony/ims/ImsCallSession$Listener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1090
    goto :goto_0

    .line 1087
    :catchall_0
    move-exception v1

    .line 1088
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v2, "attachSession :: "

    invoke-virtual {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1089
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/ims/ImsCall;->throwImsException(Ljava/lang/Throwable;I)V

    .line 1091
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    monitor-exit v0

    .line 1092
    return-void

    .line 1091
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method protected checkIfConferenceMerge(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3721
    return-void
.end method

.method public checkIfRemoteUserIsSame(Ljava/lang/String;)Z
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;

    .line 676
    if-nez p1, :cond_0

    .line 677
    const/4 v0, 0x0

    return v0

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "remote_uri"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 3

    .line 653
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 654
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 655
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->close()V

    .line 656
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    goto :goto_0

    .line 658
    :cond_0
    const-string v1, "close :: Cannot close Null call session!"

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 661
    :goto_0
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 662
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 663
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 664
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mMediaSession:Lcom/android/ims/internal/ImsStreamMediaSession;

    .line 665
    monitor-exit v0

    .line 666
    return-void

    .line 665
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public conferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V
    .locals 3
    .param p1, "state"    # Landroid/telephony/ims/ImsConferenceState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3306
    monitor-enter p0

    .line 3307
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->notifyConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V

    .line 3308
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 3309
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3311
    if-eqz v0, :cond_0

    .line 3313
    :try_start_1
    invoke-virtual {v0, p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallConferenceStateUpdated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsConferenceState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3316
    goto :goto_0

    .line 3314
    :catchall_0
    move-exception v1

    .line 3315
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "callSessionConferenceStateUpdated :: "

    invoke-virtual {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3318
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 3309
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method protected copyCallProfileIfNecessary(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 3717
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->copyFrom(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 3718
    return-void
.end method

.method protected createCallSessionListener()Landroid/telephony/ims/ImsCallSession$Listener;
    .locals 1

    .line 1751
    new-instance v0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;-><init>(Lcom/android/ims/ImsCall;)V

    iput-object v0, p0, Lcom/android/ims/ImsCall;->mImsCallSessionListenerProxy:Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;

    .line 1752
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mImsCallSessionListenerProxy:Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;

    return-object v0
.end method

.method protected createNewCall(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/ImsCall;
    .locals 2
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1764
    new-instance v0, Lcom/android/ims/ImsCall;

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/android/ims/ImsCall;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1767
    .local v0, "call":Lcom/android/ims/ImsCall;
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->attachSession(Landroid/telephony/ims/ImsCallSession;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1773
    goto :goto_0

    .line 1768
    :catch_0
    move-exception v1

    .line 1769
    .local v1, "e":Lcom/android/ims/ImsException;
    nop

    .line 1770
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->close()V

    .line 1771
    const/4 v0, 0x0

    .line 1777
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_0
    return-object v0
.end method

.method public deflect(Ljava/lang/String;)V
    .locals 5
    .param p1, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deflect :: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ImsCall"

    invoke-static {v1, p1}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1211
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1212
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 1218
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->deflect(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1222
    nop

    .line 1223
    :try_start_2
    monitor-exit v0

    .line 1224
    return-void

    .line 1219
    :catchall_0
    move-exception v1

    .line 1220
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "deflect :: "

    invoke-virtual {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1221
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "deflect()"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "number":Ljava/lang/String;
    throw v2

    .line 1213
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "number":Ljava/lang/String;
    :cond_0
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call to deflect"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "number":Ljava/lang/String;
    throw v1

    .line 1223
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "number":Ljava/lang/String;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public equalsTo(Lcom/android/ims/internal/ICall;)Z
    .locals 2
    .param p1, "call"    # Lcom/android/ims/internal/ICall;

    .line 691
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 692
    return v0

    .line 695
    :cond_0
    instance-of v1, p1, Lcom/android/ims/ImsCall;

    if-eqz v1, :cond_1

    .line 696
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 699
    :cond_1
    return v0
.end method

.method public extendToConference([Ljava/lang/String;)V
    .locals 4
    .param p1, "participants"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1534
    const-string v0, "extendToConference ::"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1536
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isOnHold()Z

    move-result v0

    const/16 v1, 0x66

    if-eqz v0, :cond_1

    .line 1537
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v0, :cond_0

    .line 1538
    const-string v0, "extendToConference :: call is on hold"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1540
    :cond_0
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v2, "Not in a call to extend a call to conference"

    invoke-direct {v0, v2, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1544
    :cond_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1545
    :try_start_0
    iget v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    if-nez v2, :cond_3

    .line 1554
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_2

    .line 1560
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->extendToConference([Ljava/lang/String;)V

    .line 1561
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1562
    monitor-exit v0

    .line 1563
    return-void

    .line 1555
    :cond_2
    const-string v1, "extendToConference :: "

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1556
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "participants":[Ljava/lang/String;
    throw v1

    .line 1547
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "participants":[Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extendToConference :: update is in progress; request="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1548
    invoke-virtual {p0, v3}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1547
    invoke-virtual {p0, v2}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1550
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "Call update is in progress"

    invoke-direct {v2, v3, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "participants":[Ljava/lang/String;
    throw v2

    .line 1562
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "participants":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCallExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 858
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 860
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 866
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    .line 867
    :catchall_0
    move-exception v1

    .line 868
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "getCallExtra :: "

    invoke-virtual {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 869
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "getCallExtra()"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "name":Ljava/lang/String;
    throw v2

    .line 861
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "name":Ljava/lang/String;
    :cond_0
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "name":Ljava/lang/String;
    throw v1

    .line 871
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "name":Ljava/lang/String;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 2

    .line 712
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 713
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-exit v0

    return-object v1

    .line 714
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCallSession()Landroid/telephony/ims/ImsCallSession;
    .locals 2

    .line 831
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 832
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    monitor-exit v0

    return-object v1

    .line 833
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getConferenceParticipants()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;"
        }
    .end annotation

    .line 795
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 796
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConferenceParticipants :: mConferenceParticipants"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 798
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v1, :cond_0

    .line 799
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 801
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 802
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    monitor-exit v0

    return-object v1

    .line 804
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 805
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getImsCallSessionListenerProxy()Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1760
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mImsCallSessionListenerProxy:Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;

    return-object v0
.end method

.method public getLastReasonInfo()Landroid/telephony/ims/ImsReasonInfo;
    .locals 2

    .line 880
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 881
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    monitor-exit v0

    return-object v1

    .line 882
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 737
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 738
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 744
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    .line 745
    :catchall_0
    move-exception v1

    .line 746
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "getLocalCallProfile :: "

    invoke-virtual {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 747
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "getLocalCallProfile()"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    throw v2

    .line 739
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    :cond_0
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    throw v1

    .line 749
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getMediaSession()Lcom/android/ims/internal/ImsStreamMediaSession;
    .locals 2

    .line 844
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 845
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMediaSession:Lcom/android/ims/internal/ImsStreamMediaSession;

    monitor-exit v0

    return-object v1

    .line 846
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProposedCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 2

    .line 779
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 780
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isInCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 781
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 784
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-exit v0

    return-object v1

    .line 785
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRadioTechnology()I
    .locals 4

    .line 3652
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 3653
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-nez v1, :cond_0

    .line 3654
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 3656
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v2, "CallRadioTech"

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3657
    .local v1, "callType":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3658
    :cond_1
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v3, "callRadioTech"

    invoke-virtual {v2, v3}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 3663
    :cond_2
    const/4 v2, 0x0

    .line 3665
    .local v2, "radioTechnology":I
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 3668
    goto :goto_0

    .line 3666
    :catch_0
    move-exception v3

    .line 3667
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    .line 3670
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    :goto_0
    :try_start_2
    monitor-exit v0

    return v2

    .line 3671
    .end local v1    # "callType":Ljava/lang/String;
    .end local v2    # "radioTechnology":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 758
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 759
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 765
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    .line 766
    :catchall_0
    move-exception v1

    .line 767
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "getRemoteCallProfile :: "

    invoke-virtual {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 768
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "getRemoteCallProfile()"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    throw v2

    .line 760
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    :cond_0
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    throw v1

    .line 770
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getSession()Landroid/telephony/ims/ImsCallSession;
    .locals 2

    .line 2039
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 2040
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    monitor-exit v0

    return-object v1

    .line 2041
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getState()I
    .locals 2

    .line 815
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 816
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-nez v1, :cond_0

    .line 817
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 820
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->getState()I

    move-result v1

    monitor-exit v0

    return v1

    .line 821
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasPendingUpdate()Z
    .locals 2

    .line 891
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 892
    :try_start_0
    iget v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 893
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hold()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1308
    const-string v0, "hold :: "

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1310
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isOnHold()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1311
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v0, :cond_0

    .line 1312
    const-string v0, "hold :: call is already on hold"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1314
    :cond_0
    return-void

    .line 1317
    :cond_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1318
    :try_start_0
    iget v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    if-nez v1, :cond_3

    .line 1325
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_2

    .line 1330
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createHoldMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallSession;->hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1333
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 1334
    iput v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1335
    monitor-exit v0

    .line 1336
    return-void

    .line 1326
    :cond_2
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    throw v1

    .line 1319
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hold :: update is in progress; request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1320
    invoke-virtual {p0, v2}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1319
    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1321
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "Call update is in progress"

    const/16 v3, 0x66

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    throw v1

    .line 1335
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public inviteParticipants([Ljava/lang/String;)V
    .locals 4
    .param p1, "participants"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1570
    const-string v0, "inviteParticipants ::"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1572
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1573
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_0

    .line 1579
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->inviteParticipants([Ljava/lang/String;)V

    .line 1580
    monitor-exit v0

    .line 1581
    return-void

    .line 1574
    :cond_0
    const-string v1, "inviteParticipants :: "

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1575
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "participants":[Ljava/lang/String;
    throw v1

    .line 1580
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "participants":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isCallSessionMergePending()Z
    .locals 1

    .line 3434
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mCallSessionMergePending:Z

    return v0
.end method

.method public isConferenceHost()Z
    .locals 2

    .line 964
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 965
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mIsConferenceHost:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 966
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isInCall()Z
    .locals 2

    .line 913
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 914
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    monitor-exit v0

    return v1

    .line 915
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected isMergeHost()Z
    .locals 1

    .line 3416
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isMergePeer()Z
    .locals 1

    .line 3425
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMergeRequestedByConf()Z
    .locals 2

    .line 2018
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 2019
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mMergeRequestedByConference:Z

    monitor-exit v0

    return v1

    .line 2020
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isMerged()Z
    .locals 1

    .line 983
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mIsMerged:Z

    return v0
.end method

.method public isMultiparty()Z
    .locals 2

    .line 946
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 947
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-nez v1, :cond_0

    .line 948
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 951
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->isMultiparty()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 952
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isMuted()Z
    .locals 2

    .line 924
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 925
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mMute:Z

    monitor-exit v0

    return v1

    .line 926
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isOnHold()Z
    .locals 2

    .line 935
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 936
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mHold:Z

    monitor-exit v0

    return v1

    .line 937
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isPendingHold()Z
    .locals 3

    .line 902
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 903
    :try_start_0
    iget v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 904
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isVideoCall()Z
    .locals 2

    .line 3622
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 3623
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallProfile;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 3624
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isWifiCall()Z
    .locals 4

    .line 3638
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 3639
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3640
    monitor-exit v0

    return v2

    .line 3642
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->getRadioTechnology()I

    move-result v1

    .line 3643
    .local v1, "radioTechnology":I
    const/16 v3, 0x12

    if-ne v1, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    monitor-exit v0

    return v2

    .line 3644
    .end local v1    # "radioTechnology":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 3687
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->appendImsCallInfoToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsCall"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3688
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 3703
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->appendImsCallInfoToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsCall"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3704
    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 3712
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->appendImsCallInfoToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsCall"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3713
    return-void
.end method

.method protected logi(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 3679
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->appendImsCallInfoToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsCall"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3680
    return-void
.end method

.method public merge(Lcom/android/ims/ImsCall;)V
    .locals 3
    .param p1, "bgCall"    # Lcom/android/ims/ImsCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "merge(1) :: bgImsCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1462
    if-eqz p1, :cond_4

    .line 1467
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1469
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    .line 1470
    invoke-direct {p1, v1}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    .line 1472
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1478
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->setMergePeer(Lcom/android/ims/ImsCall;)V

    goto :goto_0

    .line 1481
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall;->setMergeHost(Lcom/android/ims/ImsCall;)V

    .line 1483
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1485
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1486
    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mMergeRequestedByConference:Z

    goto :goto_1

    .line 1488
    :cond_3
    const-string v0, "merge : mMergeRequestedByConference not set"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1490
    :goto_1
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->merge()V

    .line 1491
    return-void

    .line 1483
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1463
    :cond_4
    new-instance v0, Lcom/android/ims/ImsException;

    const/16 v1, 0x65

    const-string v2, "No background call"

    invoke-direct {v0, v2, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public processMergeComplete()V
    .locals 7

    .line 2051
    const-string v0, "processMergeComplete :: "

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2055
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMergeHost()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2056
    const-string v0, "processMergeComplete :: We are not the merge host!"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 2057
    return-void

    .line 2061
    :cond_0
    const/4 v0, 0x0

    .line 2066
    .local v0, "swapRequired":Z
    monitor-enter p0

    .line 2067
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 2068
    invoke-virtual {p0, v3}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    .line 2071
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mMergeRequestedByConference:Z

    if-nez v1, :cond_1

    .line 2074
    iput-boolean v3, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 2075
    const/4 v0, 0x1

    .line 2077
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-direct {v1, v3}, Lcom/android/ims/ImsCall;->markCallAsMerged(Z)V

    .line 2078
    move-object v1, p0

    .line 2079
    .local v1, "finalHostCall":Lcom/android/ims/ImsCall;
    iget-object v3, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .local v3, "finalPeerCall":Lcom/android/ims/ImsCall;
    goto/16 :goto_1

    .line 2086
    .end local v1    # "finalHostCall":Lcom/android/ims/ImsCall;
    .end local v3    # "finalPeerCall":Lcom/android/ims/ImsCall;
    :cond_2
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    if-nez v1, :cond_3

    .line 2087
    const-string v1, "processMergeComplete :: No transient session!"

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 2088
    monitor-exit p0

    return-void

    .line 2090
    :cond_3
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    if-nez v1, :cond_4

    .line 2091
    const-string v1, "processMergeComplete :: No merge peer!"

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 2092
    monitor-exit p0

    return-void

    .line 2097
    :cond_4
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    .line 2098
    .local v1, "transientConferenceSession":Landroid/telephony/ims/ImsCallSession;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    .line 2102
    invoke-virtual {v1, v4}, Landroid/telephony/ims/ImsCallSession;->setListener(Landroid/telephony/ims/ImsCallSession$Listener;)V

    .line 2112
    iget-object v4, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v4}, Lcom/android/ims/ImsCall;->isSessionAlive(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-virtual {v4}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/ImsCall;->isSessionAlive(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 2121
    iget-object v4, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    iput-boolean v3, v4, Lcom/android/ims/ImsCall;->mHold:Z

    .line 2122
    iput-boolean v2, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 2123
    iget-object v4, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 2124
    iget-object v4, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    iget-object v5, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v5, v4, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2133
    :cond_5
    iget-object v4, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 2134
    .local v4, "finalHostCall":Lcom/android/ims/ImsCall;
    move-object v5, p0

    .line 2135
    .local v5, "finalPeerCall":Lcom/android/ims/ImsCall;
    const/4 v0, 0x1

    .line 2136
    invoke-virtual {p0, v3}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    .line 2137
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-virtual {v6, v3}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    .line 2139
    const-string v3, "processMergeComplete :: transient will transfer to merge peer"

    invoke-virtual {p0, v3}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    move-object v3, v5

    goto :goto_0

    .line 2141
    .end local v4    # "finalHostCall":Lcom/android/ims/ImsCall;
    .end local v5    # "finalPeerCall":Lcom/android/ims/ImsCall;
    :cond_6
    iget-object v4, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v4}, Lcom/android/ims/ImsCall;->isSessionAlive(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 2142
    invoke-virtual {v4}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/ImsCall;->isSessionAlive(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2147
    move-object v4, p0

    .line 2148
    .restart local v4    # "finalHostCall":Lcom/android/ims/ImsCall;
    iget-object v5, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 2149
    .restart local v5    # "finalPeerCall":Lcom/android/ims/ImsCall;
    const/4 v0, 0x0

    .line 2150
    invoke-virtual {p0, v3}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    .line 2151
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-virtual {v6, v3}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    .line 2153
    const-string v3, "processMergeComplete :: transient will stay with the merge host"

    invoke-virtual {p0, v3}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    move-object v3, v5

    goto :goto_0

    .line 2160
    .end local v4    # "finalHostCall":Lcom/android/ims/ImsCall;
    .end local v5    # "finalPeerCall":Lcom/android/ims/ImsCall;
    :cond_7
    move-object v4, p0

    .line 2161
    .restart local v4    # "finalHostCall":Lcom/android/ims/ImsCall;
    iget-object v5, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 2162
    .restart local v5    # "finalPeerCall":Lcom/android/ims/ImsCall;
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-direct {v6, v3}, Lcom/android/ims/ImsCall;->markCallAsMerged(Z)V

    .line 2163
    const/4 v0, 0x0

    .line 2164
    invoke-virtual {p0, v3}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    .line 2165
    iget-object v3, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-virtual {v3, v2}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    .line 2167
    const-string v3, "processMergeComplete :: transient will stay with us (I\'m the host)."

    invoke-virtual {p0, v3}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    move-object v3, v5

    .line 2172
    .end local v5    # "finalPeerCall":Lcom/android/ims/ImsCall;
    .restart local v3    # "finalPeerCall":Lcom/android/ims/ImsCall;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processMergeComplete :: call="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is the final host"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2177
    invoke-virtual {v4, v1}, Lcom/android/ims/ImsCall;->setTransientSessionAsPrimary(Landroid/telephony/ims/ImsCallSession;)V

    move-object v1, v4

    .line 2180
    .end local v4    # "finalHostCall":Lcom/android/ims/ImsCall;
    .local v1, "finalHostCall":Lcom/android/ims/ImsCall;
    :goto_1
    iget-object v4, v1, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 2182
    .local v4, "listener":Lcom/android/ims/ImsCall$Listener;
    invoke-static {v3}, Lcom/android/ims/ImsCall;->updateCallProfile(Lcom/android/ims/ImsCall;)V

    .line 2183
    invoke-static {v1}, Lcom/android/ims/ImsCall;->updateCallProfile(Lcom/android/ims/ImsCall;)V

    .line 2186
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->clearMergeInfo()V

    .line 2190
    invoke-direct {v3}, Lcom/android/ims/ImsCall;->notifySessionTerminatedDuringMerge()V

    .line 2193
    invoke-direct {v1}, Lcom/android/ims/ImsCall;->clearSessionTerminationFlags()V

    .line 2199
    iput-boolean v2, v1, Lcom/android/ims/ImsCall;->mIsConferenceHost:Z

    .line 2200
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2201
    if-eqz v4, :cond_8

    .line 2206
    :try_start_1
    invoke-virtual {v4, v1, v3, v0}, Lcom/android/ims/ImsCall$Listener;->onCallMerged(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2209
    goto :goto_2

    .line 2207
    :catchall_0
    move-exception v2

    .line 2208
    .local v2, "t":Ljava/lang/Throwable;
    const-string v5, "processMergeComplete :: "

    invoke-virtual {p0, v5, v2}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2210
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_2
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 2212
    :try_start_2
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v1, v2}, Lcom/android/ims/ImsCall$Listener;->onConferenceParticipantsStateChanged(Lcom/android/ims/ImsCall;Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2216
    goto :goto_3

    .line 2214
    :catchall_1
    move-exception v2

    .line 2215
    .restart local v2    # "t":Ljava/lang/Throwable;
    const-string v5, "processMergeComplete :: "

    invoke-virtual {p0, v5, v2}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2219
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_8
    :goto_3
    return-void

    .line 2200
    .end local v1    # "finalHostCall":Lcom/android/ims/ImsCall;
    .end local v3    # "finalPeerCall":Lcom/android/ims/ImsCall;
    .end local v4    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_2
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method

.method protected processMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processMergeFailed :: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2287
    monitor-enter p0

    .line 2290
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMergeHost()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2291
    const-string v0, "processMergeFailed :: We are not the merge host!"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 2292
    monitor-exit p0

    return-void

    .line 2296
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v0, :cond_1

    .line 2297
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSession;->setListener(Landroid/telephony/ims/ImsCallSession$Listener;)V

    .line 2298
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    .line 2301
    :cond_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 2305
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->markCallAsMerged(Z)V

    .line 2306
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    .line 2307
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->notifySessionTerminatedDuringMerge()V

    .line 2310
    iget-object v3, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    if-eqz v3, :cond_2

    .line 2311
    iget-object v3, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-direct {v3, v1}, Lcom/android/ims/ImsCall;->markCallAsMerged(Z)V

    .line 2312
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-direct {v1, v2}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    .line 2313
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-direct {v1}, Lcom/android/ims/ImsCall;->notifySessionTerminatedDuringMerge()V

    goto :goto_0

    .line 2315
    :cond_2
    const-string v1, "processMergeFailed :: No merge peer!"

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 2319
    :goto_0
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->clearMergeInfo()V

    .line 2320
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2321
    if-eqz v0, :cond_3

    .line 2323
    :try_start_1
    invoke-virtual {v0, p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallMergeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2326
    goto :goto_1

    .line 2324
    :catchall_0
    move-exception v1

    .line 2325
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "processMergeFailed :: "

    invoke-virtual {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2329
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_3
    :goto_1
    return-void

    .line 2320
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public reject(I)V
    .locals 3
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reject :: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1236
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1237
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_0

    .line 1238
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->reject(I)V

    .line 1241
    :cond_0
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v1, :cond_2

    .line 1242
    sget-boolean v1, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v1, :cond_1

    .line 1243
    const-string v1, "reject :: call profile is not updated; destroy it..."

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1246
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1250
    :cond_2
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    .line 1251
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1253
    :cond_3
    monitor-exit v0

    .line 1254
    return-void

    .line 1253
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeParticipants([Ljava/lang/String;)V
    .locals 4
    .param p1, "participants"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeParticipants :: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1589
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1590
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_0

    .line 1596
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->removeParticipants([Ljava/lang/String;)V

    .line 1598
    monitor-exit v0

    .line 1599
    return-void

    .line 1591
    :cond_0
    const-string v1, "removeParticipants :: "

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1592
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "participants":[Ljava/lang/String;
    throw v1

    .line 1598
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "participants":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected resetConferenceMergingFlag()V
    .locals 0

    .line 3731
    return-void
.end method

.method public resetIsMergeRequestedByConf(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 2028
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 2029
    :try_start_0
    iput-boolean p1, p0, Lcom/android/ims/ImsCall;->mMergeRequestedByConference:Z

    .line 2030
    monitor-exit v0

    .line 2031
    return-void

    .line 2030
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resume()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1345
    const-string v0, "resume :: "

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1347
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isOnHold()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1348
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v0, :cond_0

    .line 1349
    const-string v0, "resume :: call is not being held"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1351
    :cond_0
    return-void

    .line 1354
    :cond_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1355
    :try_start_0
    iget v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    if-nez v1, :cond_3

    .line 1362
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_2

    .line 1370
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1371
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createResumeMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallSession;->resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1372
    monitor-exit v0

    .line 1373
    return-void

    .line 1363
    :cond_2
    const-string v1, "resume :: "

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1364
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    throw v1

    .line 1356
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume :: update is in progress; request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1357
    invoke-virtual {p0, v2}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1356
    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1358
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "Call update is in progress"

    const/16 v3, 0x66

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    throw v1

    .line 1372
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 2
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 1610
    const-string v0, "sendDtmf :: "

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1612
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1613
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_0

    .line 1614
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/ImsCallSession;->sendDtmf(CLandroid/os/Message;)V

    .line 1616
    :cond_0
    monitor-exit v0

    .line 1617
    return-void

    .line 1616
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendRttMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "rttMessage"    # Ljava/lang/String;

    .line 1669
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1670
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-nez v1, :cond_0

    .line 1671
    const-string v1, "sendRttMessage::no session"

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1673
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1674
    const-string v1, "sendRttMessage::Not an rtt call, ignoring"

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1675
    monitor-exit v0

    return-void

    .line 1677
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->sendRttMessage(Ljava/lang/String;)V

    .line 1678
    monitor-exit v0

    .line 1679
    return-void

    .line 1678
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendRttModifyRequest(Z)V
    .locals 5
    .param p1, "rttOn"    # Z

    .line 1686
    const-string v0, "sendRttModifyRequest"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1688
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1689
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-nez v1, :cond_0

    .line 1690
    const-string v1, "sendRttModifyRequest::no session"

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1692
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1693
    const-string v1, "sendRttModifyRequest::Already RTT call, ignoring request to turn on."

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1694
    monitor-exit v0

    return-void

    .line 1695
    :cond_1
    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1696
    const-string v1, "sendRttModifyRequest::Not RTT call, ignoring request to turn off."

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1697
    monitor-exit v0

    return-void

    .line 1700
    :cond_2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1701
    .local v1, "p":Landroid/os/Parcel;
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/telephony/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1702
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1705
    new-instance v2, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v2}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    .line 1707
    .local v2, "requestedProfile":Landroid/telephony/ims/ImsCallProfile;
    iget-object v4, v2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    if-eqz p1, :cond_3

    .line 1708
    const/4 v3, 0x1

    goto :goto_0

    .line 1709
    :cond_3
    nop

    .line 1707
    :goto_0
    invoke-virtual {v4, v3}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 1711
    iget-object v3, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v3, v2}, Landroid/telephony/ims/ImsCallSession;->sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V

    .line 1712
    .end local v1    # "p":Landroid/os/Parcel;
    .end local v2    # "requestedProfile":Landroid/telephony/ims/ImsCallProfile;
    monitor-exit v0

    .line 1713
    return-void

    .line 1712
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendRttModifyResponse(Z)V
    .locals 2
    .param p1, "status"    # Z

    .line 1722
    const-string v0, "sendRttModifyResponse"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1724
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1725
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-nez v1, :cond_0

    .line 1726
    const-string v1, "sendRttModifyResponse::no session"

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1728
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1729
    const-string v1, "sendRttModifyResponse::Already RTT call, ignoring."

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1730
    monitor-exit v0

    return-void

    .line 1732
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->sendRttModifyResponse(Z)V

    .line 1733
    monitor-exit v0

    .line 1734
    return-void

    .line 1733
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendUssd(Ljava/lang/String;)V
    .locals 4
    .param p1, "ussdMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendUssd :: ussdMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1657
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1658
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_0

    .line 1664
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->sendUssd(Ljava/lang/String;)V

    .line 1665
    monitor-exit v0

    .line 1666
    return-void

    .line 1659
    :cond_0
    const-string v1, "sendUssd :: "

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1660
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "ussdMessage":Ljava/lang/String;
    throw v1

    .line 1665
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "ussdMessage":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAnswerWithRtt()V
    .locals 1

    .line 1737
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mAnswerWithRtt:Z

    .line 1738
    return-void
.end method

.method public setCallProfile(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 725
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 726
    :try_start_0
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 727
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->trackVideoStateHistory(Landroid/telephony/ims/ImsCallProfile;)V

    .line 728
    monitor-exit v0

    .line 729
    return-void

    .line 728
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setIsMerged(Z)V
    .locals 0
    .param p1, "isMerged"    # Z

    .line 976
    iput-boolean p1, p0, Lcom/android/ims/ImsCall;->mIsMerged:Z

    .line 977
    return-void
.end method

.method public setListener(Lcom/android/ims/ImsCall$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/ims/ImsCall$Listener;

    .line 994
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/ims/ImsCall;->setListener(Lcom/android/ims/ImsCall$Listener;Z)V

    .line 995
    return-void
.end method

.method public setListener(Lcom/android/ims/ImsCall$Listener;Z)V
    .locals 6
    .param p1, "listener"    # Lcom/android/ims/ImsCall$Listener;
    .param p2, "callbackImmediately"    # Z

    .line 1012
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1013
    :try_start_0
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 1015
    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto :goto_3

    .line 1019
    :cond_0
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    .line 1020
    .local v1, "inCall":Z
    iget-boolean v2, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 1021
    .local v2, "onHold":Z
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->getState()I

    move-result v3

    .line 1022
    .local v3, "state":I
    iget-object v4, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 1023
    .local v4, "lastReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1026
    if-eqz v4, :cond_1

    .line 1027
    :try_start_1
    invoke-virtual {p1, p0, v4}, Lcom/android/ims/ImsCall$Listener;->onCallError(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 1047
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1028
    :cond_1
    if-eqz v1, :cond_3

    .line 1029
    if-eqz v2, :cond_2

    .line 1030
    invoke-virtual {p1, p0}, Lcom/android/ims/ImsCall$Listener;->onCallHeld(Lcom/android/ims/ImsCall;)V

    goto :goto_0

    .line 1032
    :cond_2
    invoke-virtual {p1, p0}, Lcom/android/ims/ImsCall$Listener;->onCallStarted(Lcom/android/ims/ImsCall;)V

    goto :goto_0

    .line 1035
    :cond_3
    const/4 v0, 0x3

    if-eq v3, v0, :cond_5

    const/16 v0, 0x8

    if-eq v3, v0, :cond_4

    goto :goto_0

    .line 1040
    :cond_4
    invoke-virtual {p1, p0, v4}, Lcom/android/ims/ImsCall$Listener;->onCallTerminated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1041
    goto :goto_0

    .line 1037
    :cond_5
    invoke-virtual {p1, p0}, Lcom/android/ims/ImsCall$Listener;->onCallProgressing(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1038
    nop

    .line 1049
    :goto_0
    goto :goto_2

    .line 1048
    .local v0, "t":Ljava/lang/Throwable;
    :goto_1
    const-string v5, "setListener() :: "

    invoke-virtual {p0, v5, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1050
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_2
    return-void

    .line 1016
    .end local v1    # "inCall":Z
    .end local v2    # "onHold":Z
    .end local v3    # "state":I
    .end local v4    # "lastReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :cond_6
    :goto_3
    :try_start_2
    monitor-exit v0

    return-void

    .line 1023
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public setMergeHost(Lcom/android/ims/ImsCall;)V
    .locals 1
    .param p1, "mergeHost"    # Lcom/android/ims/ImsCall;

    .line 3394
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    .line 3395
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 3397
    iput-object v0, p1, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    .line 3398
    iput-object p0, p1, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 3399
    return-void
.end method

.method public setMute(Z)V
    .locals 3
    .param p1, "muted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1058
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1059
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mMute:Z

    if-eq v1, p1, :cond_1

    .line 1060
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMute :: turning mute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v2, "on"

    goto :goto_0

    :cond_0
    const-string v2, "off"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1061
    iput-boolean p1, p0, Lcom/android/ims/ImsCall;->mMute:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1064
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->setMute(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1068
    goto :goto_1

    .line 1065
    :catchall_0
    move-exception v1

    .line 1066
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v2, "setMute :: "

    invoke-virtual {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1067
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/ims/ImsCall;->throwImsException(Ljava/lang/Throwable;I)V

    .line 1070
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    monitor-exit v0

    .line 1071
    return-void

    .line 1070
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method protected setTransientSessionAsPrimary(Landroid/telephony/ims/ImsCallSession;)V
    .locals 2
    .param p1, "transientSession"    # Landroid/telephony/ims/ImsCallSession;

    .line 1974
    monitor-enter p0

    .line 1975
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSession;->setListener(Landroid/telephony/ims/ImsCallSession$Listener;)V

    .line 1977
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallSession;->close()V

    .line 1979
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    .line 1980
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->createCallSessionListener()Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSession;->setListener(Landroid/telephony/ims/ImsCallSession$Listener;)V

    .line 1981
    monitor-exit p0

    .line 1982
    return-void

    .line 1981
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected shouldSkipResetMergePending()Z
    .locals 1

    .line 3727
    const/4 v0, 0x0

    return v0
.end method

.method public start(Landroid/telephony/ims/ImsCallSession;Ljava/lang/String;)V
    .locals 5
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "callee"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start(1) :: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1106
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1107
    :try_start_0
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1110
    :try_start_1
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->createCallSessionListener()Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/telephony/ims/ImsCallSession;->setListener(Landroid/telephony/ims/ImsCallSession$Listener;)V

    .line 1111
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1, p2, v1}, Landroid/telephony/ims/ImsCallSession;->start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1115
    nop

    .line 1116
    :try_start_2
    monitor-exit v0

    .line 1117
    return-void

    .line 1112
    :catchall_0
    move-exception v1

    .line 1113
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "start(1) :: "

    invoke-virtual {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1114
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "start(1)"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "session":Landroid/telephony/ims/ImsCallSession;
    .end local p2    # "callee":Ljava/lang/String;
    throw v2

    .line 1116
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "session":Landroid/telephony/ims/ImsCallSession;
    .restart local p2    # "callee":Ljava/lang/String;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public start(Landroid/telephony/ims/ImsCallSession;[Ljava/lang/String;)V
    .locals 5
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "participants"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start(n) :: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1131
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1132
    :try_start_0
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1135
    :try_start_1
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->createCallSessionListener()Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/telephony/ims/ImsCallSession;->setListener(Landroid/telephony/ims/ImsCallSession$Listener;)V

    .line 1136
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1, p2, v1}, Landroid/telephony/ims/ImsCallSession;->start([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1140
    nop

    .line 1141
    :try_start_2
    monitor-exit v0

    .line 1142
    return-void

    .line 1137
    :catchall_0
    move-exception v1

    .line 1138
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "start(n) :: "

    invoke-virtual {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1139
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "start(n)"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "session":Landroid/telephony/ims/ImsCallSession;
    .end local p2    # "participants":[Ljava/lang/String;
    throw v2

    .line 1141
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "session":Landroid/telephony/ims/ImsCallSession;
    .restart local p2    # "participants":[Ljava/lang/String;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public startDtmf(C)V
    .locals 2
    .param p1, "c"    # C

    .line 1627
    const-string v0, "startDtmf :: "

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1629
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1630
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_0

    .line 1631
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->startDtmf(C)V

    .line 1633
    :cond_0
    monitor-exit v0

    .line 1634
    return-void

    .line 1633
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopDtmf()V
    .locals 2

    .line 1640
    const-string v0, "stopDtmf :: "

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1642
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1643
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_0

    .line 1644
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->stopDtmf()V

    .line 1646
    :cond_0
    monitor-exit v0

    .line 1647
    return-void

    .line 1646
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public terminate(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 1268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "terminate :: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1270
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1271
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 1272
    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    .line 1273
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mTerminationRequestPending:Z

    .line 1275
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_0

    .line 1295
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->terminate(I)V

    .line 1297
    :cond_0
    monitor-exit v0

    .line 1298
    return-void

    .line 1297
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public terminate(II)V
    .locals 2
    .param p1, "reason"    # I
    .param p2, "overrideReason"    # I

    .line 1257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "terminate :: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ; overrideReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1258
    iput p2, p0, Lcom/android/ims/ImsCall;->mOverrideReason:I

    .line 1259
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall;->terminate(I)V

    .line 1260
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 3533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3534
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[ImsCall objId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3535
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3536
    const-string v1, " onHold:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3537
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isOnHold()Z

    move-result v1

    const-string v2, "Y"

    const-string v3, "N"

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3538
    const-string v1, " mute:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3539
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMuted()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3540
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v1, :cond_2

    .line 3541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mCallProfile:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3542
    const-string v1, " tech:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3543
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v4, "CallRadioTech"

    invoke-virtual {v1, v4}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3545
    :cond_2
    const-string v1, " updateRequest:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3546
    iget v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3547
    const-string v1, " merging:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3548
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMerging()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, v2

    goto :goto_2

    :cond_3
    move-object v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3549
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMerging()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3550
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMergePeer()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3551
    const-string v1, "P"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 3553
    :cond_4
    const-string v1, "H"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3556
    :cond_5
    :goto_3
    const-string v1, " merge action pending:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3557
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v1, v2

    goto :goto_4

    :cond_6
    move-object v1, v3

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3558
    const-string v1, " merged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3559
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMerged()Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v1, v2

    goto :goto_5

    :cond_7
    move-object v1, v3

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3560
    const-string v1, " multiParty:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3561
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v1, v2

    goto :goto_6

    :cond_8
    move-object v1, v3

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3562
    const-string v1, " confHost:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3563
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isConferenceHost()Z

    move-result v1

    if-eqz v1, :cond_9

    move-object v1, v2

    goto :goto_7

    :cond_9
    move-object v1, v3

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3564
    const-string v1, " buried term:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3565
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    if-eqz v1, :cond_a

    move-object v1, v2

    goto :goto_8

    :cond_a
    move-object v1, v3

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3566
    const-string v1, " isVideo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3567
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_b

    move-object v1, v2

    goto :goto_9

    :cond_b
    move-object v1, v3

    :goto_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3568
    const-string v1, " wasVideo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3569
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mWasVideoCall:Z

    if-eqz v1, :cond_c

    move-object v1, v2

    goto :goto_a

    :cond_c
    move-object v1, v3

    :goto_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3570
    const-string v1, " isWifi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3571
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isWifiCall()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_b

    :cond_d
    move-object v2, v3

    :goto_b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3572
    const-string v1, " session:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3573
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3574
    const-string v1, " transientSession:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3575
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3576
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3577
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 4
    .param p1, "callType"    # I
    .param p2, "mediaProfile"    # Landroid/telephony/ims/ImsStreamMediaProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update :: callType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mediaProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1499
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isOnHold()Z

    move-result v0

    const/16 v1, 0x66

    if-eqz v0, :cond_1

    .line 1500
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v0, :cond_0

    .line 1501
    const-string v0, "update :: call is on hold"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1503
    :cond_0
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v2, "Not in a call to update call"

    invoke-direct {v0, v2, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1507
    :cond_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1508
    :try_start_0
    iget v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    if-eqz v2, :cond_3

    .line 1509
    sget-boolean v2, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v2, :cond_2

    .line 1510
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update :: update is in progress; request="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1511
    invoke-virtual {p0, v3}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1510
    invoke-virtual {p0, v2}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1513
    :cond_2
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "Call update is in progress"

    invoke-direct {v2, v3, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "callType":I
    .end local p2    # "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    throw v2

    .line 1517
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "callType":I
    .restart local p2    # "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    :cond_3
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_4

    .line 1523
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/ImsCallSession;->update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1524
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1525
    monitor-exit v0

    .line 1526
    return-void

    .line 1518
    :cond_4
    const-string v1, "update :: "

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1519
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "callType":I
    .end local p2    # "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    throw v1

    .line 1525
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "callType":I
    .restart local p2    # "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected updateHoldStateIfNecessary(Z)V
    .locals 0
    .param p1, "hold"    # Z

    .line 3724
    return-void
.end method

.method protected updateRequestToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "updateRequest"    # I

    .line 3327
    packed-switch p1, :pswitch_data_0

    .line 3343
    const-string v0, "UNKNOWN"

    return-object v0

    .line 3341
    :pswitch_0
    const-string v0, "UNSPECIFIED"

    return-object v0

    .line 3339
    :pswitch_1
    const-string v0, "EXTEND_TO_CONFERENCE"

    return-object v0

    .line 3337
    :pswitch_2
    const-string v0, "MERGE"

    return-object v0

    .line 3335
    :pswitch_3
    const-string v0, "RESUME"

    return-object v0

    .line 3333
    :pswitch_4
    const-string v0, "HOLD_MERGE"

    return-object v0

    .line 3331
    :pswitch_5
    const-string v0, "HOLD"

    return-object v0

    .line 3329
    :pswitch_6
    const-string v0, "NONE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public wasVideoCall()Z
    .locals 1

    .line 3615
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mWasVideoCall:Z

    return v0
.end method

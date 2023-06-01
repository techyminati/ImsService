.class public Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;
.super Lcom/android/internal/telephony/BaseCommands;
.source "MtkSimulatedCommandsBase.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;
.implements Lcom/mediatek/internal/telephony/test/MtkSimulatedRadioControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;,
        Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;
    }
.end annotation


# static fields
.field public static final DEFAULT_PIN1_ATTEMPT:I = 0x5

.field public static final DEFAULT_PIN2_ATTEMPT:I = 0x5

.field public static final DEFAULT_SIM_PIN2_CODE:Ljava/lang/String; = "5678"

.field public static final DEFAULT_SIM_PIN_CODE:Ljava/lang/String; = "1234"

.field public static final FAKE_ESN:Ljava/lang/String; = "1234"

.field public static final FAKE_IMEI:Ljava/lang/String; = "012345678901234"

.field public static final FAKE_IMEISV:Ljava/lang/String; = "99"

.field public static final FAKE_LONG_NAME:Ljava/lang/String; = "Fake long name"

.field public static final FAKE_MCC_MNC:Ljava/lang/String; = "310260"

.field public static final FAKE_MEID:Ljava/lang/String; = "1234"

.field public static final FAKE_SHORT_NAME:Ljava/lang/String; = "Fake short name"

.field private static final INITIAL_FDN_STATE:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

.field private static final INITIAL_LOCK_STATE:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

.field private static final LOG_TAG:Ljava/lang/String; = "MtkSimulatedCommandsBase"

.field private static final SIM_PUK2_CODE:Ljava/lang/String; = "87654321"

.field private static final SIM_PUK_CODE:Ljava/lang/String; = "12345678"


# instance fields
.field private final getNetworkSelectionModeCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mAllowedNetworkType:I

.field private mCellInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelId:I

.field public mCssSupported:Z

.field private mDataRadioTech:I

.field private mDataRegState:I

.field private mDcSuccess:Z

.field public mDefaultRoamingIndicator:I

.field private final mGetDataRegistrationStateCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mGetOperatorCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mGetVoiceRegistrationStateCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field mHandlerThread:Landroid/os/HandlerThread;

.field private mIccCardStatus:Lcom/android/internal/telephony/uicc/IccCardStatus;

.field private mIccIoResultForApduLogicalChannel:Lcom/android/internal/telephony/uicc/IccIoResult;

.field private mIccSlotStatus:Lcom/android/internal/telephony/uicc/IccSlotStatus;

.field private mImei:Ljava/lang/String;

.field private mImeiSv:Ljava/lang/String;

.field private mImsRegState:[I

.field private mIsRadioPowerFailResponse:Z

.field public mMaxDataCalls:I

.field mNetworkType:I

.field mNextCallFailCause:I

.field mPausedResponseCount:I

.field mPausedResponses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field mPin1attemptsRemaining:I

.field mPin2Code:Ljava/lang/String;

.field mPin2UnlockAttempts:I

.field mPinCode:Ljava/lang/String;

.field mPinUnlockAttempts:I

.field mPuk2UnlockAttempts:I

.field mPukUnlockAttempts:I

.field public mReasonForDenial:I

.field public mRoamingIndicator:I

.field private mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

.field private mShouldReturnCellInfo:Z

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field mSimFdnEnabled:Z

.field mSimFdnEnabledState:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

.field mSimLockEnabled:Z

.field mSimLockedState:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

.field mSsnNotifyOn:Z

.field public mSystemIsInPrl:I

.field private mVoiceRadioTech:I

.field private mVoiceRegState:I

.field simulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 99
    sget-object v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;->NONE:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    sput-object v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->INITIAL_LOCK_STATE:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    .line 102
    sget-object v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;->NONE:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    sput-object v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->INITIAL_FDN_STATE:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/BaseCommands;-><init>(Landroid/content/Context;)V

    .line 128
    const/4 v1, 0x5

    iput v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPin1attemptsRemaining:I

    .line 135
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSsnNotifyOn:Z

    .line 136
    const/4 v2, 0x1

    iput v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mVoiceRegState:I

    .line 137
    const/4 v3, 0x3

    iput v3, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mVoiceRadioTech:I

    .line 138
    iput v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mDataRegState:I

    .line 139
    iput v3, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mDataRadioTech:I

    .line 148
    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mCellInfoList:Ljava/util/List;

    .line 149
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mShouldReturnCellInfo:Z

    .line 154
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mChannelId:I

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPausedResponses:Ljava/util/ArrayList;

    .line 159
    const/16 v0, 0x10

    iput v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mNextCallFailCause:I

    .line 161
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mDcSuccess:Z

    .line 163
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mIsRadioPowerFailResponse:Z

    .line 986
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mGetVoiceRegistrationStateCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1014
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mGetDataRegistrationStateCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1039
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mGetOperatorCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1435
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->getNetworkSelectionModeCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2220
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 169
    new-instance v0, Landroid/os/HandlerThread;

    const-string v3, "MtkSimulatedCommandsBase"

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mHandlerThread:Landroid/os/HandlerThread;

    .line 170
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 171
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 173
    .local v0, "looper":Landroid/os/Looper;
    new-instance v3, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    invoke-direct {v3, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->simulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    .line 175
    invoke-virtual {p0, v2, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->setRadioState(IZ)V

    .line 176
    sget-object v3, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->INITIAL_LOCK_STATE:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    iput-object v3, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimLockedState:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    .line 177
    sget-object v4, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;->NONE:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    if-eq v3, v4, :cond_73

    move v3, v2

    goto :goto_74

    :cond_73
    move v3, v1

    :goto_74
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimLockEnabled:Z

    .line 178
    const-string v3, "1234"

    iput-object v3, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPinCode:Ljava/lang/String;

    .line 179
    sget-object v3, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->INITIAL_FDN_STATE:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    iput-object v3, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimFdnEnabledState:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    .line 180
    sget-object v4, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;->NONE:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    if-eq v3, v4, :cond_83

    move v1, v2

    :cond_83
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimFdnEnabled:Z

    .line 181
    const-string v1, "5678"

    iput-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPin2Code:Ljava/lang/String;

    .line 182
    return-void
.end method

.method private getCellInfoGsm()Landroid/telephony/CellInfoGsm;
    .registers 5

    .line 1915
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1917
    .local v0, "p":Landroid/os/Parcel;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1918
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1919
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1920
    const-wide v2, 0x1526bf6e6d4L

    invoke-virtual {v0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1921
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1923
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1924
    const-string v1, "310"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1925
    const-string v1, "260"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1926
    const-string v1, "long"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1927
    const-string v1, "short"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1929
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1930
    const/16 v1, 0x1c8

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1931
    const/16 v1, 0x3b6

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1932
    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1934
    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1935
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1936
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1937
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1939
    sget-object v1, Landroid/telephony/CellInfoGsm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellInfoGsm;

    return-object v1
.end method

.method private isSimLocked()Z
    .registers 3

    .line 1260
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimLockedState:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    sget-object v1, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;->NONE:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    if-eq v0, v1, :cond_8

    .line 1261
    const/4 v0, 0x1

    return v0

    .line 1263
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .line 191
    const-string v0, "MtkSimulatedCommandsBase"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void
.end method

.method private resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "ret"    # Ljava/lang/Object;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 1702
    if-eqz p1, :cond_12

    .line 1703
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1704
    iget v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPausedResponseCount:I

    if-lez v0, :cond_f

    .line 1705
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPausedResponses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 1707
    :cond_f
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1710
    :cond_12
    :goto_12
    return-void
.end method

.method private resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V
    .registers 4
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "ret"    # Ljava/lang/Object;

    .line 1691
    if-eqz p1, :cond_15

    .line 1692
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object p2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1693
    iget v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPausedResponseCount:I

    if-lez v0, :cond_12

    .line 1694
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPausedResponses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 1696
    :cond_12
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1699
    :cond_15
    :goto_15
    return-void
.end method

.method private unimplemented(Landroid/os/Message;)V
    .registers 5
    .param p1, "result"    # Landroid/os/Message;

    .line 1678
    if-eqz p1, :cond_1c

    .line 1679
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unimplemented"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1682
    iget v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPausedResponseCount:I

    if-lez v0, :cond_19

    .line 1683
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPausedResponses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 1685
    :cond_19
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1688
    :cond_1c
    :goto_1c
    return-void
.end method


# virtual methods
.method public acceptCall(Landroid/os/Message;)V
    .registers 6
    .param p1, "result"    # Landroid/os/Message;

    .line 808
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->acceptCall(Landroid/os/Message;)V

    .line 809
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->simulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->onAnswer()Z

    move-result v0

    .line 811
    .local v0, "success":Z
    const/4 v1, 0x0

    if-nez v0, :cond_1b

    .line 812
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Hangup Error"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1e

    .line 814
    :cond_1b
    invoke-direct {p0, p1, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 816
    :goto_1e
    return-void
.end method

.method public acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
    .registers 4
    .param p1, "success"    # Z
    .param p2, "ackPdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 1297
    invoke-direct {p0, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1298
    return-void
.end method

.method public acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
    .registers 4
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1291
    invoke-direct {p0, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1292
    return-void
.end method

.method public acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .registers 5
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1284
    invoke-direct {p0, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1285
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    .line 1286
    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    .line 1287
    return-void
.end method

.method public cancelPendingUssd(Landroid/os/Message;)V
    .registers 3
    .param p1, "response"    # Landroid/os/Message;

    .line 1522
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1523
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .line 408
    invoke-direct {p0, p4}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 409
    return-void
.end method

.method public changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 7
    .param p1, "oldPin"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 375
    const/4 v0, 0x0

    if-eqz p1, :cond_11

    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPinCode:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 376
    iput-object p2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPinCode:Ljava/lang/String;

    .line 377
    invoke-direct {p0, p3, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 379
    return-void

    .line 382
    :cond_11
    const-string v1, "MtkSimulatedCommandsBase"

    const-string v2, "[SimCmd] changeIccPin: pin failed!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 386
    .local v1, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p3, v0, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 387
    return-void
.end method

.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 7
    .param p1, "oldPin2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 391
    const/4 v0, 0x0

    if-eqz p1, :cond_11

    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPin2Code:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 392
    iput-object p2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPin2Code:Ljava/lang/String;

    .line 393
    invoke-direct {p0, p3, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 395
    return-void

    .line 398
    :cond_11
    const-string v1, "MtkSimulatedCommandsBase"

    const-string v2, "[SimCmd] changeIccPin2: pin2 failed!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 402
    .local v1, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p3, v0, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 403
    return-void
.end method

.method public changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .param p1, "oldPin2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "aidPtr"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 1893
    invoke-direct {p0, p4}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1894
    return-void
.end method

.method public changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .param p1, "oldPin"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "aidPtr"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 1885
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1887
    invoke-virtual {p0, p1, p2, p4}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1888
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .registers 6
    .param p1, "result"    # Landroid/os/Message;

    .line 749
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->simulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    const/16 v1, 0x33

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    .line 751
    .local v0, "success":Z
    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 752
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Hangup Error"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1a

    .line 754
    :cond_17
    invoke-direct {p0, p1, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 756
    :goto_1a
    return-void
.end method

.method public deactivateDataCall(IILandroid/os/Message;)V
    .registers 5
    .param p1, "cid"    # I
    .param p2, "reason"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1189
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->deactivateDataCall(IILandroid/os/Message;)V

    .line 1190
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1191
    return-void
.end method

.method public deleteSmsOnRuim(ILandroid/os/Message;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delete RUIM message at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkSimulatedCommandsBase"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1123
    return-void
.end method

.method public deleteSmsOnSim(ILandroid/os/Message;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delete message at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkSimulatedCommandsBase"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1117
    return-void
.end method

.method public dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILandroid/os/Message;)V
    .registers 14
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "isEmergencyCall"    # Z
    .param p3, "emergencyNumberInfo"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p4, "hasKnownUserIntentEmergency"    # Z
    .param p5, "clirMode"    # I
    .param p6, "result"    # Landroid/os/Message;

    .line 567
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILandroid/os/Message;)V

    .line 569
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->simulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->onDial(Ljava/lang/String;)Z

    .line 571
    const/4 v0, 0x0

    invoke-direct {p0, p6, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 572
    return-void
.end method

.method public dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .registers 16
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "isEmergencyCall"    # Z
    .param p3, "emergencyNumberInfo"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p4, "hasKnownUserIntentEmergency"    # Z
    .param p5, "clirMode"    # I
    .param p6, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p7, "result"    # Landroid/os/Message;

    .line 589
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    .line 591
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->simulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->onDial(Ljava/lang/String;)Z

    .line 593
    const/4 v0, 0x0

    invoke-direct {p0, p7, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 594
    return-void
.end method

.method public dispose()V
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_7

    .line 186
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 188
    :cond_7
    return-void
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 1412
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .registers 6
    .param p1, "result"    # Landroid/os/Message;

    .line 770
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->simulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    const/16 v1, 0x34

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    .line 772
    .local v0, "success":Z
    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 773
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Hangup Error"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1a

    .line 775
    :cond_17
    invoke-direct {p0, p1, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 777
    :goto_1a
    return-void
.end method

.method public forceDataDormancy(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .line 1833
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1834
    return-void
.end method

.method public getAllowedCarriers(Landroid/os/Message;Landroid/os/WorkSource;)V
    .registers 3
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "workSource"    # Landroid/os/WorkSource;

    .line 2105
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 2106
    return-void
.end method

.method public getAllowedNetworkTypesBitmap(Landroid/os/Message;)V
    .registers 5
    .param p1, "response"    # Landroid/os/Message;

    .line 1220
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getAllowedNetworkTypesBitmap(Landroid/os/Message;)V

    .line 1221
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1223
    .local v0, "ret":[I
    iget v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mAllowedNetworkType:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1224
    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1225
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 1449
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1450
    return-void
.end method

.method public getBasebandVersion(Landroid/os/Message;)V
    .registers 3
    .param p1, "result"    # Landroid/os/Message;

    .line 1470
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getBasebandVersion(Landroid/os/Message;)V

    .line 1471
    const-string v0, "MtkSimulatedCommandsBase"

    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1472
    return-void
.end method

.method public getCDMASubscription(Landroid/os/Message;)V
    .registers 5
    .param p1, "result"    # Landroid/os/Message;

    .line 1723
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 1724
    .local v0, "ret":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "123"

    aput-object v2, v0, v1

    .line 1725
    const/4 v1, 0x1

    const-string v2, "456"

    aput-object v2, v0, v1

    .line 1726
    const/4 v1, 0x2

    const-string v2, "789"

    aput-object v2, v0, v1

    .line 1727
    const/4 v1, 0x3

    const-string v2, "234"

    aput-object v2, v0, v1

    .line 1728
    const/4 v1, 0x4

    const-string v2, "345"

    aput-object v2, v0, v1

    .line 1729
    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1730
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 1344
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public getCdmaBroadcastConfig(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .line 1823
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1825
    return-void
.end method

.method public getCdmaSubscriptionSource(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 1256
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1257
    return-void
.end method

.method public declared-synchronized getCellInfoList(Landroid/os/Message;Landroid/os/WorkSource;)V
    .registers 5
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "workSource"    # Landroid/os/WorkSource;

    monitor-enter p0

    .line 1948
    :try_start_1
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mShouldReturnCellInfo:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1e

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    .line 1950
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mCellInfoList:Ljava/util/List;

    if-nez v0, :cond_17

    .line 1951
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1952
    .local v0, "mCellInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->getCellInfoGsm()Landroid/telephony/CellInfoGsm;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1955
    .end local v0    # "mCellInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    .end local p0    # "this":Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;
    :cond_17
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mCellInfoList:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1e

    .line 1956
    monitor-exit p0

    return-void

    .line 1947
    .end local p1    # "response":Landroid/os/Message;
    .end local p2    # "workSource":Landroid/os/WorkSource;
    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .registers 5
    .param p1, "result"    # Landroid/os/Message;

    .line 521
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getCurrentCalls(Landroid/os/Message;)V

    .line 522
    iget v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->isSimLocked()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 524
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->simulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->getDriverCalls()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_27

    .line 527
    :cond_1c
    const/4 v0, 0x0

    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 530
    :goto_27
    return-void
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .registers 4
    .param p1, "result"    # Landroid/os/Message;

    .line 550
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 551
    return-void
.end method

.method public getDataRegistrationState(Landroid/os/Message;)V
    .registers 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1003
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mGetDataRegistrationStateCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1005
    new-instance v0, Landroid/hardware/radio/V1_0/DataRegStateResult;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataRegStateResult;-><init>()V

    .line 1006
    .local v0, "ret":Landroid/hardware/radio/V1_0/DataRegStateResult;
    iget v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mDataRegState:I

    iput v1, v0, Landroid/hardware/radio/V1_0/DataRegStateResult;->regState:I

    .line 1007
    iget v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mDataRadioTech:I

    iput v1, v0, Landroid/hardware/radio/V1_0/DataRegStateResult;->rat:I

    .line 1008
    iget v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mMaxDataCalls:I

    iput v1, v0, Landroid/hardware/radio/V1_0/DataRegStateResult;->maxDataCalls:I

    .line 1009
    iget v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mReasonForDenial:I

    iput v1, v0, Landroid/hardware/radio/V1_0/DataRegStateResult;->reasonDataDenied:I

    .line 1011
    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1012
    return-void
.end method

.method public getDeviceIdentity(Landroid/os/Message;)V
    .registers 5
    .param p1, "response"    # Landroid/os/Message;

    .line 1716
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getDeviceIdentity(Landroid/os/Message;)V

    .line 1717
    const-string v0, "012345678901234"

    const-string v1, "99"

    const-string v2, "1234"

    filled-new-array {v0, v1, v2, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1718
    return-void
.end method

.method public getGetDataRegistrationStateCallCount()I
    .registers 2

    .line 1018
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mGetDataRegistrationStateCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getGetNetworkSelectionModeCallCount()I
    .registers 2

    .line 1439
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->getNetworkSelectionModeCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getGetOperatorCallCount()I
    .registers 3

    .line 1043
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mGetOperatorCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 1044
    .local v0, "count":I
    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mGetOperatorCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    return v1
.end method

.method public getGetVoiceRegistrationStateCallCount()I
    .registers 2

    .line 990
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mGetVoiceRegistrationStateCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getGsmBroadcastConfig(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .line 1850
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1851
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .line 2361
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getHardwareConfig(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 2058
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 2059
    return-void
.end method

.method public getIMEI(Landroid/os/Message;)V
    .registers 3
    .param p1, "result"    # Landroid/os/Message;

    .line 625
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getIMEI(Landroid/os/Message;)V

    .line 626
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mImei:Ljava/lang/String;

    if-eqz v0, :cond_c

    goto :goto_e

    :cond_c
    const-string v0, "012345678901234"

    :goto_e
    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 627
    return-void
.end method

.method public getIMEISV(Landroid/os/Message;)V
    .registers 3
    .param p1, "result"    # Landroid/os/Message;

    .line 642
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getIMEISV(Landroid/os/Message;)V

    .line 643
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mImeiSv:Ljava/lang/String;

    if-eqz v0, :cond_c

    goto :goto_e

    :cond_c
    const-string v0, "99"

    :goto_e
    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 644
    return-void
.end method

.method public getIMSI(Landroid/os/Message;)V
    .registers 3
    .param p1, "result"    # Landroid/os/Message;

    .line 598
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    .line 599
    return-void
.end method

.method public getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 609
    const-string v0, "012345678901234"

    invoke-direct {p0, p2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 610
    return-void
.end method

.method public getIccCardStatus(Landroid/os/Message;)V
    .registers 5
    .param p1, "result"    # Landroid/os/Message;

    .line 198
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getIccCardStatus(Landroid/os/Message;)V

    .line 199
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mIccCardStatus:Lcom/android/internal/telephony/uicc/IccCardStatus;

    if-eqz v0, :cond_f

    .line 200
    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_1a

    .line 202
    :cond_f
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "IccCardStatus not set"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 204
    :goto_1a
    return-void
.end method

.method public getIccSlotsStatus(Landroid/os/Message;)V
    .registers 5
    .param p1, "result"    # Landroid/os/Message;

    .line 212
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getIccSlotsStatus(Landroid/os/Message;)V

    .line 213
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mIccSlotStatus:Lcom/android/internal/telephony/uicc/IccSlotStatus;

    if-eqz v0, :cond_f

    .line 214
    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_1a

    .line 216
    :cond_f
    const/4 v0, 0x0

    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 219
    :goto_1a
    return-void
.end method

.method public getImsRegistrationState(Landroid/os/Message;)V
    .registers 3
    .param p1, "response"    # Landroid/os/Message;

    .line 1982
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mImsRegState:[I

    if-nez v0, :cond_c

    .line 1983
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mImsRegState:[I

    .line 1986
    :cond_c
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mImsRegState:[I

    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1987
    return-void

    :array_12
    .array-data 4
        0x1
        0x0
    .end array-data
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .registers 4
    .param p1, "result"    # Landroid/os/Message;

    .line 847
    new-instance v0, Lcom/android/internal/telephony/LastCallFailCause;

    invoke-direct {v0}, Lcom/android/internal/telephony/LastCallFailCause;-><init>()V

    .line 848
    .local v0, "mFailCause":Lcom/android/internal/telephony/LastCallFailCause;
    iget v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mNextCallFailCause:I

    iput v1, v0, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    .line 849
    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 850
    return-void
.end method

.method public getLastDataCallFailCause(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 864
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 865
    return-void
.end method

.method public getLastPdpFailCause(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 858
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 859
    return-void
.end method

.method public getModemActivityInfo(Landroid/os/Message;Landroid/os/WorkSource;)V
    .registers 3
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "workSource"    # Landroid/os/WorkSource;

    .line 2094
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 2095
    return-void
.end method

.method public getMute(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 871
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .registers 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1427
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 1428
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->getNetworkSelectionModeCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1429
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1431
    .local v0, "ret":[I
    const/4 v1, 0x0

    aput v1, v0, v1

    .line 1432
    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1433
    return-void
.end method

.method public getOperator(Landroid/os/Message;)V
    .registers 5
    .param p1, "result"    # Landroid/os/Message;

    .line 1029
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mGetOperatorCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1030
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 1032
    .local v0, "ret":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "Fake long name"

    aput-object v2, v0, v1

    .line 1033
    const/4 v1, 0x1

    const-string v2, "Fake short name"

    aput-object v2, v0, v1

    .line 1034
    const/4 v1, 0x2

    const-string v2, "310260"

    aput-object v2, v0, v1

    .line 1036
    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1037
    return-void
.end method

.method public getPDPContextList(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 538
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->getDataCallList(Landroid/os/Message;)V

    .line 539
    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .registers 5
    .param p1, "result"    # Landroid/os/Message;

    .line 1202
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 1203
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1205
    .local v0, "ret":[I
    iget v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mNetworkType:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1206
    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1207
    return-void
.end method

.method public getPreferredVoicePrivacy(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 1755
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1756
    return-void
.end method

.method public getRadioCapability(Landroid/os/Message;)V
    .registers 10
    .param p1, "result"    # Landroid/os/Message;

    .line 2110
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getRadioCapability(Landroid/os/Message;)V

    .line 2111
    new-instance v0, Lcom/android/internal/telephony/RadioCapability;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0xffff

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/RadioCapability;-><init>(IIIILjava/lang/String;I)V

    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2112
    return-void
.end method

.method public getRilVersion()I
    .registers 2

    .line 1960
    const/16 v0, 0xb

    return v0
.end method

.method public getSignalStrength(Landroid/os/Message;)V
    .registers 10
    .param p1, "result"    # Landroid/os/Message;

    .line 879
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v0, :cond_30

    .line 880
    new-instance v0, Landroid/telephony/SignalStrength;

    new-instance v2, Landroid/telephony/CellSignalStrengthCdma;

    invoke-direct {v2}, Landroid/telephony/CellSignalStrengthCdma;-><init>()V

    new-instance v3, Landroid/telephony/CellSignalStrengthGsm;

    const/16 v1, 0x14

    const/4 v4, 0x0

    const v5, 0x7fffffff

    invoke-direct {v3, v1, v4, v5}, Landroid/telephony/CellSignalStrengthGsm;-><init>(III)V

    new-instance v4, Landroid/telephony/CellSignalStrengthWcdma;

    invoke-direct {v4}, Landroid/telephony/CellSignalStrengthWcdma;-><init>()V

    new-instance v5, Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-direct {v5}, Landroid/telephony/CellSignalStrengthTdscdma;-><init>()V

    new-instance v6, Landroid/telephony/CellSignalStrengthLte;

    invoke-direct {v6}, Landroid/telephony/CellSignalStrengthLte;-><init>()V

    new-instance v7, Landroid/telephony/CellSignalStrengthNr;

    invoke-direct {v7}, Landroid/telephony/CellSignalStrengthNr;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/CellSignalStrengthCdma;Landroid/telephony/CellSignalStrengthGsm;Landroid/telephony/CellSignalStrengthWcdma;Landroid/telephony/CellSignalStrengthTdscdma;Landroid/telephony/CellSignalStrengthLte;Landroid/telephony/CellSignalStrengthNr;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 888
    :cond_30
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 889
    return-void
.end method

.method public getSimPhonebookCapacity(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 2354
    return-void
.end method

.method public getSimPhonebookRecords(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 2350
    return-void
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 1235
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1236
    return-void
.end method

.method public getVoiceRadioTechnology(Landroid/os/Message;)V
    .registers 5
    .param p1, "response"    # Landroid/os/Message;

    .line 1904
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getVoiceRadioTechnology(Landroid/os/Message;)V

    .line 1905
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1906
    .local v0, "ret":[I
    iget v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mVoiceRadioTech:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1907
    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1908
    return-void
.end method

.method public getVoiceRegistrationState(Landroid/os/Message;)V
    .registers 4
    .param p1, "result"    # Landroid/os/Message;

    .line 972
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mGetVoiceRegistrationStateCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 974
    new-instance v0, Landroid/hardware/radio/V1_0/VoiceRegStateResult;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;-><init>()V

    .line 975
    .local v0, "ret":Landroid/hardware/radio/V1_0/VoiceRegStateResult;
    iget v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mVoiceRegState:I

    iput v1, v0, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->regState:I

    .line 976
    iget v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mVoiceRadioTech:I

    iput v1, v0, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->rat:I

    .line 977
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mCssSupported:Z

    iput-boolean v1, v0, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->cssSupported:Z

    .line 978
    iget v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mRoamingIndicator:I

    iput v1, v0, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->roamingIndicator:I

    .line 979
    iget v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSystemIsInPrl:I

    iput v1, v0, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->systemIsInPrl:I

    .line 980
    iget v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mDefaultRoamingIndicator:I

    iput v1, v0, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->defaultRoamingIndicator:I

    .line 981
    iget v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mReasonForDenial:I

    iput v1, v0, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->reasonForDenial:I

    .line 983
    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 984
    return-void
.end method

.method public handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
    .registers 4
    .param p1, "accept"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .line 952
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 953
    return-void
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .registers 7
    .param p1, "gsmIndex"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 661
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->simulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    add-int/lit8 v1, p1, 0x30

    int-to-char v1, v1

    const/16 v2, 0x31

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    .line 663
    .local v0, "success":Z
    const/4 v1, 0x0

    const-string v2, "GSM"

    if-nez v0, :cond_20

    .line 664
    const-string v3, "[SimCmd] hangupConnection: resultFail"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Hangup Error"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v1, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_28

    .line 667
    :cond_20
    const-string v3, "[SimCmd] hangupConnection: resultSuccess"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-direct {p0, p2, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 670
    :goto_28
    return-void
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .registers 6
    .param p1, "result"    # Landroid/os/Message;

    .line 706
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->simulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    const/16 v1, 0x31

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    .line 708
    .local v0, "success":Z
    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 709
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Hangup Error"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1a

    .line 711
    :cond_17
    invoke-direct {p0, p1, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 713
    :goto_1a
    return-void
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .registers 6
    .param p1, "result"    # Landroid/os/Message;

    .line 684
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->simulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    .line 686
    .local v0, "success":Z
    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 687
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Hangup Error"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1a

    .line 689
    :cond_17
    invoke-direct {p0, p1, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 691
    :goto_1a
    return-void
.end method

.method public iccCloseLogicalChannel(ILandroid/os/Message;)V
    .registers 3
    .param p1, "channel"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2014
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 2015
    return-void
.end method

.method public iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 21
    .param p1, "command"    # I
    .param p2, "fileid"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;
    .param p9, "response"    # Landroid/os/Message;

    .line 1303
    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1304
    return-void
.end method

.method public iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 11
    .param p1, "command"    # I
    .param p2, "fileid"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;
    .param p9, "aid"    # Ljava/lang/String;
    .param p10, "result"    # Landroid/os/Message;

    .line 1314
    invoke-direct {p0, p10}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1315
    return-void
.end method

.method public iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V
    .registers 7
    .param p1, "AID"    # Ljava/lang/String;
    .param p2, "p2"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 2007
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V

    .line 2008
    const/4 v0, 0x1

    new-array v0, v0, [I

    iget v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mChannelId:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 2009
    .local v0, "result":Ljava/lang/Object;
    invoke-direct {p0, p3, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2010
    return-void
.end method

.method public iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V
    .registers 8
    .param p1, "cla"    # I
    .param p2, "instruction"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "data"    # Ljava/lang/String;
    .param p7, "response"    # Landroid/os/Message;

    .line 2033
    invoke-direct {p0, p7}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 2034
    return-void
.end method

.method public iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .registers 20
    .param p1, "channel"    # I
    .param p2, "cla"    # I
    .param p3, "instruction"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "response"    # Landroid/os/Message;

    .line 2021
    move-object v0, p0

    move-object/from16 v10, p8

    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V

    .line 2023
    iget-object v1, v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mIccIoResultForApduLogicalChannel:Lcom/android/internal/telephony/uicc/IccIoResult;

    if-eqz v1, :cond_1e

    .line 2024
    invoke-direct {p0, v10, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_29

    .line 2026
    :cond_1e
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "IccIoResult not set"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v10, v1, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2028
    :goto_29
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .registers 4
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .line 1534
    if-eqz p2, :cond_b

    .line 1535
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1536
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1538
    :cond_b
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .param p1, "strings"    # [Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 1553
    if-eqz p2, :cond_b

    .line 1554
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1555
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1557
    :cond_b
    return-void
.end method

.method public isDataAllowed()Z
    .registers 2

    .line 2231
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public notifyEmergencyCallbackMode()V
    .registers 2

    .line 2132
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mEmergencyCallbackModeRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_9

    .line 2133
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mEmergencyCallbackModeRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    .line 2135
    :cond_9
    return-void
.end method

.method public notifyExitEmergencyCallbackMode()V
    .registers 4

    .line 2144
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mExitEmergencyCallbackModeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_f

    .line 2145
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mExitEmergencyCallbackModeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2148
    :cond_f
    return-void
.end method

.method public notifyGsmBroadcastSms(Ljava/lang/Object;)V
    .registers 5
    .param p1, "result"    # Ljava/lang/Object;

    .line 2120
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mGsmBroadcastSmsRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_f

    .line 2121
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mGsmBroadcastSmsRegistrant:Lcom/android/internal/telephony/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 2123
    :cond_f
    return-void
.end method

.method public notifyIccSmsFull()V
    .registers 2

    .line 2126
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mIccSmsFullRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_9

    .line 2127
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mIccSmsFullRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    .line 2129
    :cond_9
    return-void
.end method

.method public notifyImsNetworkStateChanged()V
    .registers 2

    .line 2151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mImsNetworkStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_9

    .line 2152
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mImsNetworkStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 2154
    :cond_9
    return-void
.end method

.method public notifyModemReset()V
    .registers 5

    .line 2157
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mModemResetRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_11

    .line 2158
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mModemResetRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    const-string v3, "Test"

    invoke-direct {v1, v2, v3, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2160
    :cond_11
    return-void
.end method

.method public notifyNetworkStateChanged()V
    .registers 2

    .line 2175
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mNetworkStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 2176
    return-void
.end method

.method public notifyOtaProvisionStatusChanged()V
    .registers 5

    .line 2180
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mOtaProvisionRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_17

    .line 2181
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 2182
    .local v0, "ret":[I
    const/4 v1, 0x0

    const/16 v2, 0x8

    aput v2, v0, v1

    .line 2183
    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mOtaProvisionRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2185
    .end local v0    # "ret":[I
    :cond_17
    return-void
.end method

.method public notifyRadioOn()V
    .registers 2

    .line 2170
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mOnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 2171
    return-void
.end method

.method public notifySignalStrength()V
    .registers 9

    .line 2188
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v0, :cond_30

    .line 2189
    new-instance v0, Landroid/telephony/SignalStrength;

    new-instance v2, Landroid/telephony/CellSignalStrengthCdma;

    invoke-direct {v2}, Landroid/telephony/CellSignalStrengthCdma;-><init>()V

    new-instance v3, Landroid/telephony/CellSignalStrengthGsm;

    const/16 v1, 0x14

    const/4 v4, 0x0

    const v5, 0x7fffffff

    invoke-direct {v3, v1, v4, v5}, Landroid/telephony/CellSignalStrengthGsm;-><init>(III)V

    new-instance v4, Landroid/telephony/CellSignalStrengthWcdma;

    invoke-direct {v4}, Landroid/telephony/CellSignalStrengthWcdma;-><init>()V

    new-instance v5, Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-direct {v5}, Landroid/telephony/CellSignalStrengthTdscdma;-><init>()V

    new-instance v6, Landroid/telephony/CellSignalStrengthLte;

    invoke-direct {v6}, Landroid/telephony/CellSignalStrengthLte;-><init>()V

    new-instance v7, Landroid/telephony/CellSignalStrengthNr;

    invoke-direct {v7}, Landroid/telephony/CellSignalStrengthNr;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/CellSignalStrengthCdma;Landroid/telephony/CellSignalStrengthGsm;Landroid/telephony/CellSignalStrengthWcdma;Landroid/telephony/CellSignalStrengthTdscdma;Landroid/telephony/CellSignalStrengthLte;Landroid/telephony/CellSignalStrengthNr;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 2198
    :cond_30
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSignalStrengthRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_41

    .line 2199
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSignalStrengthRegistrant:Lcom/android/internal/telephony/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSignalStrength:Landroid/telephony/SignalStrength;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 2202
    :cond_41
    return-void
.end method

.method public notifySmsStatus(Ljava/lang/Object;)V
    .registers 5
    .param p1, "result"    # Ljava/lang/Object;

    .line 2114
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSmsStatusRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_f

    .line 2115
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSmsStatusRegistrant:Lcom/android/internal/telephony/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 2117
    :cond_f
    return-void
.end method

.method public nvReadItem(ILandroid/os/Message;Landroid/os/WorkSource;)V
    .registers 4
    .param p1, "itemID"    # I
    .param p2, "response"    # Landroid/os/Message;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .line 2038
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 2039
    return-void
.end method

.method public nvResetConfig(ILandroid/os/Message;)V
    .registers 3
    .param p1, "resetType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2053
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 2054
    return-void
.end method

.method public nvWriteCdmaPrl([BLandroid/os/Message;)V
    .registers 3
    .param p1, "preferredRoamingList"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .line 2048
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 2049
    return-void
.end method

.method public nvWriteItem(ILjava/lang/String;Landroid/os/Message;Landroid/os/WorkSource;)V
    .registers 5
    .param p1, "itemID"    # I
    .param p2, "itemValue"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;
    .param p4, "workSource"    # Landroid/os/WorkSource;

    .line 2043
    invoke-direct {p0, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 2044
    return-void
.end method

.method public pauseResponses()V
    .registers 2

    .line 1657
    iget v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPausedResponseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPausedResponseCount:I

    .line 1658
    return-void
.end method

.method public progressConnectingCallState()V
    .registers 2

    .line 1573
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->simulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->progressConnectingCallState()V

    .line 1574
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mCallStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 1575
    return-void
.end method

.method public progressConnectingToActive()V
    .registers 2

    .line 1581
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->simulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->progressConnectingToActive()V

    .line 1582
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mCallStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 1583
    return-void
.end method

.method public pullLceData(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 2079
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 2080
    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .registers 6
    .param p1, "result"    # Landroid/os/Message;

    .line 912
    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 914
    .local v1, "ret":[I
    const/4 v2, 0x0

    aput v0, v1, v2

    .line 915
    const/4 v2, 0x1

    const/4 v3, 0x2

    aput v3, v1, v2

    .line 916
    const/4 v2, 0x3

    aput v2, v1, v3

    .line 917
    aput v0, v1, v2

    .line 919
    invoke-direct {p0, p1, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 920
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .line 1324
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .registers 6
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .line 1404
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 1406
    const/4 v0, 0x0

    invoke-direct {p0, p4, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1407
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .registers 3
    .param p1, "serviceClass"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1365
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1366
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .line 1740
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1741
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .registers 11
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 426
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 427
    return-void
.end method

.method public queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .registers 11
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "appId"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/os/Message;

    .line 432
    const-string v0, "MtkSimulatedCommandsBase"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_37

    const-string v3, "SC"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 433
    if-eqz p5, :cond_36

    .line 434
    new-array v1, v1, [I

    .line 435
    .local v1, "r":[I
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimLockEnabled:Z

    aput v3, v1, v2

    .line 436
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SimCmd] queryFacilityLock: SIM is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    aget v2, v1, v2

    if-nez v2, :cond_27

    const-string v2, "unlocked"

    goto :goto_29

    :cond_27
    const-string v2, "locked"

    :goto_29
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 436
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-direct {p0, p5, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 440
    .end local v1    # "r":[I
    :cond_36
    return-void

    .line 441
    :cond_37
    if-eqz p1, :cond_6a

    const-string v3, "FD"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 442
    if-eqz p5, :cond_69

    .line 443
    new-array v1, v1, [I

    .line 444
    .restart local v1    # "r":[I
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimFdnEnabled:Z

    aput v3, v1, v2

    .line 445
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SimCmd] queryFacilityLock: FDN is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    aget v2, v1, v2

    if-nez v2, :cond_5a

    const-string v2, "disabled"

    goto :goto_5c

    :cond_5a
    const-string v2, "enabled"

    :goto_5c
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 445
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-direct {p0, p5, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 449
    .end local v1    # "r":[I
    :cond_69
    return-void

    .line 452
    :cond_6a
    invoke-direct {p0, p5}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 453
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .line 1791
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1792
    return-void
.end method

.method public registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2164
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    .line 2165
    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2166
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/BaseCommands;->registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2167
    return-void
.end method

.method public registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2295
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/BaseCommands;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2296
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2297
    return-void
.end method

.method public registerForLceInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2084
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->registerForLceInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2085
    return-void
.end method

.method public registerForModemReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2244
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->registerForModemReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2245
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/BaseCommands;->registerForModemReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2246
    return-void
.end method

.method public registerForNattKeepaliveStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2307
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->registerForNattKeepaliveStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2308
    return-void
.end method

.method public registerForPcoData(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2236
    return-void
.end method

.method public registerForSimPhonebookChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2334
    return-void
.end method

.method public registerForSimPhonebookRecordsReceived(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2342
    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .registers 6
    .param p1, "result"    # Landroid/os/Message;

    .line 828
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->simulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    .line 830
    .local v0, "success":Z
    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 831
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Hangup Error"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1a

    .line 833
    :cond_17
    invoke-direct {p0, p1, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 835
    :goto_1a
    return-void
.end method

.method public reportSmsMemoryStatus(ZLandroid/os/Message;)V
    .registers 4
    .param p1, "available"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 1245
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1246
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    .line 1247
    return-void
.end method

.method public reportStkServiceIsRunning(Landroid/os/Message;)V
    .registers 3
    .param p1, "result"    # Landroid/os/Message;

    .line 1251
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1252
    return-void
.end method

.method public requestIccSimAuthentication(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .param p1, "authContext"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 1899
    invoke-direct {p0, p4}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1900
    return-void
.end method

.method public requestShutdown(Landroid/os/Message;)V
    .registers 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2063
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->setRadioState(IZ)V

    .line 2064
    return-void
.end method

.method public resetRadio(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 1528
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1529
    return-void
.end method

.method public resumeResponses()V
    .registers 4

    .line 1663
    iget v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPausedResponseCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPausedResponseCount:I

    .line 1665
    if-nez v0, :cond_25

    .line 1666
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPausedResponses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "s":I
    :goto_f
    if-ge v0, v1, :cond_1f

    .line 1667
    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPausedResponses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1666
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1669
    .end local v0    # "i":I
    .end local v1    # "s":I
    :cond_1f
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPausedResponses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_2c

    .line 1671
    :cond_25
    const-string v0, "GSM"

    const-string v1, "MtkSimulatedCommandsBase.resumeResponses < 0"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    :goto_2c
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .registers 6
    .param p1, "dtmfString"    # Ljava/lang/String;
    .param p2, "on"    # I
    .param p3, "off"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 1084
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 1085
    const/4 v0, 0x0

    invoke-direct {p0, p4, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1086
    return-void
.end method

.method public sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .param p1, "FeatureCode"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 1799
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1800
    return-void
.end method

.method public sendCdmaSMSExpectMore([BLandroid/os/Message;)V
    .registers 3
    .param p1, "pdu"    # [B
    .param p2, "result"    # Landroid/os/Message;

    .line 1813
    return-void
.end method

.method public sendCdmaSms([BLandroid/os/Message;)V
    .registers 4
    .param p1, "pdu"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .line 1807
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->sendCdmaSms([BLandroid/os/Message;)V

    .line 1808
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1809
    return-void
.end method

.method public sendDeviceState(IZLandroid/os/Message;)V
    .registers 5
    .param p1, "stateType"    # I
    .param p2, "state"    # Z
    .param p3, "result"    # Landroid/os/Message;

    .line 2250
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->sendDeviceState(IZLandroid/os/Message;)V

    .line 2251
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2252
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .registers 4
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 1054
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1055
    return-void
.end method

.method public sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 935
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 936
    return-void
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 943
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 944
    return-void
.end method

.method public sendImsCdmaSms([BIILandroid/os/Message;)V
    .registers 8
    .param p1, "pdu"    # [B
    .param p2, "retry"    # I
    .param p3, "messageRef"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 1992
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->sendImsCdmaSms([BIILandroid/os/Message;)V

    .line 1994
    new-instance v0, Lcom/android/internal/telephony/SmsResponse;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, p4, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1995
    return-void
.end method

.method public sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V
    .registers 12
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "retry"    # I
    .param p4, "messageRef"    # I
    .param p5, "response"    # Landroid/os/Message;

    .line 2000
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V

    .line 2002
    new-instance v0, Lcom/android/internal/telephony/SmsResponse;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, p5, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2003
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 7
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 1096
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1097
    new-instance v0, Lcom/android/internal/telephony/SmsResponse;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, p3, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1098
    return-void
.end method

.method public sendSMSExpectMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 1110
    invoke-direct {p0, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1111
    return-void
.end method

.method public sendStkCcAplha(Ljava/lang/String;)V
    .registers 2
    .param p1, "alphaString"    # Ljava/lang/String;

    .line 1485
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->triggerIncomingStkCcAlpha(Ljava/lang/String;)V

    .line 1486
    return-void
.end method

.method public sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 927
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 928
    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .param p1, "ussdString"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 1507
    const-string v0, "#646#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "0"

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    .line 1508
    invoke-direct {p0, p2, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1511
    const-string v0, "You have NNN minutes remaining."

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->triggerIncomingUssd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    .line 1513
    :cond_14
    invoke-direct {p0, p2, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1515
    const-string v0, "All Done"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->triggerIncomingUssd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    :goto_1c
    return-void
.end method

.method public separateConnection(ILandroid/os/Message;)V
    .registers 8
    .param p1, "gsmIndex"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 788
    add-int/lit8 v0, p1, 0x30

    int-to-char v0, v0

    .line 789
    .local v0, "ch":C
    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->simulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    const/16 v2, 0x32

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->onChld(CC)Z

    move-result v1

    .line 791
    .local v1, "success":Z
    const/4 v2, 0x0

    if-nez v1, :cond_19

    .line 792
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Hangup Error"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v2, v3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1c

    .line 794
    :cond_19
    invoke-direct {p0, p2, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 796
    :goto_1c
    return-void
.end method

.method public setAllowedCarriers(Landroid/telephony/CarrierRestrictionRules;Landroid/os/Message;Landroid/os/WorkSource;)V
    .registers 4
    .param p1, "carrierRestrictionRules"    # Landroid/telephony/CarrierRestrictionRules;
    .param p2, "result"    # Landroid/os/Message;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .line 2100
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 2101
    return-void
.end method

.method public setAllowedNetworkTypesBitmap(ILandroid/os/Message;)V
    .registers 4
    .param p1, "networkTypeBitmask"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1212
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    .line 1213
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->setAllowedNetworkTypesBitmap(ILandroid/os/Message;)V

    .line 1214
    iput p1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mAllowedNetworkType:I

    .line 1215
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1216
    return-void
.end method

.method public setAutoProgressConnectingCall(Z)V
    .registers 3
    .param p1, "b"    # Z

    .line 1591
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->simulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->setAutoProgressConnectingCall(Z)V

    .line 1592
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .registers 4
    .param p1, "bandMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 899
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 900
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .registers 3
    .param p1, "clirMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1353
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .registers 14
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "result"    # Landroid/os/Message;

    .line 1388
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 1390
    const/4 v0, 0x0

    invoke-direct {p0, p6, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1391
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .registers 4
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 1377
    invoke-direct {p0, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1378
    return-void
.end method

.method public setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;Landroid/os/Message;)V
    .registers 4
    .param p1, "imsiEncryptionInfo"    # Landroid/telephony/ImsiEncryptionInfo;
    .param p2, "response"    # Landroid/os/Message;

    .line 1544
    if-eqz p2, :cond_b

    .line 1545
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1546
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1548
    :cond_b
    return-void
.end method

.method public setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    .registers 3
    .param p1, "activate"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .line 1817
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1819
    return-void
.end method

.method public setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;Landroid/os/Message;)V
    .registers 3
    .param p1, "configs"    # [Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
    .param p2, "response"    # Landroid/os/Message;

    .line 1829
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1830
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .registers 3
    .param p1, "cdmaRoamingType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1745
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1746
    return-void
.end method

.method public setCdmaSubscriptionSource(ILandroid/os/Message;)V
    .registers 3
    .param p1, "cdmaSubscriptionType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1735
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1736
    return-void
.end method

.method public setCellInfoList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 1911
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    iput-object p1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mCellInfoList:Ljava/util/List;

    .line 1912
    return-void
.end method

.method public declared-synchronized setCellInfoListBehavior(Z)V
    .registers 2
    .param p1, "shouldReturn"    # Z

    monitor-enter p0

    .line 1943
    :try_start_1
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mShouldReturnCellInfo:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1944
    monitor-exit p0

    return-void

    .line 1942
    .end local p0    # "this":Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;
    .end local p1    # "shouldReturn":Z
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setCellInfoListRate(ILandroid/os/Message;Landroid/os/WorkSource;)V
    .registers 4
    .param p1, "rateInMillis"    # I
    .param p2, "response"    # Landroid/os/Message;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .line 1965
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1966
    return-void
.end method

.method public setDataAllowed(ZLandroid/os/Message;)V
    .registers 5
    .param p1, "allowed"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 2224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDataAllowed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->log(Ljava/lang/String;)V

    .line 2225
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2226
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2227
    return-void
.end method

.method public setDataCallResult(ZLandroid/hardware/radio/V1_0/SetupDataCallResult;)V
    .registers 3
    .param p1, "success"    # Z
    .param p2, "dcResult"    # Landroid/hardware/radio/V1_0/SetupDataCallResult;

    .line 1138
    iput-object p2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    .line 1139
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mDcSuccess:Z

    .line 1140
    return-void
.end method

.method public setDataProfile([Landroid/telephony/data/DataProfile;ZLandroid/os/Message;)V
    .registers 4
    .param p1, "dps"    # [Landroid/telephony/data/DataProfile;
    .param p2, "isRoaming"    # Z
    .param p3, "result"    # Landroid/os/Message;

    .line 1974
    return-void
.end method

.method public setDataRadioTech(I)V
    .registers 2
    .param p1, "radioTech"    # I

    .line 994
    iput p1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mDataRadioTech:I

    .line 995
    return-void
.end method

.method public setDataRegState(I)V
    .registers 2
    .param p1, "dataRegState"    # I

    .line 998
    iput p1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mDataRegState:I

    .line 999
    return-void
.end method

.method public setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2139
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2140
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/BaseCommands;->setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2141
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .registers 13
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockEnabled"    # Z
    .param p3, "pin"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "result"    # Landroid/os/Message;

    .line 458
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 459
    return-void
.end method

.method public setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .registers 10
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockEnabled"    # Z
    .param p3, "pin"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "appId"    # Ljava/lang/String;
    .param p6, "result"    # Landroid/os/Message;

    .line 465
    const/4 v0, 0x0

    const-string v1, "MtkSimulatedCommandsBase"

    if-eqz p1, :cond_32

    .line 466
    const-string v2, "SC"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 467
    if-eqz p3, :cond_22

    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPinCode:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 468
    const-string v2, "[SimCmd] setFacilityLock: pin is valid"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iput-boolean p2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimLockEnabled:Z

    .line 471
    invoke-direct {p0, p6, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 473
    return-void

    .line 476
    :cond_22
    const-string v2, "[SimCmd] setFacilityLock: pin failed!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 480
    .local v1, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p6, v0, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 482
    return-void

    .line 483
    .end local v1    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_32
    if-eqz p1, :cond_61

    .line 484
    const-string v2, "FD"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 485
    if-eqz p3, :cond_51

    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPin2Code:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 486
    const-string v2, "[SimCmd] setFacilityLock: pin2 is valid"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iput-boolean p2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimFdnEnabled:Z

    .line 489
    invoke-direct {p0, p6, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 491
    return-void

    .line 494
    :cond_51
    const-string v2, "[SimCmd] setFacilityLock: pin2 failed!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 498
    .restart local v1    # "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p6, v0, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 500
    return-void

    .line 503
    .end local v1    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_61
    invoke-direct {p0, p6}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 504
    return-void
.end method

.method public setGsmBroadcastActivation(ZLandroid/os/Message;)V
    .registers 3
    .param p1, "activate"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .line 1839
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1840
    return-void
.end method

.method public setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .registers 3
    .param p1, "config"    # [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .param p2, "response"    # Landroid/os/Message;

    .line 1845
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1846
    return-void
.end method

.method public setIMEI(Ljava/lang/String;)V
    .registers 2
    .param p1, "imei"    # Ljava/lang/String;

    .line 613
    iput-object p1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mImei:Ljava/lang/String;

    .line 614
    return-void
.end method

.method public setIMEISV(Ljava/lang/String;)V
    .registers 2
    .param p1, "imeisv"    # Ljava/lang/String;

    .line 630
    iput-object p1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mImeiSv:Ljava/lang/String;

    .line 631
    return-void
.end method

.method public setIccCardStatus(Lcom/android/internal/telephony/uicc/IccCardStatus;)V
    .registers 2
    .param p1, "iccCardStatus"    # Lcom/android/internal/telephony/uicc/IccCardStatus;

    .line 2205
    iput-object p1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mIccCardStatus:Lcom/android/internal/telephony/uicc/IccCardStatus;

    .line 2206
    return-void
.end method

.method public setIccIoResultForApduLogicalChannel(Lcom/android/internal/telephony/uicc/IccIoResult;)V
    .registers 2
    .param p1, "iccIoResult"    # Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 2209
    iput-object p1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mIccIoResultForApduLogicalChannel:Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 2210
    return-void
.end method

.method public setIccSlotStatus(Lcom/android/internal/telephony/uicc/IccSlotStatus;)V
    .registers 2
    .param p1, "iccSlotStatus"    # Lcom/android/internal/telephony/uicc/IccSlotStatus;

    .line 207
    iput-object p1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mIccSlotStatus:Lcom/android/internal/telephony/uicc/IccSlotStatus;

    .line 208
    return-void
.end method

.method public setImsRegistrationState([I)V
    .registers 2
    .param p1, "regState"    # [I

    .line 1977
    iput-object p1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mImsRegState:[I

    .line 1978
    return-void
.end method

.method public setInitialAttachApn(Landroid/telephony/data/DataProfile;ZLandroid/os/Message;)V
    .registers 4
    .param p1, "dataProfile"    # Landroid/telephony/data/DataProfile;
    .param p2, "isRoaming"    # Z
    .param p3, "result"    # Landroid/os/Message;

    .line 1970
    return-void
.end method

.method public setLinkCapacityReportingCriteria(III[I[IILandroid/os/Message;)V
    .registers 8
    .param p1, "hysteresisMs"    # I
    .param p2, "hysteresisDlKbps"    # I
    .param p3, "hysteresisUlKbps"    # I
    .param p4, "thresholdsDlKbps"    # [I
    .param p5, "thresholdsUlKbps"    # [I
    .param p6, "ran"    # I
    .param p7, "result"    # Landroid/os/Message;

    .line 2269
    return-void
.end method

.method public setLocationUpdates(ZLandroid/os/Message;)V
    .registers 4
    .param p1, "enable"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .line 1229
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->setLocationUpdates(ZLandroid/os/Message;)V

    .line 1230
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1231
    return-void
.end method

.method public setLogicalToPhysicalSlotMapping([ILandroid/os/Message;)V
    .registers 3
    .param p1, "physicalSlots"    # [I
    .param p2, "result"    # Landroid/os/Message;

    .line 223
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 224
    return-void
.end method

.method public setMute(ZLandroid/os/Message;)V
    .registers 3
    .param p1, "enableMute"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 868
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 1410
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;ILandroid/os/Message;)V
    .registers 4
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "ran"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1415
    invoke-direct {p0, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setNextCallFailCause(I)V
    .registers 2
    .param p1, "gsmCause"    # I

    .line 1603
    iput p1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mNextCallFailCause:I

    .line 1604
    return-void
.end method

.method public setNextDialFailImmediately(Z)V
    .registers 3
    .param p1, "b"    # Z

    .line 1597
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->simulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->setNextDialFailImmediately(Z)V

    .line 1598
    return-void
.end method

.method public setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2285
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/BaseCommands;->setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2286
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2287
    return-void
.end method

.method public setOpenChannelId(I)V
    .registers 2
    .param p1, "channelId"    # I

    .line 2213
    iput p1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mChannelId:I

    .line 2214
    return-void
.end method

.method public setPhoneType(I)V
    .registers 2
    .param p1, "phoneType"    # I

    .line 1751
    return-void
.end method

.method public setPin1RemainingAttempt(I)V
    .registers 2
    .param p1, "pin1attemptsRemaining"    # I

    .line 2217
    iput p1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPin1attemptsRemaining:I

    .line 2218
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .registers 4
    .param p1, "networkType"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1195
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1196
    iput p1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mNetworkType:I

    .line 1197
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1198
    return-void
.end method

.method public setPreferredVoicePrivacy(ZLandroid/os/Message;)V
    .registers 3
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 1760
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1761
    return-void
.end method

.method public setRadioPower(ZLandroid/os/Message;)V
    .registers 6
    .param p1, "on"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 1268
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mIsRadioPowerFailResponse:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 1269
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "setRadioPower failed!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1270
    return-void

    .line 1273
    :cond_10
    const/4 v0, 0x0

    if-eqz p1, :cond_18

    .line 1274
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->setRadioState(IZ)V

    goto :goto_1b

    .line 1276
    :cond_18
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->setRadioState(IZ)V

    .line 1278
    :goto_1b
    invoke-direct {p0, p2, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1279
    return-void
.end method

.method public setRadioPowerFailResponse(Z)V
    .registers 2
    .param p1, "fail"    # Z

    .line 2290
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mIsRadioPowerFailResponse:Z

    .line 2291
    return-void
.end method

.method public setSignalStrength(Landroid/telephony/SignalStrength;)V
    .registers 2
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .line 874
    iput-object p1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 875
    return-void
.end method

.method public setSignalStrengthReportingCriteria(Landroid/telephony/SignalThresholdInfo;ILandroid/os/Message;)V
    .registers 4
    .param p1, "signalThresholdInfo"    # Landroid/telephony/SignalThresholdInfo;
    .param p2, "ran"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 2263
    return-void
.end method

.method public setSimCardPower(ILandroid/os/Message;Landroid/os/WorkSource;)V
    .registers 4
    .param p1, "state"    # I
    .param p2, "result"    # Landroid/os/Message;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .line 2273
    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 1240
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1241
    return-void
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .registers 5
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 414
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 416
    if-eqz p1, :cond_11

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSsnNotifyOn:Z

    if-eqz v0, :cond_11

    .line 417
    const-string v0, "MtkSimulatedCommandsBase"

    const-string v1, "Supp Service Notifications already enabled!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_11
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSsnNotifyOn:Z

    .line 421
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .registers 5
    .param p1, "ttyMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1775
    const-string v0, "MtkSimulatedCommandsBase"

    const-string v1, "Not implemented in MtkSimulatedCommandsBase"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1777
    return-void
.end method

.method public setUnsolResponseFilter(ILandroid/os/Message;)V
    .registers 4
    .param p1, "filter"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2256
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->setUnsolResponseFilter(ILandroid/os/Message;)V

    .line 2257
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2258
    return-void
.end method

.method public setVoiceRadioTech(I)V
    .registers 2
    .param p1, "voiceRadioTech"    # I

    .line 956
    iput p1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mVoiceRadioTech:I

    .line 957
    return-void
.end method

.method public setVoiceRegState(I)V
    .registers 2
    .param p1, "voiceRegState"    # I

    .line 960
    iput p1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mVoiceRegState:I

    .line 961
    return-void
.end method

.method public setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/os/Message;)V
    .registers 27
    .param p1, "accessNetworkType"    # I
    .param p2, "dataProfile"    # Landroid/telephony/data/DataProfile;
    .param p3, "isRoaming"    # Z
    .param p4, "allowRoaming"    # Z
    .param p5, "reason"    # I
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "pduSessionId"    # I
    .param p8, "sliceInfo"    # Landroid/telephony/data/NetworkSliceInfo;
    .param p9, "trafficDescriptor"    # Landroid/telephony/data/TrafficDescriptor;
    .param p10, "matchAllRuleAllowed"    # Z
    .param p11, "result"    # Landroid/os/Message;

    .line 1156
    move-object v1, p0

    move-object/from16 v14, p11

    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v2 .. v13}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/os/Message;)V

    .line 1160
    iget-object v0, v1, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    if-nez v0, :cond_69

    .line 1162
    :try_start_24
    new-instance v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/SetupDataCallResult;-><init>()V

    iput-object v0, v1, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    .line 1163
    const/4 v2, 0x0

    iput v2, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->status:I

    .line 1164
    iget-object v0, v1, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    const/4 v2, -0x1

    iput v2, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->suggestedRetryTime:I

    .line 1165
    iget-object v0, v1, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    const/4 v2, 0x1

    iput v2, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->cid:I

    .line 1166
    iget-object v0, v1, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    const/4 v2, 0x2

    iput v2, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->active:I

    .line 1167
    iget-object v0, v1, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    const-string v2, "IP"

    iput-object v2, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->type:Ljava/lang/String;

    .line 1168
    iget-object v0, v1, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    const-string v2, "rmnet_data7"

    iput-object v2, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 1169
    iget-object v0, v1, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    const-string v2, "12.34.56.78"

    iput-object v2, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->addresses:Ljava/lang/String;

    .line 1170
    iget-object v0, v1, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    const-string v2, "98.76.54.32"

    iput-object v2, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->dnses:Ljava/lang/String;

    .line 1171
    iget-object v0, v1, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    const-string v2, "11.22.33.44"

    iput-object v2, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->gateways:Ljava/lang/String;

    .line 1172
    iget-object v0, v1, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    const-string v2, ""

    iput-object v2, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->pcscf:Ljava/lang/String;

    .line 1173
    iget-object v0, v1, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    const/16 v2, 0x5a0

    iput v2, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->mtu:I
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_67} :catch_68

    .line 1176
    goto :goto_69

    .line 1174
    :catch_68
    move-exception v0

    .line 1179
    :cond_69
    :goto_69
    iget-boolean v0, v1, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mDcSuccess:Z

    if-eqz v0, :cond_73

    .line 1180
    iget-object v0, v1, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    invoke-direct {p0, v14, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_7f

    .line 1182
    :cond_73
    iget-object v0, v1, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Setup data call failed!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v14, v0, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1185
    :goto_7f
    return-void
.end method

.method public shutdown()V
    .registers 3

    .line 1632
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->setRadioState(IZ)V

    .line 1633
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1634
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_10

    .line 1635
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1637
    :cond_10
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .registers 4
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 1064
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1065
    return-void
.end method

.method public startLceService(IZLandroid/os/Message;)V
    .registers 5
    .param p1, "report_interval_ms"    # I
    .param p2, "pullMode"    # Z
    .param p3, "result"    # Landroid/os/Message;

    .line 2068
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->startLceService(IZLandroid/os/Message;)V

    .line 2070
    return-void
.end method

.method public startNattKeepalive(ILandroid/net/KeepalivePacketData;ILandroid/os/Message;)V
    .registers 6
    .param p1, "contextId"    # I
    .param p2, "packetData"    # Landroid/net/KeepalivePacketData;
    .param p3, "intervalMillis"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 2318
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->startNattKeepalive(ILandroid/net/KeepalivePacketData;ILandroid/os/Message;)V

    .line 2320
    return-void
.end method

.method public startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V
    .registers 3
    .param p1, "nsr"    # Landroid/telephony/NetworkScanRequest;
    .param p2, "result"    # Landroid/os/Message;

    .line 1457
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1458
    return-void
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .registers 3
    .param p1, "result"    # Landroid/os/Message;

    .line 1074
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1075
    return-void
.end method

.method public stopLceService(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 2074
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 2075
    return-void
.end method

.method public stopNattKeepalive(ILandroid/os/Message;)V
    .registers 4
    .param p1, "sessionHandle"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2324
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->stopNattKeepalive(ILandroid/os/Message;)V

    .line 2325
    return-void
.end method

.method public stopNetworkScan(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 1465
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1466
    return-void
.end method

.method public supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    .registers 7
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 228
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimLockedState:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    sget-object v1, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;->REQUIRE_PIN:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    const/4 v2, 0x0

    const-string v3, "MtkSimulatedCommandsBase"

    if-eq v0, v1, :cond_2a

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SimCmd] supplyIccPin: wrong state, state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimLockedState:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 233
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p2, v2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 234
    return-void

    .line 237
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_2a
    if-eqz p1, :cond_49

    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPinCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 238
    const-string v0, "[SimCmd] supplyIccPin: success!"

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPinUnlockAttempts:I

    .line 240
    sget-object v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;->NONE:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimLockedState:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    .line 241
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mIccStatusChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 243
    invoke-direct {p0, p2, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 245
    return-void

    .line 248
    :cond_49
    if-eqz p2, :cond_7f

    .line 249
    iget v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPinUnlockAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPinUnlockAttempts:I

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SimCmd] supplyIccPin: failed! attempt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPinUnlockAttempts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPinUnlockAttempts:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_75

    .line 254
    const-string v0, "[SimCmd] supplyIccPin: set state to REQUIRE_PUK"

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    sget-object v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;->REQUIRE_PUK:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimLockedState:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    .line 258
    :cond_75
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 260
    .restart local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p2, v2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 262
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_7f
    return-void
.end method

.method public supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .registers 7
    .param p1, "pin2"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 303
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimFdnEnabledState:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    sget-object v1, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;->REQUIRE_PIN2:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    const/4 v2, 0x0

    const-string v3, "MtkSimulatedCommandsBase"

    if-eq v0, v1, :cond_2a

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SimCmd] supplyIccPin2: wrong state, state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimFdnEnabledState:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 308
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p2, v2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 309
    return-void

    .line 312
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_2a
    if-eqz p1, :cond_44

    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPin2Code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 313
    const-string v0, "[SimCmd] supplyIccPin2: success!"

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPin2UnlockAttempts:I

    .line 315
    sget-object v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;->NONE:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimFdnEnabledState:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    .line 317
    invoke-direct {p0, p2, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 318
    return-void

    .line 321
    :cond_44
    if-eqz p2, :cond_7a

    .line 322
    iget v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPin2UnlockAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPin2UnlockAttempts:I

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SimCmd] supplyIccPin2: failed! attempt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPin2UnlockAttempts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPin2UnlockAttempts:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_70

    .line 327
    const-string v0, "[SimCmd] supplyIccPin2: set state to REQUIRE_PUK2"

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    sget-object v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;->REQUIRE_PUK2:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimFdnEnabledState:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    .line 331
    :cond_70
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 333
    .restart local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p2, v2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 335
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_7a
    return-void
.end method

.method public supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .param p1, "pin2"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 1875
    invoke-direct {p0, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1876
    return-void
.end method

.method public supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 8
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 1855
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1856
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPinCode:Ljava/lang/String;

    if-eqz v0, :cond_16

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1857
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1858
    return-void

    .line 1861
    :cond_16
    const-string v0, "MtkSimulatedCommandsBase"

    const-string v1, "[SimCmd] supplyIccPinForApp: pin failed!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1864
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 1865
    iget v3, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPin1attemptsRemaining:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPin1attemptsRemaining:I

    const/4 v1, 0x0

    if-gez v3, :cond_30

    move v3, v1

    :cond_30
    aput v3, v2, v1

    .line 1864
    invoke-direct {p0, p3, v2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1866
    return-void
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 8
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 266
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimLockedState:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    sget-object v1, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;->REQUIRE_PUK:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    const/4 v2, 0x0

    const-string v3, "MtkSimulatedCommandsBase"

    if-eq v0, v1, :cond_2a

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SimCmd] supplyIccPuk: wrong state, state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimLockedState:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 271
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p3, v2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 272
    return-void

    .line 275
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_2a
    if-eqz p1, :cond_49

    const-string v0, "12345678"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 276
    const-string v0, "[SimCmd] supplyIccPuk: success!"

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    sget-object v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;->NONE:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimLockedState:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    .line 278
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPukUnlockAttempts:I

    .line 279
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mIccStatusChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 281
    invoke-direct {p0, p3, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 282
    return-void

    .line 285
    :cond_49
    if-eqz p3, :cond_80

    .line 286
    iget v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPukUnlockAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPukUnlockAttempts:I

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SimCmd] supplyIccPuk: failed! attempt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPukUnlockAttempts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPukUnlockAttempts:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_76

    .line 291
    const-string v0, "[SimCmd] supplyIccPuk: set state to SIM_PERM_LOCKED"

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    sget-object v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;->SIM_PERM_LOCKED:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimLockedState:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    .line 295
    :cond_76
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 297
    .restart local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p3, v2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 299
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_80
    return-void
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 8
    .param p1, "puk2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 339
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimFdnEnabledState:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    sget-object v1, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;->REQUIRE_PUK2:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    const/4 v2, 0x0

    const-string v3, "MtkSimulatedCommandsBase"

    if-eq v0, v1, :cond_2a

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SimCmd] supplyIccPuk2: wrong state, state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimLockedState:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimLockState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 344
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p3, v2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 345
    return-void

    .line 348
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_2a
    if-eqz p1, :cond_44

    const-string v0, "87654321"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 349
    const-string v0, "[SimCmd] supplyIccPuk2: success!"

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    sget-object v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;->NONE:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimFdnEnabledState:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    .line 351
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPuk2UnlockAttempts:I

    .line 353
    invoke-direct {p0, p3, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 354
    return-void

    .line 357
    :cond_44
    if-eqz p3, :cond_7b

    .line 358
    iget v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPuk2UnlockAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPuk2UnlockAttempts:I

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SimCmd] supplyIccPuk2: failed! attempt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPuk2UnlockAttempts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mPuk2UnlockAttempts:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_71

    .line 363
    const-string v0, "[SimCmd] supplyIccPuk2: set state to SIM_PERM_LOCKED"

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    sget-object v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;->SIM_PERM_LOCKED:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSimFdnEnabledState:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    .line 367
    :cond_71
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 369
    .restart local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p3, v2, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 371
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_7b
    return-void
.end method

.method public supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .param p1, "puk2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 1880
    invoke-direct {p0, p4}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1881
    return-void
.end method

.method public supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 1870
    invoke-direct {p0, p4}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1871
    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .param p1, "netpin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 508
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 509
    return-void
.end method

.method public supplySimDepersonalization(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .param p1, "persoType"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    .param p2, "controlKey"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 2330
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .registers 6
    .param p1, "result"    # Landroid/os/Message;

    .line 728
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->simulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    const/16 v1, 0x32

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    .line 730
    .local v0, "success":Z
    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 731
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Hangup Error"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1a

    .line 733
    :cond_17
    invoke-direct {p0, p1, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 735
    :goto_1a
    return-void
.end method

.method public triggerHangupAll()V
    .registers 2

    .line 1644
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->simulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->triggerHangupAll()Z

    .line 1645
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mCallStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 1646
    return-void
.end method

.method public triggerHangupBackground()V
    .registers 2

    .line 1617
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->simulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->triggerHangupBackground()Z

    .line 1618
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mCallStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 1619
    return-void
.end method

.method public triggerHangupForeground()V
    .registers 2

    .line 1609
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->simulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->triggerHangupForeground()Z

    .line 1610
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mCallStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 1611
    return-void
.end method

.method public triggerIncomingSMS(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 1652
    return-void
.end method

.method public triggerIncomingStkCcAlpha(Ljava/lang/String;)V
    .registers 3
    .param p1, "alphaString"    # Ljava/lang/String;

    .line 1479
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mCatCcAlphaRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_9

    .line 1480
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mCatCcAlphaRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Registrant;->notifyResult(Ljava/lang/Object;)V

    .line 1482
    :cond_9
    return-void
.end method

.method public triggerIncomingUssd(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "statusCode"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 1496
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mUSSDRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_12

    .line 1497
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 1498
    .local v0, "result":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mUSSDRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/Registrant;->notifyResult(Ljava/lang/Object;)V

    .line 1500
    .end local v0    # "result":[Ljava/lang/String;
    :cond_12
    return-void
.end method

.method public triggerNITZupdate(Ljava/lang/String;)V
    .registers 8
    .param p1, "NITZStr"    # Ljava/lang/String;

    .line 1143
    if-eqz p1, :cond_1e

    .line 1144
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mNITZTimeRegistrant:Lcom/android/internal/telephony/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    .line 1145
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1144
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 1147
    :cond_1e
    return-void
.end method

.method public triggerRestrictedStateChanged(I)V
    .registers 6
    .param p1, "restrictedState"    # I

    .line 2277
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mRestrictedStateRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_13

    .line 2278
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mRestrictedStateRegistrant:Lcom/android/internal/telephony/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    .line 2279
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2278
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 2281
    :cond_13
    return-void
.end method

.method public triggerRing(Ljava/lang/String;)V
    .registers 3
    .param p1, "number"    # Ljava/lang/String;

    .line 1566
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->simulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->triggerRing(Ljava/lang/String;)Z

    .line 1567
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mCallStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 1568
    return-void
.end method

.method public triggerSsn(II)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "code"    # I

    .line 1623
    new-instance v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    .line 1624
    .local v0, "not":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    iput p1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    .line 1625
    iput p2, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 1626
    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->mSsnRegistrant:Lcom/android/internal/telephony/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 1627
    return-void
.end method

.method public unregisterForIccRefresh(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .line 2301
    invoke-super {p0, p1}, Lcom/android/internal/telephony/BaseCommands;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 2302
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 2303
    return-void
.end method

.method public unregisterForLceInfo(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .line 2089
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->unregisterForLceInfo(Landroid/os/Handler;)V

    .line 2090
    return-void
.end method

.method public unregisterForNattKeepaliveStatus(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .line 2312
    invoke-static {}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->unregisterForNattKeepaliveStatus(Landroid/os/Handler;)V

    .line 2313
    return-void
.end method

.method public unregisterForPcoData(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 2240
    return-void
.end method

.method public unregisterForSimPhonebookChanged(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 2338
    return-void
.end method

.method public unregisterForSimPhonebookRecordsReceived(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 2346
    return-void
.end method

.method public updateSimPhonebookRecord(Lcom/android/internal/telephony/uicc/SimPhonebookRecord;Landroid/os/Message;)V
    .registers 3
    .param p1, "phonebookRecord"    # Lcom/android/internal/telephony/uicc/SimPhonebookRecord;
    .param p2, "result"    # Landroid/os/Message;

    .line 2358
    return-void
.end method

.method public writeSmsToRuim(I[BLandroid/os/Message;)V
    .registers 6
    .param p1, "status"    # I
    .param p2, "pdu"    # [B
    .param p3, "response"    # Landroid/os/Message;

    .line 1133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Write SMS to RUIM with status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkSimulatedCommandsBase"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    invoke-direct {p0, p3}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1135
    return-void
.end method

.method public writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 7
    .param p1, "status"    # I
    .param p2, "smsc"    # Ljava/lang/String;
    .param p3, "pdu"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 1127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Write SMS to SIM with status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkSimulatedCommandsBase"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    invoke-direct {p0, p4}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;->unimplemented(Landroid/os/Message;)V

    .line 1129
    return-void
.end method

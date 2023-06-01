.class public Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;
.super Lcom/android/internal/telephony/GsmCdmaConnection;
.source "MtkGsmCdmaConnection.java"


# static fields
.field private static final MO_CALL_VIBRATE_TIME:I = 0xc8

.field private static final PROP_LOG_TAG:Ljava/lang/String; = "GsmCdmaConn"


# instance fields
.field private mIsIncomingCallGwsd:Z

.field private mIsRealConnected:Z

.field private mReceivedAccepted:Z

.field mRedirectingAddress:Ljava/lang/String;

.field mRejectCauseToRIL:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cw"    # Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;
    .param p3, "ct"    # Lcom/android/internal/telephony/GsmCdmaCallTracker;
    .param p4, "parent"    # Lcom/android/internal/telephony/GsmCdmaCall;

    .line 119
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/GsmCdmaConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;)V

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mRejectCauseToRIL:I

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mIsIncomingCallGwsd:Z

    .line 120
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/GsmCdmaCallTracker;I)V
    .registers 7
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;
    .param p2, "dc"    # Lcom/android/internal/telephony/DriverCall;
    .param p3, "ct"    # Lcom/android/internal/telephony/GsmCdmaCallTracker;
    .param p4, "index"    # I

    .line 107
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/GsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/GsmCdmaCallTracker;I)V

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mRejectCauseToRIL:I

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mIsIncomingCallGwsd:Z

    .line 109
    move-object v1, p3

    check-cast v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHelper:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->isGwsdCall()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 110
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mIsIncomingCallGwsd:Z

    .line 111
    move-object v1, p3

    check-cast v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHelper:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->setGwsdCall(Z)V

    .line 113
    :cond_1f
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)V
    .registers 7
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;
    .param p2, "dialString"    # Ljava/lang/String;
    .param p3, "ct"    # Lcom/android/internal/telephony/GsmCdmaCallTracker;
    .param p4, "parent"    # Lcom/android/internal/telephony/GsmCdmaCall;
    .param p5, "dialArgs"    # Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

    .line 96
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/GsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)V

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mRejectCauseToRIL:I

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mIsIncomingCallGwsd:Z

    .line 99
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mIsRealConnected:Z

    .line 100
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mReceivedAccepted:Z

    .line 102
    return-void
.end method

.method static equalsBaseDialString(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .line 169
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_7

    if-nez p1, :cond_10

    :goto_6
    goto :goto_11

    :cond_7
    if-eqz p1, :cond_10

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_6

    :cond_10
    move v0, v1

    :goto_11
    return v0
.end method

.method protected static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 146
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    goto :goto_c

    :cond_6
    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_c
    return v0
.end method

.method private isInChina()Z
    .registers 8

    .line 376
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 377
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 378
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, "numeric":Ljava/lang/String;
    const-string v3, ""

    .line 380
    .local v3, "countryIso":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 381
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getLocatedPlmn(I)Ljava/lang/String;

    move-result-object v2

    .line 383
    :cond_2c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isInChina, numeric="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "GsmCdmaConn"

    invoke-static {v5, v2}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 384
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 385
    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v3

    .line 386
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isInChina, countryIso="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v3}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 388
    :cond_68
    if-eqz v2, :cond_72

    const-string v4, "460"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_7a

    :cond_72
    const-string v4, "cn"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7c

    :cond_7a
    const/4 v4, 0x1

    goto :goto_7d

    :cond_7c
    const/4 v4, 0x0

    :goto_7d
    return v4
.end method

.method private vibrateForAccepted()V
    .registers 5

    .line 392
    const-string v0, "persist.vendor.radio.telecom.vibrate"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, "prop":Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 394
    const-string v1, "vibrateForAccepted, disabled by Engineer Mode"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 395
    return-void

    .line 399
    :cond_16
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 400
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 402
    .local v1, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 403
    return-void
.end method


# virtual methods
.method public clearRejectWithCause()V
    .registers 4

    .line 508
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mRejectCauseToRIL:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_24

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearRejectWithCause ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mRejectCauseToRIL:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to -1)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GsmCdmaConn"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iput v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mRejectCauseToRIL:I

    .line 512
    :cond_24
    return-void
.end method

.method public compareTo(Lcom/android/internal/telephony/DriverCall;)Z
    .registers 6
    .param p1, "c"    # Lcom/android/internal/telephony/DriverCall;

    .line 129
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mIsIncoming:Z

    const/4 v1, 0x1

    if-nez v0, :cond_a

    iget-boolean v0, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-nez v0, :cond_a

    return v1

    .line 134
    :cond_a
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_15

    return v1

    .line 139
    :cond_15
    iget-object v0, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v2, p1, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v0, v2}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "cAddress":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mIsIncoming:Z

    iget-boolean v3, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-ne v2, v3, :cond_32

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mAddress:Ljava/lang/String;

    .line 142
    invoke-static {v2, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->isIncomingCallGwsd()Z

    move-result v2

    if-eqz v2, :cond_32

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    .line 141
    :cond_33
    :goto_33
    return v1
.end method

.method public consultativeTransfer(Lcom/android/internal/telephony/Connection;)V
    .registers 5
    .param p1, "other"    # Lcom/android/internal/telephony/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 523
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v0

    .line 524
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1a

    .line 525
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 526
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->explicitCallTransfer()V

    .line 534
    return-void

    .line 528
    :cond_12
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "cs can transfer check fail"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 532
    :cond_1a
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "cs ect fail (phone null)"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getRedirectingAddress()Ljava/lang/String;
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mRedirectingAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getRejectWithCause()I
    .registers 2

    .line 504
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mRejectCauseToRIL:I

    return v0
.end method

.method public declared-synchronized isIncomingCallGwsd()Z
    .registers 4

    monitor-enter p0

    .line 89
    :try_start_1
    const-string v0, "GsmCdmaConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isIncomingCallGwsd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mIsIncomingCallGwsd:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mIsIncomingCallGwsd:Z
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return v0

    .line 88
    .end local p0    # "this":Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isMultiparty()Z
    .registers 2

    .line 479
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    if-eqz v0, :cond_b

    .line 480
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->isMultiparty()Z

    move-result v0

    return v0

    .line 484
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public isRealConnected()Z
    .registers 2

    .line 356
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mIsRealConnected:Z

    return v0
.end method

.method onCdmaCallAccepted()Z
    .registers 4

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCdmaCallAccepted, mIsRealConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mIsRealConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2f

    .line 363
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mReceivedAccepted:Z

    .line 364
    const/4 v0, 0x0

    return v0

    .line 366
    :cond_2f
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mIsRealConnected:Z

    if-nez v0, :cond_3b

    .line 367
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mIsRealConnected:Z

    .line 369
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->processNextPostDialChar()V

    .line 370
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->vibrateForAccepted()V

    .line 372
    :cond_3b
    return v2
.end method

.method public onConnectedInOrOut()V
    .registers 5

    .line 408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mConnectTime:J

    .line 409
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mConnectTimeReal:J

    .line 410
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mDuration:J

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectedInOrOut: connectTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mConnectTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 418
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mIsIncoming:Z

    if-nez v0, :cond_8a

    .line 421
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 422
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->processNextPostDialChar()V

    goto :goto_8d

    .line 425
    :cond_34
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 426
    .local v0, "count":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mParent.mConnections.size()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 427
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_58
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Connection;

    .line 428
    .local v2, "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v3

    if-nez v3, :cond_6c

    .line 429
    add-int/lit8 v0, v0, -0x1

    .line 431
    .end local v2    # "c":Lcom/android/internal/telephony/Connection;
    :cond_6c
    goto :goto_58

    .line 432
    :cond_6d
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->isInChina()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_82

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mIsRealConnected:Z

    if-nez v1, :cond_82

    if-ne v0, v2, :cond_82

    .line 433
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mIsRealConnected:Z

    .line 434
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->processNextPostDialChar()V

    .line 435
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->vibrateForAccepted()V

    .line 437
    :cond_82
    if-le v0, v2, :cond_89

    .line 438
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mIsRealConnected:Z

    .line 439
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->processNextPostDialChar()V

    .line 441
    .end local v0    # "count":I
    :cond_89
    goto :goto_8d

    .line 446
    :cond_8a
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->releaseWakeLock()V

    .line 448
    :goto_8d
    return-void
.end method

.method public onHangupLocal()V
    .registers 1

    .line 515
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->clearRejectWithCause()V

    .line 516
    invoke-super {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->onHangupLocal()V

    .line 517
    return-void
.end method

.method protected processNextPostDialChar()V
    .registers 6

    .line 289
    const/4 v0, 0x0

    .line 292
    .local v0, "c":C
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v1, v2, :cond_8

    .line 293
    return-void

    .line 296
    :cond_8
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mPostDialString:Ljava/lang/String;

    if-eqz v1, :cond_59

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mPostDialString:Ljava/lang/String;

    .line 297
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mNextPostDialChar:I

    if-le v1, v2, :cond_59

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mDisconnected:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c

    goto :goto_59

    .line 310
    :cond_1c
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 312
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mPostDialString:Ljava/lang/String;

    iget v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mNextPostDialChar:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mNextPostDialChar:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 314
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->processPostDialChar(C)Z

    move-result v1

    .line 316
    .local v1, "isValid":Z
    if-nez v1, :cond_5f

    .line 318
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processNextPostDialChar: c="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, " isn\'t valid!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GsmCdmaConnection"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return-void

    .line 303
    .end local v1    # "isValid":Z
    :cond_59
    :goto_59
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 306
    const/4 v0, 0x0

    .line 325
    :cond_5f
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->notifyPostDialListenersNextChar(C)V

    .line 328
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPostDialHandler()Lcom/android/internal/telephony/Registrant;

    move-result-object v1

    .line 332
    .local v1, "postDialHandler":Lcom/android/internal/telephony/Registrant;
    if-eqz v1, :cond_84

    .line 333
    invoke-virtual {v1}, Lcom/android/internal/telephony/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v2

    move-object v3, v2

    .local v3, "notifyMessage":Landroid/os/Message;
    if-eqz v2, :cond_84

    .line 335
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 336
    .local v2, "state":Lcom/android/internal/telephony/Connection$PostDialState;
    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    .line 337
    .local v4, "ar":Landroid/os/AsyncResult;
    iput-object p0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 338
    iput-object v2, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .line 341
    iput v0, v3, Landroid/os/Message;->arg1:I

    .line 345
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 347
    .end local v2    # "state":Lcom/android/internal/telephony/Connection$PostDialState;
    .end local v3    # "notifyMessage":Landroid/os/Message;
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :cond_84
    return-void
.end method

.method resumeHoldAfterDialFailed()V
    .registers 3

    .line 458
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    if-eqz v0, :cond_9

    .line 459
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaCall;->detach(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    .line 462
    :cond_9
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 463
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/GsmCdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 464
    return-void
.end method

.method public setRedirectingAddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "address"    # Ljava/lang/String;

    .line 165
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mRedirectingAddress:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setRejectWithCause(I)V
    .registers 7
    .param p1, "telephonyDisconnectCode"    # I

    .line 489
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    const-string v1, ")"

    const-string v2, "GsmCdmaConn"

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    if-eqz v0, :cond_44

    .line 490
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v0

    .line 491
    .local v0, "phone":Lcom/android/internal/telephony/GsmCdmaPhone;
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 492
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v4

    .line 491
    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;->isMtkEnhancedCallBlockingEnabled(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 493
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRejectWithCause set ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mRejectCauseToRIL:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iput p1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mRejectCauseToRIL:I

    .line 497
    .end local v0    # "phone":Lcom/android/internal/telephony/GsmCdmaPhone;
    :cond_43
    goto :goto_67

    .line 498
    :cond_44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRejectWithCause fail. mParent("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "), mOwner("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :goto_67
    return-void
.end method

.method public update(Lcom/android/internal/telephony/DriverCall;)Z
    .registers 12
    .param p1, "dc"    # Lcom/android/internal/telephony/DriverCall;

    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, "changed":Z
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->isConnectingInOrOut()Z

    move-result v1

    .line 178
    .local v1, "wasConnectingInOrOut":Z
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_11

    move v2, v4

    goto :goto_12

    :cond_11
    move v2, v5

    .line 180
    .local v2, "wasHolding":Z
    :goto_12
    iget-object v3, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v3

    .line 182
    .local v3, "newParent":Lcom/android/internal/telephony/GsmCdmaCall;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parent= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", newParent= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->isPhoneTypeGsm()Z

    move-result v6

    if-eqz v6, :cond_46

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v6, :cond_46

    .line 186
    const-string v6, "update: mOrigConnection is not null"

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->log(Ljava/lang/String;)V

    goto :goto_69

    .line 187
    :cond_46
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->isIncoming()Z

    move-result v6

    if-eqz v6, :cond_69

    .line 188
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mAddress:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->equalsBaseDialString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_69

    iget-boolean v6, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mNumberConverted:Z

    if-eqz v6, :cond_64

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mConvertedNumber:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 189
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->equalsBaseDialString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_69

    .line 190
    :cond_64
    iget-object v6, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v6, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mAddress:Ljava/lang/String;

    .line 191
    const/4 v0, 0x1

    .line 195
    :cond_69
    :goto_69
    iget v6, p1, Lcom/android/internal/telephony/DriverCall;->audioQuality:I

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->getAudioQualityFromDC(I)I

    move-result v6

    .line 196
    .local v6, "newAudioQuality":I
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->getAudioQuality()I

    move-result v7

    if-eq v7, v6, :cond_95

    .line 198
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update: audioQuality # changed!:  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const/4 v8, 0x2

    if-ne v6, v8, :cond_85

    .line 200
    const-string v8, "high"

    goto :goto_87

    :cond_85
    const-string v8, "standard"

    :goto_87
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 198
    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->setAudioQuality(I)V

    .line 203
    const/4 v0, 0x1

    .line 207
    :cond_95
    iget v7, p1, Lcom/android/internal/telephony/DriverCall;->audioQuality:I

    iget v8, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mAudioCodec:I

    if-eq v7, v8, :cond_bf

    .line 208
    iget v7, p1, Lcom/android/internal/telephony/DriverCall;->audioQuality:I

    iput v7, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mAudioCodec:I

    .line 209
    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v8

    iget v9, p1, Lcom/android/internal/telephony/DriverCall;->audioQuality:I

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeAudioCodecGsmCdma(II)V

    .line 210
    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->getVoiceCallSessionStats()Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;

    move-result-object v7

    iget v8, p1, Lcom/android/internal/telephony/DriverCall;->audioQuality:I

    invoke-virtual {v7, p0, v8}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->onAudioCodecChanged(Lcom/android/internal/telephony/Connection;I)V

    .line 213
    :cond_bf
    new-instance v7, Ljava/util/ArrayList;

    new-array v8, v4, [Ljava/lang/String;

    iget-object v9, p1, Lcom/android/internal/telephony/DriverCall;->forwardedNumber:Ljava/lang/String;

    aput-object v9, v8, v5

    .line 214
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 215
    .local v7, "forwardedNumber":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mForwardedNumber:Ljava/util/ArrayList;

    invoke-static {v8, v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_de

    .line 216
    const-string v8, "update: mForwardedNumber, # changed!"

    invoke-virtual {p0, v8}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 217
    iput-object v7, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mForwardedNumber:Ljava/util/ArrayList;

    .line 218
    const/4 v0, 0x1

    .line 222
    :cond_de
    iget-object v8, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_e7

    goto :goto_f6

    .line 231
    :cond_e7
    iget-object v8, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iget-object v9, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mCnapName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f6

    .line 232
    const/4 v0, 0x1

    .line 233
    iget-object v8, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iput-object v8, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mCnapName:Ljava/lang/String;

    .line 236
    :cond_f6
    :goto_f6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "--dssds----"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mCnapName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 237
    iget v8, p1, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    iput v8, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mCnapNamePresentation:I

    .line 238
    iget v8, p1, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    iput v8, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mNumberPresentation:I

    .line 240
    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    if-eq v3, v8, :cond_128

    .line 241
    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    if-eqz v8, :cond_121

    .line 242
    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v8, p0}, Lcom/android/internal/telephony/GsmCdmaCall;->detach(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    .line 244
    :cond_121
    invoke-virtual {v3, p0, p1}, Lcom/android/internal/telephony/GsmCdmaCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V

    .line 245
    iput-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 246
    const/4 v0, 0x1

    goto :goto_137

    .line 249
    :cond_128
    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v8, p0, p1}, Lcom/android/internal/telephony/GsmCdmaCall;->update(Lcom/android/internal/telephony/GsmCdmaConnection;Lcom/android/internal/telephony/DriverCall;)Z

    move-result v8

    .line 250
    .local v8, "parentStateChange":Z
    if-nez v0, :cond_135

    if-eqz v8, :cond_133

    goto :goto_135

    :cond_133
    move v9, v5

    goto :goto_136

    :cond_135
    :goto_135
    move v9, v4

    :goto_136
    move v0, v9

    .line 255
    .end local v8    # "parentStateChange":Z
    :goto_137
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update: parent="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", hasNewParent="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    if-eq v3, v9, :cond_150

    goto :goto_151

    :cond_150
    move v4, v5

    :goto_151
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", wasConnectingInOrOut="

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", wasHolding="

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isConnectingInOrOut="

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->isConnectingInOrOut()Z

    move-result v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", changed="

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 255
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 264
    if-eqz v1, :cond_18a

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->isConnectingInOrOut()Z

    move-result v4

    if-nez v4, :cond_18a

    .line 265
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->onConnectedInOrOut()V

    .line 268
    :cond_18a
    if-eqz v0, :cond_199

    if-nez v2, :cond_199

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v8, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v8, :cond_199

    .line 270
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->onStartedHolding()V

    .line 274
    :cond_199
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->isPhoneTypeGsm()Z

    move-result v4

    if-nez v4, :cond_1d2

    .line 275
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "state="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", mReceivedAccepted="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mReceivedAccepted:Z

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v8, :cond_1d2

    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mReceivedAccepted:Z

    if-eqz v4, :cond_1d2

    .line 277
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->onCdmaCallAccepted()Z

    .line 278
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mReceivedAccepted:Z

    .line 283
    :cond_1d2
    return v0
.end method

.method updateConferenceParticipantAddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "address"    # Ljava/lang/String;

    .line 469
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->mAddress:Ljava/lang/String;

    .line 470
    return-void
.end method

.class public Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;
.super Lcom/android/internal/telephony/GsmCdmaCallTracker;
.source "MtkGsmCdmaCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;,
        Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;
    }
.end annotation


# static fields
.field protected static final EVENT_CALL_ADDITIONAL_INFO:I = 0x3ee

.field protected static final EVENT_CDMA_CALL_ACCEPTED:I = 0x3ec

.field protected static final EVENT_DIAL_CALL_RESULT:I = 0x3ea

.field protected static final EVENT_ECONF_SRVCC_INDICATION:I = 0x3ed

.field protected static final EVENT_HANG_UP_RESULT:I = 0x3eb

.field protected static final EVENT_INCOMING_CALL_INDICATION:I = 0x3e8

.field protected static final EVENT_MTK_BASE:I = 0x3e8

.field protected static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x3e9

.field private static final IGNORE_DUPLICATE_WAITING_CALL_INTERVAL_MILLISECONDS:I = 0x7d0

.field private static final MIN_CONNECTIONS_IN_CDMA_CONFERENCE:I = 0x2

.field private static final MT_CALL_RQ:I = 0x4

.field private static final PROP_LOG_TAG:Ljava/lang/String; = "GsmCdmaCallTkr"


# instance fields
.field private mEconfSrvccConnectionIds:[I

.field private mHasPendingCheckAndEnableData:Z

.field mHasPendingSwapRequest:Z

.field private mHasPendingUpdatePhoneType:Z

.field public mHelper:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;

.field protected mImsConfHostConnection:Lcom/android/internal/telephony/Connection;

.field private mImsConfParticipants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field public mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

.field protected mNeedWaitImsEConfSrvcc:Z

.field private mPhoneType:I

.field mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;

.field mWaitForHoldToHangupRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;

.field mWaitForHoldToRedialRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;

.field mWaitPollAfterHangupPendingMO:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V
    .registers 5
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 335
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    .line 126
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHasPendingSwapRequest:Z

    .line 127
    new-instance v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;

    invoke-direct {v2, p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;-><init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToRedialRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;

    .line 128
    new-instance v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;

    invoke-direct {v2, p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;-><init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToHangupRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;

    .line 132
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitPollAfterHangupPendingMO:Z

    .line 138
    iput v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhoneType:I

    .line 143
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHasPendingUpdatePhoneType:Z

    .line 147
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHasPendingCheckAndEnableData:Z

    .line 150
    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->getInstance()Lcom/android/internal/telephony/TelephonyDevController;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;

    .line 175
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mNeedWaitImsEConfSrvcc:Z

    .line 180
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mImsConfHostConnection:Lcom/android/internal/telephony/Connection;

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mImsConfParticipants:Ljava/util/ArrayList;

    .line 184
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mEconfSrvccConnectionIds:[I

    .line 337
    new-instance v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCall;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCall;-><init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 339
    new-instance v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCall;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCall;-><init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 340
    new-instance v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCall;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCall;-><init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 342
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    .line 344
    const/16 v2, 0x3e8

    invoke-virtual {v1, p0, v2, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->setOnIncomingCallIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 345
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0x3ee

    invoke-virtual {v1, p0, v2, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForCallAdditionalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 347
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0x3e9

    invoke-virtual {v1, p0, v2, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 350
    new-instance v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;-><init>(Landroid/content/Context;Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHelper:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;

    .line 354
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0x3ed

    invoke-virtual {v1, p0, v2, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForEconfSrvcc(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 355
    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;)Lcom/android/internal/telephony/GsmCdmaConnection;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    .line 91
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;)Lcom/android/internal/telephony/GsmCdmaConnection;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    .line 91
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 91
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->needToConvert(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;)Lcom/android/internal/telephony/GsmCdmaConnection;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    .line 91
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    return-object v0
.end method

.method private disableDataCallInEmergencyCall(Z)V
    .registers 3
    .param p1, "isEmergencyCall"    # Z

    .line 1803
    if-eqz p1, :cond_a

    .line 1804
    const-string v0, "disableDataCallInEmergencyCall"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1805
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->setIsInEmergencyCall()V

    .line 1807
    :cond_a
    return-void
.end method

.method private getCarrierConfig()Landroid/os/PersistableBundle;
    .registers 3

    .line 1624
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1625
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 1626
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    return-object v1
.end method

.method private handleCallAccepted()V
    .registers 5

    .line 2017
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    .line 2018
    .local v0, "connections":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 2019
    .local v1, "count":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCallAccepted, fgcall count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GsmCdmaCallTkr"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3a

    .line 2021
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 2022
    .local v2, "c":Lcom/android/internal/telephony/GsmCdmaConnection;
    instance-of v3, v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    instance-of v3, v3, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    if-eqz v3, :cond_3a

    .line 2024
    move-object v3, v2

    check-cast v3, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->onCdmaCallAccepted()Z

    .line 2027
    .end local v2    # "c":Lcom/android/internal/telephony/GsmCdmaConnection;
    :cond_3a
    return-void
.end method

.method private hasC2kOverImsModem()Z
    .registers 4

    .line 152
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 153
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyDevController;->getModem(I)Lcom/android/internal/telephony/HardwareConfig;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;

    .line 154
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyDevController;->getModem(I)Lcom/android/internal/telephony/HardwareConfig;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkHardwareConfig;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkHardwareConfig;->hasC2kOverImsModem()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1b

    .line 155
    return v2

    .line 157
    :cond_1b
    return v1
.end method

.method private needToConvert(Ljava/lang/String;)Z
    .registers 4
    .param p1, "source"    # Ljava/lang/String;

    .line 2062
    invoke-static {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->formatDialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2063
    .local v0, "target":Ljava/lang/String;
    if-eqz p1, :cond_10

    if-eqz v0, :cond_10

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method private noAnyCallFromModemExist(Landroid/os/AsyncResult;)Z
    .registers 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1611
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_9

    .line 1612
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .local v0, "polledCalls":Ljava/util/List;
    goto :goto_e

    .line 1616
    .end local v0    # "polledCalls":Ljava/util/List;
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1619
    .restart local v0    # "polledCalls":Ljava/util/List;
    :goto_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method private processPlusCodeForDriverCall(Ljava/lang/String;ZI)Ljava/lang/String;
    .registers 6
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "isMt"    # Z
    .param p3, "typeOfAddress"    # I

    .line 2032
    if-eqz p2, :cond_28

    const/16 v0, 0x91

    if-ne p3, v0, :cond_28

    .line 2033
    if-eqz p1, :cond_20

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_20

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_20

    .line 2034
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2036
    :cond_20
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeProcessor;->getPlusCodeUtils()Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;->removeIddNddAddPlusCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2038
    :cond_28
    invoke-static {p1, p3}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 2039
    return-object p1
.end method

.method private processPlusCodeForWaitingCall(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "numberType"    # I

    .line 2051
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeProcessor;->getPlusCodeUtils()Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;->removeIddNddAddPlusCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2052
    .local v0, "format":Ljava/lang/String;
    if-eqz v0, :cond_2e

    .line 2053
    move-object p1, v0

    .line 2054
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2e

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_2e

    .line 2055
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2058
    :cond_2e
    return-object p1
.end method

.method private processPlusCodeForWaitingCall(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V
    .registers 4
    .param p1, "cw"    # Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    .line 2043
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->number:Ljava/lang/String;

    .line 2045
    .local v0, "address":Ljava/lang/String;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_12

    .line 2046
    iget v1, p1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberType:I

    invoke-direct {p0, v0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->processPlusCodeForWaitingCall(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->number:Ljava/lang/String;

    .line 2048
    :cond_12
    return-void
.end method

.method private declared-synchronized restoreConferenceParticipantAddress()Z
    .registers 11

    monitor-enter p0

    .line 2230
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mEconfSrvccConnectionIds:[I

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 2231
    const-string v0, "GsmCdmaCallTkr"

    const-string v2, "SRVCC: restoreConferenceParticipantAddress():ignore because mEconfSrvccConnectionIds is empty"

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_99

    .line 2233
    monitor-exit p0

    return v1

    .line 2236
    .end local p0    # "this":Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;
    :cond_f
    const/4 v2, 0x0

    .line 2239
    .local v2, "finishRestore":Z
    :try_start_10
    aget v0, v0, v1

    .line 2240
    .local v0, "numOfParticipants":I
    const/4 v1, 0x1

    .local v1, "index":I
    :goto_13
    if-gt v1, v0, :cond_97

    .line 2242
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mEconfSrvccConnectionIds:[I

    aget v3, v3, v1

    .line 2243
    .local v3, "participantCallId":I
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    add-int/lit8 v5, v3, -0x1

    aget-object v4, v4, v5

    .line 2245
    .local v4, "participantConnection":Lcom/android/internal/telephony/GsmCdmaConnection;
    if-eqz v4, :cond_93

    .line 2246
    const-string v5, "GsmCdmaCallTkr"

    const-string v6, "SRVCC: found conference connections!"

    invoke-static {v5, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    const/4 v5, 0x0

    .line 2249
    .local v5, "hostConnection":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;
    iget-object v6, v4, Lcom/android/internal/telephony/GsmCdmaConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    instance-of v6, v6, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    if-eqz v6, :cond_7d

    .line 2250
    iget-object v6, v4, Lcom/android/internal/telephony/GsmCdmaConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    check-cast v6, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    move-object v5, v6

    .line 2257
    if-nez v5, :cond_4d

    .line 2258
    const-string v6, "GsmCdmaCallTkr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SRVCC: no host, ignore connection: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2260
    goto :goto_93

    .line 2263
    :cond_4d
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->getConferenceParticipantAddress(I)Ljava/lang/String;

    move-result-object v6

    .line 2264
    .local v6, "address":Ljava/lang/String;
    instance-of v7, v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;

    if-eqz v7, :cond_5d

    .line 2265
    move-object v7, v4

    check-cast v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;

    .line 2266
    invoke-virtual {v7, v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->updateConferenceParticipantAddress(Ljava/lang/String;)V

    .line 2268
    :cond_5d
    const/4 v2, 0x1

    .line 2270
    const-string v7, "GsmCdmaCallTkr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SRVCC: restore Connection="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " with address:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_93

    .line 2252
    .end local v6    # "address":Ljava/lang/String;
    :cond_7d
    const-string v6, "GsmCdmaCallTkr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SRVCC: host is abnormal, ignore connection: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93
    .catchall {:try_start_10 .. :try_end_93} :catchall_99

    .line 2240
    .end local v3    # "participantCallId":I
    .end local v4    # "participantConnection":Lcom/android/internal/telephony/GsmCdmaConnection;
    .end local v5    # "hostConnection":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;
    :cond_93
    :goto_93
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_13

    .line 2275
    .end local v1    # "index":I
    :cond_97
    monitor-exit p0

    return v2

    .line 2229
    .end local v0    # "numOfParticipants":I
    .end local v2    # "finishRestore":Z
    :catchall_99
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private resumeBackgroundAfterDialFailed()V
    .registers 5

    .line 1792
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1794
    .local v0, "connCopy":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "s":I
    :goto_f
    if-ge v1, v2, :cond_1d

    .line 1795
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;

    .line 1797
    .local v3, "conn":Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->resumeHoldAfterDialFailed()V

    .line 1794
    .end local v3    # "conn":Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1799
    .end local v1    # "i":I
    .end local v2    # "s":I
    :cond_1d
    return-void
.end method

.method private shouldNotifyWaitingCall(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)Z
    .registers 13
    .param p1, "cw"    # Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    .line 2069
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->number:Ljava/lang/String;

    .line 2070
    .local v0, "address":Ljava/lang/String;
    const-string v1, "GsmCdmaCallTkr"

    const-string v2, "shouldNotifyWaitingCall"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    const/4 v2, 0x1

    if-eqz v0, :cond_5f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5f

    .line 2072
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 2073
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 2074
    .local v3, "lastRingConn":Lcom/android/internal/telephony/GsmCdmaConnection;
    const/4 v4, 0x0

    const-string v5, "handleCallWaitingInfo, skip duplicate waiting call!"

    if-eqz v3, :cond_38

    .line 2075
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 2076
    invoke-static {v1, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    return v4

    .line 2079
    :cond_2d
    const-string v6, "handleCallWaitingInfo, remove older waiting call!"

    invoke-static {v1, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->onDisconnect(I)Z

    .line 2081
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->clearDisconnected()V

    .line 2085
    :cond_38
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 2086
    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 2087
    .local v6, "lastActiveConn":Lcom/android/internal/telephony/GsmCdmaConnection;
    if-eqz v6, :cond_5f

    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 2088
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaConnection;->getConnectTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x7d0

    cmp-long v7, v7, v9

    if-gez v7, :cond_5f

    .line 2090
    invoke-static {v1, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    return v4

    .line 2094
    .end local v3    # "lastRingConn":Lcom/android/internal/telephony/GsmCdmaConnection;
    .end local v6    # "lastActiveConn":Lcom/android/internal/telephony/GsmCdmaConnection;
    :cond_5f
    return v2
.end method

.method private updatePhoneType(ZZ)V
    .registers 8
    .param p1, "duringInit"    # Z
    .param p2, "duringPollCallsResult"    # Z

    .line 364
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhoneType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 365
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_e

    .line 366
    return-void

    .line 370
    :cond_e
    const/4 v0, 0x1

    if-nez p1, :cond_5b

    .line 375
    const-string v2, "GsmCdmaCallTracker"

    if-nez p2, :cond_38

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v3, v4, :cond_38

    .line 376
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHasPendingUpdatePhoneType:Z

    .line 377
    const-string v3, "[updatePhoneType]mHasPendingUpdatePhoneType = true"

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhoneType:I

    if-ne v2, v1, :cond_30

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 380
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHasPendingCheckAndEnableData:Z

    .line 382
    :cond_30
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    if-nez v0, :cond_37

    .line 383
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->pollCallsWhenSafe()V

    .line 385
    :cond_37
    return-void

    .line 389
    :cond_38
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->reset()V

    .line 395
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->hasC2kOverImsModem()Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 397
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 398
    .local v3, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v3, :cond_58

    if-eqz v3, :cond_52

    .line 399
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getHandoverConnection()Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_52

    goto :goto_58

    .line 402
    :cond_52
    const-string v4, "not trigger pollCall since imsCall exists"

    invoke-static {v2, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 400
    :cond_58
    :goto_58
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->pollCallsWhenSafe()V

    .line 408
    .end local v3    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :cond_5b
    :goto_5b
    invoke-super {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneType(Z)V

    .line 411
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    if-eqz v2, :cond_78

    .line 412
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    if-nez v1, :cond_70

    .line 413
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    .line 415
    :cond_70
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    .line 417
    iput v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhoneType:I

    goto :goto_91

    .line 419
    :cond_78
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    if-nez v0, :cond_82

    .line 420
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    .line 422
    :cond_82
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    .line 423
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0x3ec

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 425
    iput v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhoneType:I

    .line 428
    :goto_91
    return-void
.end method


# virtual methods
.method public checkForDialIssues(Z)V
    .registers 6
    .param p1, "isEmergencyCall"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1630
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkForDialIssues(Z)V

    .line 1632
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHangupPendingMO:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitPollAfterHangupPendingMO:Z

    if-eqz v0, :cond_10

    goto :goto_11

    .line 1641
    :cond_10
    return-void

    .line 1633
    :cond_11
    :goto_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Check pendingMO operations before dial ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1634
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    const-string v2, "t,"

    const-string v3, "f,"

    if-eqz v1, :cond_25

    move-object v1, v2

    goto :goto_26

    :cond_25
    move-object v1, v3

    :goto_26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1635
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHangupPendingMO:Z

    if-eqz v1, :cond_2e

    goto :goto_2f

    :cond_2e
    move-object v2, v3

    :goto_2f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1636
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitPollAfterHangupPendingMO:Z

    if-eqz v1, :cond_39

    const-string v1, "t"

    goto :goto_3b

    :cond_39
    const-string v1, "f"

    :goto_3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1633
    const-string v1, "GsmCdmaCallTracker"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->updateWaitPollAfterAbortPendingMO(Z)V

    .line 1638
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const/4 v1, 0x3

    const-string v2, "A call is already dialing.."

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method protected dialCdma(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;
    .registers 23
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "dialArgs"    # Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1813
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    iget v15, v7, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->clirMode:I

    .line 1814
    .local v15, "clirMode":I
    iget-object v14, v7, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    .line 1815
    .local v14, "intentExtras":Landroid/os/Bundle;
    iget-boolean v13, v7, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->isEmergency:Z

    .line 1817
    .local v13, "isEmergencyCall":Z
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->clearDisconnected()V

    .line 1820
    invoke-virtual {v6, v13}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->checkForDialIssues(Z)V

    .line 1822
    iget-object v0, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1823
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 1824
    .local v12, "tm":Landroid/telephony/TelephonyManager;
    move-object/from16 v11, p1

    .line 1825
    .local v11, "origNumber":Ljava/lang/String;
    iget-object v0, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v10

    .line 1826
    .local v10, "operatorIsoContry":Ljava/lang/String;
    iget-object v0, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v9

    .line 1827
    .local v9, "simIsoContry":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v8, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_4b

    .line 1828
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 1829
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    move v0, v8

    goto :goto_4c

    :cond_4b
    move v0, v5

    .line 1830
    .local v0, "internationalRoaming":Z
    :goto_4c
    if-eqz v0, :cond_7c

    .line 1831
    const-string v1, "us"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "vi"

    if-eqz v2, :cond_67

    .line 1832
    if-eqz v0, :cond_62

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    move v1, v8

    goto :goto_63

    :cond_62
    move v1, v5

    :goto_63
    move v0, v1

    move/from16 v16, v0

    goto :goto_7e

    .line 1833
    :cond_67
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 1834
    if-eqz v0, :cond_77

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_77

    move v1, v8

    goto :goto_78

    :cond_77
    move v1, v5

    :goto_78
    move v0, v1

    move/from16 v16, v0

    goto :goto_7e

    .line 1837
    :cond_7c
    move/from16 v16, v0

    .end local v0    # "internationalRoaming":Z
    .local v16, "internationalRoaming":Z
    :goto_7e
    if-eqz v16, :cond_8a

    .line 1838
    iget-object v0, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    move-object/from16 v1, p1

    invoke-virtual {v6, v0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->convertNumberIfNecessary(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .end local p1    # "dialString":Ljava/lang/String;
    .local v0, "dialString":Ljava/lang/String;
    goto :goto_8d

    .line 1837
    .end local v0    # "dialString":Ljava/lang/String;
    .restart local p1    # "dialString":Ljava/lang/String;
    :cond_8a
    move-object/from16 v1, p1

    move-object v4, v1

    .line 1841
    .end local p1    # "dialString":Ljava/lang/String;
    .local v4, "dialString":Ljava/lang/String;
    :goto_8d
    iget-object v0, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInEcm()Z

    move-result v17

    .line 1844
    .local v17, "isPhoneInEcmMode":Z
    const-string v0, "persist.vendor.operator.optr"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OP20"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    if-eqz v17, :cond_b0

    if-eqz v13, :cond_a8

    goto :goto_b0

    .line 1846
    :cond_a8
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "cannot dial in ECBM"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1851
    :cond_b0
    :goto_b0
    if-eqz v17, :cond_b7

    if-eqz v13, :cond_b7

    .line 1852
    invoke-virtual {v6, v8}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->handleEcmTimer(I)V

    .line 1858
    :cond_b7
    iget-object v0, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_c6

    .line 1859
    invoke-virtual {v6, v4, v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->dialThreeWay(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0

    .line 1862
    :cond_c6
    new-instance v3, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;

    iget-object v1, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v2, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    move-object v0, v3

    move-object/from16 v18, v2

    move-object v2, v4

    move-object v8, v3

    move-object/from16 v3, p0

    move-object v7, v4

    .end local v4    # "dialString":Ljava/lang/String;
    .local v7, "dialString":Ljava/lang/String;
    move-object/from16 v4, v18

    move-object/from16 v18, v12

    move v12, v5

    .end local v12    # "tm":Landroid/telephony/TelephonyManager;
    .local v18, "tm":Landroid/telephony/TelephonyManager;
    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)V

    iput-object v8, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1864
    if-eqz v14, :cond_107

    .line 1865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dialGsm - emergency dialer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.telecom.extra.IS_USER_INTENT_EMERGENCY_CALL"

    invoke-virtual {v14, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GsmCdmaCallTracker"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    iget-object v0, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v14, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->setHasKnownUserIntentEmergency(Z)V

    .line 1870
    :cond_107
    iput-boolean v12, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHangupPendingMO:Z

    .line 1871
    invoke-virtual {v6, v12}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->updateWaitPollAfterAbortPendingMO(Z)V

    .line 1873
    iget-object v0, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c5

    iget-object v0, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1c5

    iget-object v0, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1874
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x4e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_13a

    move-object v5, v9

    move-object/from16 v19, v10

    move-object v1, v11

    move v0, v12

    move v3, v13

    move-object/from16 v2, v18

    move-object/from16 v18, v14

    goto/16 :goto_1cf

    .line 1883
    :cond_13a
    invoke-virtual {v6, v12}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->setMute(Z)V

    .line 1886
    invoke-direct {v6, v13}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->disableDataCallInEmergencyCall(Z)V

    .line 1889
    if-eqz v17, :cond_164

    if-eqz v17, :cond_147

    if-eqz v13, :cond_147

    goto :goto_164

    .line 1908
    :cond_147
    iget-object v0, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->exitEmergencyCallbackMode()V

    .line 1910
    iget-object v0, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/16 v1, 0xe

    invoke-virtual {v0, v6, v1, v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1912
    iput v15, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingCallClirMode:I

    .line 1913
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingCallInEcm:Z

    move-object v5, v9

    move-object/from16 v19, v10

    move-object v1, v11

    move v0, v12

    move v3, v13

    move-object/from16 v2, v18

    move-object/from16 v18, v14

    goto/16 :goto_1d7

    .line 1891
    :cond_164
    :goto_164
    iget-object v0, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1892
    .local v0, "tmpStr":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->hasC2kOverImsModem()Z

    move-result v1

    if-nez v1, :cond_188

    .line 1893
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1896
    :cond_188
    iget-object v8, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->isEmergencyCall()Z

    move-result v1

    iget-object v2, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1897
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getEmergencyNumberInfo()Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v2

    iget-object v3, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1898
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->hasKnownUserIntentEmergency()Z

    move-result v3

    .line 1900
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    .line 1896
    move-object v5, v9

    .end local v9    # "simIsoContry":Ljava/lang/String;
    .local v5, "simIsoContry":Ljava/lang/String;
    move-object v9, v0

    move-object/from16 v19, v10

    .end local v10    # "operatorIsoContry":Ljava/lang/String;
    .local v19, "operatorIsoContry":Ljava/lang/String;
    move v10, v1

    move-object v1, v11

    .end local v11    # "origNumber":Ljava/lang/String;
    .local v1, "origNumber":Ljava/lang/String;
    move-object v11, v2

    move-object/from16 p1, v0

    move v0, v12

    move-object/from16 v2, v18

    .end local v0    # "tmpStr":Ljava/lang/String;
    .end local v18    # "tm":Landroid/telephony/TelephonyManager;
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    .local p1, "tmpStr":Ljava/lang/String;
    move v12, v3

    move v3, v13

    .end local v13    # "isEmergencyCall":Z
    .local v3, "isEmergencyCall":Z
    move v13, v15

    move-object/from16 v18, v14

    .end local v14    # "intentExtras":Landroid/os/Bundle;
    .local v18, "intentExtras":Landroid/os/Bundle;
    move-object v14, v4

    invoke-interface/range {v8 .. v14}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILandroid/os/Message;)V

    .line 1902
    invoke-direct {v6, v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->needToConvert(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c4

    .line 1903
    iget-object v4, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1904
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1903
    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/GsmCdmaConnection;->restoreDialedNumberAfterConversion(Ljava/lang/String;)V

    .line 1907
    .end local p1    # "tmpStr":Ljava/lang/String;
    :cond_1c4
    goto :goto_1d7

    .line 1873
    .end local v1    # "origNumber":Ljava/lang/String;
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    .end local v3    # "isEmergencyCall":Z
    .end local v5    # "simIsoContry":Ljava/lang/String;
    .end local v19    # "operatorIsoContry":Ljava/lang/String;
    .restart local v9    # "simIsoContry":Ljava/lang/String;
    .restart local v10    # "operatorIsoContry":Ljava/lang/String;
    .restart local v11    # "origNumber":Ljava/lang/String;
    .restart local v13    # "isEmergencyCall":Z
    .restart local v14    # "intentExtras":Landroid/os/Bundle;
    .local v18, "tm":Landroid/telephony/TelephonyManager;
    :cond_1c5
    move-object v5, v9

    move-object/from16 v19, v10

    move-object v1, v11

    move v0, v12

    move v3, v13

    move-object/from16 v2, v18

    move-object/from16 v18, v14

    .line 1876
    .end local v9    # "simIsoContry":Ljava/lang/String;
    .end local v10    # "operatorIsoContry":Ljava/lang/String;
    .end local v11    # "origNumber":Ljava/lang/String;
    .end local v13    # "isEmergencyCall":Z
    .end local v14    # "intentExtras":Landroid/os/Bundle;
    .restart local v1    # "origNumber":Ljava/lang/String;
    .restart local v2    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v3    # "isEmergencyCall":Z
    .restart local v5    # "simIsoContry":Ljava/lang/String;
    .local v18, "intentExtras":Landroid/os/Bundle;
    .restart local v19    # "operatorIsoContry":Ljava/lang/String;
    :goto_1cf
    iget-object v4, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    const/4 v8, 0x7

    iput v8, v4, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    .line 1880
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->pollCallsWhenSafe()V

    .line 1917
    :goto_1d7
    iget-boolean v4, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mNumberConverted:Z

    if-eqz v4, :cond_1e2

    .line 1918
    iget-object v4, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->restoreDialedNumberAfterConversion(Ljava/lang/String;)V

    .line 1919
    iput-boolean v0, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mNumberConverted:Z

    .line 1922
    :cond_1e2
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->updatePhoneState()V

    .line 1923
    iget-object v0, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    .line 1925
    iget-object v0, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    return-object v0
.end method

.method public declared-synchronized dialGsm(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;
    .registers 21
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "dialArgs"    # Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    monitor-enter p0

    .line 1649
    :try_start_5
    iget v0, v8, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->clirMode:I

    move v15, v0

    .line 1650
    .local v15, "clirMode":I
    iget-object v0, v8, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    move-object v14, v0

    .line 1651
    .local v14, "uusInfo":Lcom/android/internal/telephony/UUSInfo;
    iget-object v0, v8, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    move-object v13, v0

    .line 1652
    .local v13, "intentExtras":Landroid/os/Bundle;
    iget-boolean v0, v8, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->isEmergency:Z

    move v12, v0

    .line 1655
    .local v12, "isEmergencyCall":Z
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->clearDisconnected()V

    .line 1658
    invoke-virtual {v7, v12}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->checkForDialIssues(Z)V

    .line 1660
    move-object/from16 v11, p1

    .line 1661
    .local v11, "origNumber":Ljava/lang/String;
    iget-object v0, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    move-object/from16 v1, p1

    invoke-virtual {v7, v0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->convertNumberIfNecessary(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1666
    .end local p1    # "dialString":Ljava/lang/String;
    .local v3, "dialString":Ljava/lang/String;
    iget-object v0, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_3d

    .line 1673
    iget-object v0, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToRedialRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->setToRedial()V

    .line 1676
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_163

    .line 1681
    const-wide/16 v0, 0xfa

    :try_start_35
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_35 .. :try_end_38} :catch_39
    .catchall {:try_start_35 .. :try_end_38} :catchall_163

    .line 1684
    goto :goto_3a

    .line 1682
    .end local p0    # "this":Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;
    :catch_39
    move-exception v0

    .line 1690
    :goto_3a
    :try_start_3a
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->fakeHoldForegroundBeforeDial()V

    .line 1693
    :cond_3d
    iget-object v0, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_155

    .line 1699
    new-instance v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;

    iget-object v2, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v5, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    move-object v1, v0

    move-object/from16 v4, p0

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)V

    iput-object v0, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1701
    if-eqz v13, :cond_80

    .line 1702
    const-string v0, "GsmCdmaCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialGsm - emergency dialer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "android.telecom.extra.IS_USER_INTENT_EMERGENCY_CALL"

    invoke-virtual {v13, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    iget-object v0, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    const-string v1, "android.telecom.extra.IS_USER_INTENT_EMERGENCY_CALL"

    invoke-virtual {v13, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->setHasKnownUserIntentEmergency(Z)V

    .line 1707
    :cond_80
    const/4 v0, 0x0

    iput-boolean v0, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHangupPendingMO:Z

    .line 1708
    invoke-virtual {v7, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->updateWaitPollAfterAbortPendingMO(Z)V

    .line 1709
    iget-object v1, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v2, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    iget-object v4, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v1, v2, v4, v15, v14}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilDial(ILcom/android/internal/telephony/GsmCdmaConnection;ILcom/android/internal/telephony/UUSInfo;)V

    .line 1711
    iget-object v1, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12b

    iget-object v1, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_12b

    iget-object v1, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1712
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4e

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_bd

    move-object v6, v11

    move v2, v12

    move-object v4, v13

    move-object v5, v14

    move/from16 v17, v15

    goto/16 :goto_131

    .line 1725
    :cond_bd
    invoke-virtual {v7, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->setMute(Z)V

    .line 1728
    iget-object v1, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToRedialRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;

    monitor-enter v1
    :try_end_c3
    .catchall {:try_start_3a .. :try_end_c3} :catchall_163

    .line 1729
    :try_start_c3
    iget-object v2, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToRedialRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->isWaitToRedial()Z

    move-result v2

    if-nez v2, :cond_f8

    .line 1730
    iget-object v9, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v10

    iget-object v2, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->isEmergencyCall()Z

    move-result v2

    iget-object v4, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1731
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->getEmergencyNumberInfo()Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v4

    iget-object v5, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1732
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaConnection;->hasKnownUserIntentEmergency()Z

    move-result v5

    .line 1734
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v16
    :try_end_e9
    .catchall {:try_start_c3 .. :try_end_e9} :catchall_120

    .line 1730
    move-object v6, v11

    .end local v11    # "origNumber":Ljava/lang/String;
    .local v6, "origNumber":Ljava/lang/String;
    move v11, v2

    move v2, v12

    .end local v12    # "isEmergencyCall":Z
    .local v2, "isEmergencyCall":Z
    move-object v12, v4

    move-object v4, v13

    .end local v13    # "intentExtras":Landroid/os/Bundle;
    .local v4, "intentExtras":Landroid/os/Bundle;
    move v13, v5

    move-object v5, v14

    .end local v14    # "uusInfo":Lcom/android/internal/telephony/UUSInfo;
    .local v5, "uusInfo":Lcom/android/internal/telephony/UUSInfo;
    move v14, v15

    move/from16 v17, v15

    .end local v15    # "clirMode":I
    .local v17, "clirMode":I
    move-object v15, v5

    :try_start_f4
    invoke-interface/range {v9 .. v16}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_11e

    .line 1736
    .end local v2    # "isEmergencyCall":Z
    .end local v4    # "intentExtras":Landroid/os/Bundle;
    .end local v5    # "uusInfo":Lcom/android/internal/telephony/UUSInfo;
    .end local v6    # "origNumber":Ljava/lang/String;
    .end local v17    # "clirMode":I
    .restart local v11    # "origNumber":Ljava/lang/String;
    .restart local v12    # "isEmergencyCall":Z
    .restart local v13    # "intentExtras":Landroid/os/Bundle;
    .restart local v14    # "uusInfo":Lcom/android/internal/telephony/UUSInfo;
    .restart local v15    # "clirMode":I
    :cond_f8
    move-object v6, v11

    move v2, v12

    move-object v4, v13

    move-object v5, v14

    move/from16 v17, v15

    .end local v11    # "origNumber":Ljava/lang/String;
    .end local v12    # "isEmergencyCall":Z
    .end local v13    # "intentExtras":Landroid/os/Bundle;
    .end local v14    # "uusInfo":Lcom/android/internal/telephony/UUSInfo;
    .end local v15    # "clirMode":I
    .restart local v2    # "isEmergencyCall":Z
    .restart local v4    # "intentExtras":Landroid/os/Bundle;
    .restart local v5    # "uusInfo":Lcom/android/internal/telephony/UUSInfo;
    .restart local v6    # "origNumber":Ljava/lang/String;
    .restart local v17    # "clirMode":I
    iget-object v9, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToRedialRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;

    iget-object v10, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1737
    invoke-virtual {v10}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1738
    invoke-virtual {v11}, Lcom/android/internal/telephony/GsmCdmaConnection;->isEmergencyCall()Z

    move-result v11

    iget-object v12, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1739
    invoke-virtual {v12}, Lcom/android/internal/telephony/GsmCdmaConnection;->getEmergencyNumberInfo()Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v12

    iget-object v13, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1740
    invoke-virtual {v13}, Lcom/android/internal/telephony/GsmCdmaConnection;->hasKnownUserIntentEmergency()Z

    move-result v13

    .line 1736
    move/from16 v14, v17

    move-object v15, v5

    invoke-virtual/range {v9 .. v15}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->setToRedial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;)V

    .line 1743
    :goto_11e
    monitor-exit v1

    goto :goto_13e

    .end local v2    # "isEmergencyCall":Z
    .end local v4    # "intentExtras":Landroid/os/Bundle;
    .end local v5    # "uusInfo":Lcom/android/internal/telephony/UUSInfo;
    .end local v6    # "origNumber":Ljava/lang/String;
    .end local v17    # "clirMode":I
    .restart local v11    # "origNumber":Ljava/lang/String;
    .restart local v12    # "isEmergencyCall":Z
    .restart local v13    # "intentExtras":Landroid/os/Bundle;
    .restart local v14    # "uusInfo":Lcom/android/internal/telephony/UUSInfo;
    .restart local v15    # "clirMode":I
    :catchall_120
    move-exception v0

    move-object v6, v11

    move v2, v12

    move-object v4, v13

    move-object v5, v14

    move/from16 v17, v15

    .end local v11    # "origNumber":Ljava/lang/String;
    .end local v12    # "isEmergencyCall":Z
    .end local v13    # "intentExtras":Landroid/os/Bundle;
    .end local v14    # "uusInfo":Lcom/android/internal/telephony/UUSInfo;
    .end local v15    # "clirMode":I
    .restart local v2    # "isEmergencyCall":Z
    .restart local v4    # "intentExtras":Landroid/os/Bundle;
    .restart local v5    # "uusInfo":Lcom/android/internal/telephony/UUSInfo;
    .restart local v6    # "origNumber":Ljava/lang/String;
    .restart local v17    # "clirMode":I
    :goto_127
    monitor-exit v1
    :try_end_128
    .catchall {:try_start_f4 .. :try_end_128} :catchall_129

    :try_start_128
    throw v0

    :catchall_129
    move-exception v0

    goto :goto_127

    .line 1711
    .end local v2    # "isEmergencyCall":Z
    .end local v4    # "intentExtras":Landroid/os/Bundle;
    .end local v5    # "uusInfo":Lcom/android/internal/telephony/UUSInfo;
    .end local v6    # "origNumber":Ljava/lang/String;
    .end local v17    # "clirMode":I
    .restart local v11    # "origNumber":Ljava/lang/String;
    .restart local v12    # "isEmergencyCall":Z
    .restart local v13    # "intentExtras":Landroid/os/Bundle;
    .restart local v14    # "uusInfo":Lcom/android/internal/telephony/UUSInfo;
    .restart local v15    # "clirMode":I
    :cond_12b
    move-object v6, v11

    move v2, v12

    move-object v4, v13

    move-object v5, v14

    move/from16 v17, v15

    .line 1714
    .end local v11    # "origNumber":Ljava/lang/String;
    .end local v12    # "isEmergencyCall":Z
    .end local v13    # "intentExtras":Landroid/os/Bundle;
    .end local v14    # "uusInfo":Lcom/android/internal/telephony/UUSInfo;
    .end local v15    # "clirMode":I
    .restart local v2    # "isEmergencyCall":Z
    .restart local v4    # "intentExtras":Landroid/os/Bundle;
    .restart local v5    # "uusInfo":Lcom/android/internal/telephony/UUSInfo;
    .restart local v6    # "origNumber":Ljava/lang/String;
    .restart local v17    # "clirMode":I
    :goto_131
    iget-object v1, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    const/4 v9, 0x7

    iput v9, v1, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    .line 1717
    iget-object v1, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToRedialRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->resetToRedial()V

    .line 1722
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->pollCallsWhenSafe()V

    .line 1747
    :goto_13e
    iget-boolean v1, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mNumberConverted:Z

    if-eqz v1, :cond_149

    .line 1748
    iget-object v1, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/GsmCdmaConnection;->restoreDialedNumberAfterConversion(Ljava/lang/String;)V

    .line 1749
    iput-boolean v0, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mNumberConverted:Z

    .line 1752
    :cond_149
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->updatePhoneState()V

    .line 1753
    iget-object v0, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    .line 1755
    iget-object v0, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;
    :try_end_153
    .catchall {:try_start_128 .. :try_end_153} :catchall_163

    monitor-exit p0

    return-object v0

    .line 1695
    .end local v2    # "isEmergencyCall":Z
    .end local v4    # "intentExtras":Landroid/os/Bundle;
    .end local v5    # "uusInfo":Lcom/android/internal/telephony/UUSInfo;
    .end local v6    # "origNumber":Ljava/lang/String;
    .end local v17    # "clirMode":I
    .restart local v11    # "origNumber":Ljava/lang/String;
    .restart local v12    # "isEmergencyCall":Z
    .restart local v13    # "intentExtras":Landroid/os/Bundle;
    .restart local v14    # "uusInfo":Lcom/android/internal/telephony/UUSInfo;
    .restart local v15    # "clirMode":I
    :cond_155
    move-object v6, v11

    move v2, v12

    move-object v4, v13

    move-object v5, v14

    move/from16 v17, v15

    .end local v11    # "origNumber":Ljava/lang/String;
    .end local v12    # "isEmergencyCall":Z
    .end local v13    # "intentExtras":Landroid/os/Bundle;
    .end local v14    # "uusInfo":Lcom/android/internal/telephony/UUSInfo;
    .end local v15    # "clirMode":I
    .restart local v2    # "isEmergencyCall":Z
    .restart local v4    # "intentExtras":Landroid/os/Bundle;
    .restart local v5    # "uusInfo":Lcom/android/internal/telephony/UUSInfo;
    .restart local v6    # "origNumber":Ljava/lang/String;
    .restart local v17    # "clirMode":I
    :try_start_15b
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "cannot dial in current state"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_163
    .catchall {:try_start_15b .. :try_end_163} :catchall_163

    .line 1648
    .end local v2    # "isEmergencyCall":Z
    .end local v3    # "dialString":Ljava/lang/String;
    .end local v4    # "intentExtras":Landroid/os/Bundle;
    .end local v5    # "uusInfo":Lcom/android/internal/telephony/UUSInfo;
    .end local v6    # "origNumber":Ljava/lang/String;
    .end local v17    # "clirMode":I
    .end local p2    # "dialArgs":Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
    :catchall_163
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected dialThreeWay(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;
    .registers 11
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "dialArgs"    # Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

    .line 1930
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    .line 1932
    .local v0, "intentExtras":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->isIdle()Z

    move-result v1

    if-nez v1, :cond_b7

    .line 1934
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->disableDataCallInEmergencyCall(Ljava/lang/String;)V

    .line 1937
    new-instance v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    move-object v2, v1

    move-object v4, p1

    move-object v5, p0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1940
    if-eqz v0, :cond_43

    .line 1941
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialThreeWay - emergency dialer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "android.telecom.extra.IS_USER_INTENT_EMERGENCY_CALL"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GsmCdmaCallTracker"

    invoke-static {v3, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->setHasKnownUserIntentEmergency(Z)V

    .line 1947
    :cond_43
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1948
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "carrier_config"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 1949
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 1950
    .local v2, "bundle":Landroid/os/PersistableBundle;
    if-eqz v2, :cond_67

    .line 1951
    nop

    .line 1952
    const-string v3, "cdma_3waycall_flash_delay_int"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->m3WayCallFlashDelay:I

    goto :goto_6a

    .line 1955
    :cond_67
    const/4 v3, 0x0

    iput v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->m3WayCallFlashDelay:I

    .line 1957
    :goto_6a
    iget v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->m3WayCallFlashDelay:I

    if-lez v3, :cond_7c

    .line 1959
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x14

    invoke-virtual {p0, v4, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v3, v5, v4}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_b4

    .line 1964
    :cond_7c
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 1965
    .local v3, "tmpStr":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1967
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x10

    .line 1968
    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 1967
    invoke-interface {v4, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    .line 1970
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->needToConvert(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b4

    .line 1971
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1972
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1971
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/GsmCdmaConnection;->restoreDialedNumberAfterConversion(Ljava/lang/String;)V

    .line 1976
    .end local v3    # "tmpStr":Ljava/lang/String;
    :cond_b4
    :goto_b4
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    return-object v3

    .line 1978
    .end local v1    # "configManager":Landroid/telephony/CarrierConfigManager;
    .end local v2    # "bundle":Landroid/os/PersistableBundle;
    :cond_b7
    const/4 v1, 0x0

    return-object v1
.end method

.method protected dumpState()V
    .registers 6

    .line 1067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Phone State:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GsmCdmaCallTracker"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ringing call: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaCall;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    .line 1072
    .local v0, "l":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "s":I
    :goto_3d
    if-ge v2, v3, :cond_4d

    .line 1073
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 1076
    .end local v2    # "i":I
    .end local v3    # "s":I
    :cond_4d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Foreground call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaCall;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    .line 1079
    const/4 v2, 0x0

    .restart local v2    # "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .restart local v3    # "s":I
    :goto_72
    if-ge v2, v3, :cond_82

    .line 1080
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    add-int/lit8 v2, v2, 0x1

    goto :goto_72

    .line 1083
    .end local v2    # "i":I
    .end local v3    # "s":I
    :cond_82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Background call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaCall;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    .line 1086
    const/4 v2, 0x0

    .restart local v2    # "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .restart local v3    # "s":I
    :goto_a7
    if-ge v2, v3, :cond_b7

    .line 1087
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    add-int/lit8 v2, v2, 0x1

    goto :goto_a7

    .line 1091
    .end local v2    # "i":I
    .end local v3    # "s":I
    :cond_b7
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 1092
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHelper:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->LogState()V

    .line 1095
    :cond_c2
    return-void
.end method

.method public getHandoverConnectionSize()I
    .registers 2

    .line 2301
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected getHoConnection(Lcom/android/internal/telephony/DriverCall;)Lcom/android/internal/telephony/Connection;
    .registers 8
    .param p1, "dc"    # Lcom/android/internal/telephony/DriverCall;

    .line 2174
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 2175
    return-object v0

    .line 2182
    :cond_4
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mEconfSrvccConnectionIds:[I

    if-eqz v1, :cond_5b

    if-eqz p1, :cond_5b

    .line 2183
    const/4 v2, 0x0

    aget v1, v1, v2

    .line 2184
    .local v1, "numOfParticipants":I
    const/4 v2, 0x1

    .local v2, "index":I
    :goto_e
    if-gt v2, v1, :cond_5b

    .line 2185
    iget v3, p1, Lcom/android/internal/telephony/DriverCall;->index:I

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mEconfSrvccConnectionIds:[I

    aget v4, v4, v2

    if-ne v3, v4, :cond_58

    .line 2186
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SRVCC: getHoConnection for call-id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/internal/telephony/DriverCall;->index:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " in a conference is found!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GsmCdmaCallTkr"

    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mImsConfHostConnection:Lcom/android/internal/telephony/Connection;

    if-nez v3, :cond_3f

    .line 2189
    const-string v3, "SRVCC: but mImsConfHostConnection is null, try to find by callState"

    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    goto :goto_5b

    .line 2194
    :cond_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SRVCC: ret= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mImsConfHostConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mImsConfHostConnection:Lcom/android/internal/telephony/Connection;

    return-object v0

    .line 2184
    :cond_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 2203
    .end local v1    # "numOfParticipants":I
    .end local v2    # "index":I
    :cond_5b
    :goto_5b
    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    const-string v2, "getHoConnection: Handover connection match found = "

    if-eqz v1, :cond_bd

    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_bd

    .line 2204
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_bd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Connection;

    .line 2205
    .local v3, "hoConn":Lcom/android/internal/telephony/Connection;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHoConnection - compare number: hoConn= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 2206
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_bc

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_bc

    .line 2207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 2208
    return-object v3

    .line 2210
    .end local v3    # "hoConn":Lcom/android/internal/telephony/Connection;
    :cond_bc
    goto :goto_6f

    .line 2212
    :cond_bd
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Connection;

    .line 2213
    .restart local v3    # "hoConn":Lcom/android/internal/telephony/Connection;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHoConnection: compare state hoConn= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 2214
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getStateBeforeHandover()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    iget-object v5, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-static {v5}, Lcom/android/internal/telephony/Call;->stateFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    if-ne v4, v5, :cond_10a

    .line 2215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 2216
    return-object v3

    .line 2218
    .end local v3    # "hoConn":Lcom/android/internal/telephony/Connection;
    :cond_10a
    goto :goto_c3

    .line 2219
    :cond_10b
    return-object v0
.end method

.method public getMaxConnections()I
    .registers 2

    .line 163
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 164
    const/16 v0, 0x13

    goto :goto_d

    .line 165
    :cond_b
    const/16 v0, 0x8

    .line 163
    :goto_d
    return v0
.end method

.method protected handleCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V
    .registers 7
    .param p1, "cw"    # Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    .line 1984
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->processPlusCodeForWaitingCall(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V

    .line 1988
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->shouldNotifyWaitingCall(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1989
    return-void

    .line 1997
    :cond_a
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_3e

    .line 1998
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Connection;

    .line 1999
    .local v2, "c":Lcom/android/internal/telephony/Connection;
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->number:Ljava/lang/String;

    if-eqz v3, :cond_3d

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->number:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 2000
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/Connection;->onDisconnect(I)Z

    .line 2001
    goto :goto_3e

    .line 2003
    .end local v2    # "c":Lcom/android/internal/telephony/Connection;
    :cond_3d
    goto :goto_1d

    .line 2008
    :cond_3e
    :goto_3e
    new-instance v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;)V

    .line 2009
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->updatePhoneState()V

    .line 2012
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->notifyCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V

    .line 2013
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;

    .line 1102
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHelper:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->LogerMessage(I)V

    .line 1105
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_39e

    .line 1399
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_39d

    .line 1111
    :sswitch_14
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHelper:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->handleCallAdditionalInfo(Landroid/os/AsyncResult;)V

    .line 1112
    goto/16 :goto_39d

    .line 1371
    :sswitch_1f
    const-string v0, "Receives EVENT_ECONF_SRVCC_INDICATION"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1372
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->hasParsingCEPCapability()Z

    move-result v0

    if-nez v0, :cond_39d

    .line 1373
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1374
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mEconfSrvccConnectionIds:[I

    .line 1377
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mNeedWaitImsEConfSrvcc:Z

    .line 1378
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->pollCallsWhenSafe()V

    goto/16 :goto_39d

    .line 1362
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_3b
    const-string v0, "GsmCdmaCallTkr"

    const-string v1, "Receives EVENT_CDMA_CALL_ACCEPTED"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1364
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_39d

    .line 1365
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->handleCallAccepted()V

    goto/16 :goto_39d

    .line 1216
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_4f
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->operationComplete()V

    .line 1217
    goto/16 :goto_39d

    .line 1128
    :sswitch_54
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1129
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_63

    .line 1130
    const-string v1, "GsmCdmaCallTkr"

    const-string v2, "dial call failed!!"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    :cond_63
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->operationComplete()V

    .line 1133
    goto/16 :goto_39d

    .line 1116
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_68
    const-string v0, "GsmCdmaCallTkr"

    const-string v1, "Receives EVENT_RADIO_OFF_OR_NOT_AVAILABLE"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingCallInEcm:Z

    if-nez v0, :cond_39d

    .line 1121
    new-instance v0, Landroid/os/AsyncResult;

    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-direct {v0, v2, v2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    .line 1123
    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    goto/16 :goto_39d

    .line 1108
    :sswitch_86
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHelper:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->CallIndicationProcess(Landroid/os/AsyncResult;)V

    .line 1109
    goto/16 :goto_39d

    .line 1320
    :sswitch_91
    const-string v0, "GsmCdmaCallTkr"

    const-string v1, "Receives EVENT_THREE_WAY_DIAL_BLANK_FLASH"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_c6

    .line 1322
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1323
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_bb

    .line 1325
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1327
    .local v1, "dialString":Ljava/lang/String;
    new-instance v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$1;

    invoke-direct {v2, p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$1;-><init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;Ljava/lang/String;)V

    iget v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->m3WayCallFlashDelay:I

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1349
    .end local v1    # "dialString":Ljava/lang/String;
    goto/16 :goto_39d

    .line 1350
    :cond_bb
    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1351
    const-string v1, "GsmCdmaCallTracker"

    const-string v2, "exception happened on Blank Flash for 3-way call"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_39d

    .line 1354
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_c6
    const-string v0, "GsmCdmaCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not handled by phone type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1355
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1354
    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    goto/16 :goto_39d

    .line 1384
    :sswitch_ee
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_109

    .line 1385
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1386
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_39d

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v1, :cond_39d

    .line 1388
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->onConnectedInOrOut()V

    .line 1389
    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    goto/16 :goto_39d

    .line 1392
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_109
    const-string v0, "GsmCdmaCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not handled by phone type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1393
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1392
    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    goto/16 :goto_39d

    .line 1278
    :sswitch_131
    const-string v0, "GsmCdmaCallTkr"

    const-string v1, "Receives EVENT_EXIT_ECM_RESPONSE_CDMA"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingCallInEcm:Z

    if-eqz v0, :cond_201

    .line 1281
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1283
    .local v0, "dialString":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-nez v1, :cond_163

    .line 1284
    new-instance v1, Lcom/android/internal/telephony/GsmCdmaConnection;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    new-instance v2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    invoke-direct {v2}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;-><init>()V

    .line 1287
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setIsEmergency(Z)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->build()Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

    move-result-object v9

    move-object v4, v1

    move-object v6, v0

    move-object v7, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/GsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1290
    :cond_163
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v1

    if-nez v1, :cond_1b5

    .line 1292
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 1293
    .local v1, "tmpStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1295
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->isEmergencyCall()Z

    move-result v7

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1296
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getEmergencyNumberInfo()Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v8

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1297
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->hasKnownUserIntentEmergency()Z

    move-result v9

    iget v10, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingCallClirMode:I

    .line 1298
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v11

    .line 1295
    move-object v6, v1

    invoke-interface/range {v5 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILandroid/os/Message;)V

    .line 1300
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->needToConvert(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b4

    .line 1301
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1302
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1301
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->restoreDialedNumberAfterConversion(Ljava/lang/String;)V

    .line 1305
    .end local v1    # "tmpStr":Ljava/lang/String;
    :cond_1b4
    goto :goto_1ff

    .line 1306
    :cond_1b5
    const-string v1, "GsmCdmaCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "originally unexpected event "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " not handled by phone type "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1307
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1306
    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->isEmergencyCall()Z

    move-result v6

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1309
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getEmergencyNumberInfo()Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v7

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1310
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->hasKnownUserIntentEmergency()Z

    move-result v8

    iget v9, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingCallClirMode:I

    const/4 v10, 0x0

    .line 1312
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v11

    .line 1308
    invoke-interface/range {v4 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    .line 1314
    :goto_1ff
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingCallInEcm:Z

    .line 1316
    .end local v0    # "dialString":Ljava/lang/String;
    :cond_201
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    .line 1317
    goto/16 :goto_39d

    .line 1136
    :sswitch_208
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_39d

    .line 1137
    const/4 v0, 0x0

    .line 1138
    .local v0, "isResumeDial":Z
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1139
    .local v4, "ar":Landroid/os/AsyncResult;
    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_2b9

    .line 1141
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToRedialRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->isWaitToRedial()Z

    move-result v5

    const/4 v6, 0x3

    if-eqz v5, :cond_244

    .line 1144
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v5, :cond_237

    .line 1145
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    iput v6, v5, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    .line 1146
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/GsmCdmaConnection;->onDisconnect(I)Z

    .line 1147
    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1148
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHangupPendingMO:Z

    .line 1149
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->updateWaitPollAfterAbortPendingMO(Z)V

    .line 1150
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->updatePhoneState()V

    .line 1153
    :cond_237
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->resumeBackgroundAfterDialFailed()V

    .line 1154
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    .line 1155
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToRedialRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->resetToRedial()V

    .line 1160
    :cond_244
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v7, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v7, :cond_296

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 1161
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v7, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v7, :cond_277

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 1162
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v1, :cond_277

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 1163
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v1

    if-ne v1, v6, :cond_277

    goto :goto_296

    .line 1173
    :cond_277
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x8

    if-ne v1, v5, :cond_28a

    .line 1174
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 1175
    .local v1, "connection":Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_28a

    .line 1176
    const-string v5, "android.telecom.event.CALL_SWITCH_FAILED"

    invoke-virtual {v1, v5, v2}, Lcom/android/internal/telephony/Connection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1180
    .end local v1    # "connection":Lcom/android/internal/telephony/Connection;
    :cond_28a
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->getFailedService(I)Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    goto :goto_2e9

    .line 1165
    :cond_296
    :goto_296
    const-string v1, "GsmCdmaCallTkr"

    const-string v2, "Answer the call again, because fg call is disconnected in Modem"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->setMute(Z)V

    .line 1168
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getVoiceCallSessionStats()Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 1169
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->onRilAcceptCall(Ljava/util/List;)V

    .line 1170
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->acceptCall(Landroid/os/Message;)V

    goto :goto_2e9

    .line 1184
    :cond_2b9
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToRedialRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;

    monitor-enter v1

    .line 1185
    :try_start_2bc
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToRedialRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->isWaitToRedial()Z

    move-result v2

    if-eqz v2, :cond_2e8

    .line 1186
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToRedialRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;

    # invokes: Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->resumeDialAfterHold()Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->access$000(Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;)Z

    move-result v2

    move v0, v2

    .line 1187
    const-string v2, "GsmCdmaCallTkr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Switch success, then resume dial. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    if-eqz v0, :cond_2dc

    const-string v6, "(t)"

    goto :goto_2de

    :cond_2dc
    const-string v6, "(f)"

    :goto_2de
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1187
    invoke-static {v2, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    :cond_2e8
    monitor-exit v1
    :try_end_2e9
    .catchall {:try_start_2bc .. :try_end_2e9} :catchall_339

    .line 1193
    :goto_2e9
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToHangupRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->isWaitToHangup()Z

    move-result v1

    if-eqz v1, :cond_333

    .line 1194
    iget-object v1, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_327

    .line 1195
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToHangupRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;

    # getter for: Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->mCall:Lcom/android/internal/telephony/GsmCdmaCall;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->access$100(Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;)Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v1

    if-eqz v1, :cond_327

    .line 1196
    const-string v1, "GsmCdmaCallTkr"

    const-string v2, "Switch ends, found waiting hangup. switch fg/bg call."

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToHangupRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;

    # getter for: Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->mCall:Lcom/android/internal/telephony/GsmCdmaCall;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->access$100(Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;)Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-ne v1, v2, :cond_316

    .line 1199
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToHangupRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->setToHangup(Lcom/android/internal/telephony/GsmCdmaCall;)V

    goto :goto_327

    .line 1200
    :cond_316
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToHangupRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;

    # getter for: Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->mCall:Lcom/android/internal/telephony/GsmCdmaCall;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->access$100(Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;)Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-ne v1, v2, :cond_327

    .line 1201
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToHangupRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->setToHangup(Lcom/android/internal/telephony/GsmCdmaCall;)V

    .line 1205
    :cond_327
    :goto_327
    const-string v1, "GsmCdmaCallTkr"

    const-string v2, "Switch ends, wait for poll call done to hangup"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToHangupRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->setHoldDone()V

    .line 1209
    :cond_333
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHasPendingSwapRequest:Z

    .line 1211
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->operationComplete()V

    .line 1212
    .end local v0    # "isResumeDial":Z
    goto :goto_39d

    .line 1190
    .restart local v0    # "isResumeDial":Z
    :catchall_339
    move-exception v2

    :try_start_33a
    monitor-exit v1
    :try_end_33b
    .catchall {:try_start_33a .. :try_end_33b} :catchall_339

    throw v2

    .line 1220
    .end local v0    # "isResumeDial":Z
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_33c
    const-string v0, "GsmCdmaCallTracker"

    const-string v4, "Event EVENT_POLL_CALLS_RESULT Received"

    invoke-static {v0, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    if-ne p1, v0, :cond_39d

    .line 1225
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mNeedsPoll:Z

    .line 1226
    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    .line 1232
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1233
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->noAnyCallFromModemExist(Landroid/os/AsyncResult;)Z

    move-result v2

    .line 1234
    .local v2, "bNoCallExists":Z
    if-nez v2, :cond_365

    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHasPendingUpdatePhoneType:Z

    if-eqz v4, :cond_365

    .line 1237
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHasPendingUpdatePhoneType:Z

    .line 1238
    invoke-direct {p0, v3, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->updatePhoneType(ZZ)V

    .line 1239
    const-string v4, "GsmCdmaCallTracker"

    const-string v5, "[EVENT_POLL_CALLS_RESULT]!bNoCallExists"

    invoke-static {v4, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    :cond_365
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    .line 1249
    if-eqz v2, :cond_37e

    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHasPendingUpdatePhoneType:Z

    if-eqz v4, :cond_37e

    .line 1251
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHasPendingUpdatePhoneType:Z

    .line 1252
    invoke-direct {p0, v3, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->updatePhoneType(ZZ)V

    .line 1253
    const-string v1, "GsmCdmaCallTracker"

    const-string v4, "[EVENT_POLL_CALLS_RESULT]bNoCallExists"

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    :cond_37e
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHasPendingCheckAndEnableData:Z

    if-eqz v1, :cond_389

    .line 1260
    if-eqz v2, :cond_387

    .line 1261
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    .line 1263
    :cond_387
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHasPendingCheckAndEnableData:Z

    .line 1268
    :cond_389
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToHangupRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->isHoldDone()Z

    move-result v1

    if-eqz v1, :cond_39d

    .line 1269
    const-string v1, "GsmCdmaCallTkr"

    const-string v3, "Switch ends, and poll call done, then resume hangup"

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToHangupRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;

    # invokes: Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->resumeHangupAfterHold()Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->access$200(Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;)Z

    .line 1401
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "bNoCallExists":Z
    :cond_39d
    :goto_39d
    return-void

    :sswitch_data_39e
    .sparse-switch
        0x1 -> :sswitch_33c
        0x8 -> :sswitch_208
        0xe -> :sswitch_131
        0x10 -> :sswitch_ee
        0x14 -> :sswitch_91
        0x3e8 -> :sswitch_86
        0x3e9 -> :sswitch_68
        0x3ea -> :sswitch_54
        0x3eb -> :sswitch_4f
        0x3ec -> :sswitch_3b
        0x3ed -> :sswitch_1f
        0x3ee -> :sswitch_14
    .end sparse-switch
.end method

.method protected declared-synchronized handlePollCalls(Landroid/os/AsyncResult;)V
    .registers 30
    .param p1, "ar"    # Landroid/os/AsyncResult;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    monitor-enter p0

    .line 477
    :try_start_5
    iget-boolean v3, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitPollAfterHangupPendingMO:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_d

    .line 478
    invoke-virtual {v1, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->updateWaitPollAfterAbortPendingMO(Z)V

    .line 480
    .end local p0    # "this":Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;
    :cond_d
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_16

    .line 481
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    .local v3, "polledCalls":Ljava/util/List;
    goto :goto_23

    .line 482
    .end local v3    # "polledCalls":Ljava/util/List;
    :cond_16
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_7d5

    .line 485
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 493
    .restart local v3    # "polledCalls":Ljava/util/List;
    :goto_23
    iget-boolean v5, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mNeedWaitImsEConfSrvcc:Z

    if-eqz v5, :cond_36

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->hasParsingCEPCapability()Z

    move-result v5

    if-nez v5, :cond_36

    .line 496
    const-string v4, "GsmCdmaCallTkr"

    const-string v5, "SRVCC: +ECONFSRVCC is still not arrival, skip this poll call."

    invoke-static {v4, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_7da

    .line 497
    monitor-exit p0

    return-void

    .line 501
    :cond_36
    const/4 v5, 0x0

    .line 502
    .local v5, "newRinging":Lcom/android/internal/telephony/Connection;
    :try_start_37
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 503
    .local v6, "newUnknownConnectionsGsm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    const/4 v7, 0x0

    .line 504
    .local v7, "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    const/4 v8, 0x0

    .line 506
    .local v8, "hasNonHangupStateChanged":Z
    const/4 v9, 0x0

    .line 507
    .local v9, "hasAnyCallDisconnected":Z
    const/4 v10, 0x0

    .line 508
    .local v10, "needsPollDelay":Z
    const/4 v11, 0x0

    .line 509
    .local v11, "unknownConnectionAppeared":Z
    iget-object v12, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 512
    .local v12, "handoverConnectionsSize":I
    const/4 v13, 0x1

    .line 514
    .local v13, "noConnectionExists":Z
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_53

    .line 515
    iget-object v14, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHelper:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;

    invoke-virtual {v14, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->setGwsdCall(Z)V

    .line 518
    :cond_53
    const/4 v14, 0x0

    .local v14, "i":I
    const/4 v15, 0x0

    .local v15, "curDC":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v17, v16

    .line 519
    .local v17, "dcSize":I
    :goto_5b
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    array-length v4, v4

    move-object/from16 v18, v7

    .end local v7    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .local v18, "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    if-ge v14, v4, :cond_4a3

    .line 520
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v4, v4, v14

    .line 521
    .local v4, "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    const/16 v19, 0x0

    .line 524
    .local v19, "dc":Lcom/android/internal/telephony/DriverCall;
    move/from16 v7, v17

    .end local v17    # "dcSize":I
    .local v7, "dcSize":I
    if-ge v15, v7, :cond_a9

    .line 525
    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/DriverCall;

    move-object/from16 v19, v17

    .line 528
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v17

    if-nez v17, :cond_91

    .line 529
    move/from16 v17, v7

    move/from16 v21, v9

    move-object/from16 v7, v19

    .end local v9    # "hasAnyCallDisconnected":Z
    .end local v19    # "dc":Lcom/android/internal/telephony/DriverCall;
    .local v7, "dc":Lcom/android/internal/telephony/DriverCall;
    .restart local v17    # "dcSize":I
    .local v21, "hasAnyCallDisconnected":Z
    iget-object v9, v7, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    move/from16 v22, v11

    .end local v11    # "unknownConnectionAppeared":Z
    .local v22, "unknownConnectionAppeared":Z
    iget-boolean v11, v7, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    move/from16 v23, v12

    .end local v12    # "handoverConnectionsSize":I
    .local v23, "handoverConnectionsSize":I
    iget v12, v7, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-direct {v1, v9, v11, v12}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->processPlusCodeForDriverCall(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    goto :goto_9b

    .line 528
    .end local v17    # "dcSize":I
    .end local v21    # "hasAnyCallDisconnected":Z
    .end local v22    # "unknownConnectionAppeared":Z
    .end local v23    # "handoverConnectionsSize":I
    .local v7, "dcSize":I
    .restart local v9    # "hasAnyCallDisconnected":Z
    .restart local v11    # "unknownConnectionAppeared":Z
    .restart local v12    # "handoverConnectionsSize":I
    .restart local v19    # "dc":Lcom/android/internal/telephony/DriverCall;
    :cond_91
    move/from16 v17, v7

    move/from16 v21, v9

    move/from16 v22, v11

    move/from16 v23, v12

    move-object/from16 v7, v19

    .line 534
    .end local v9    # "hasAnyCallDisconnected":Z
    .end local v11    # "unknownConnectionAppeared":Z
    .end local v12    # "handoverConnectionsSize":I
    .end local v19    # "dc":Lcom/android/internal/telephony/DriverCall;
    .local v7, "dc":Lcom/android/internal/telephony/DriverCall;
    .restart local v17    # "dcSize":I
    .restart local v21    # "hasAnyCallDisconnected":Z
    .restart local v22    # "unknownConnectionAppeared":Z
    .restart local v23    # "handoverConnectionsSize":I
    :goto_9b
    iget v9, v7, Lcom/android/internal/telephony/DriverCall;->index:I

    add-int/lit8 v11, v14, 0x1

    if-ne v9, v11, :cond_a4

    .line 535
    add-int/lit8 v15, v15, 0x1

    goto :goto_b3

    .line 537
    :cond_a4
    const/16 v19, 0x0

    move-object/from16 v7, v19

    .end local v7    # "dc":Lcom/android/internal/telephony/DriverCall;
    .restart local v19    # "dc":Lcom/android/internal/telephony/DriverCall;
    goto :goto_b3

    .line 524
    .end local v17    # "dcSize":I
    .end local v21    # "hasAnyCallDisconnected":Z
    .end local v22    # "unknownConnectionAppeared":Z
    .end local v23    # "handoverConnectionsSize":I
    .local v7, "dcSize":I
    .restart local v9    # "hasAnyCallDisconnected":Z
    .restart local v11    # "unknownConnectionAppeared":Z
    .restart local v12    # "handoverConnectionsSize":I
    :cond_a9
    move/from16 v17, v7

    move/from16 v21, v9

    move/from16 v22, v11

    move/from16 v23, v12

    .end local v7    # "dcSize":I
    .end local v9    # "hasAnyCallDisconnected":Z
    .end local v11    # "unknownConnectionAppeared":Z
    .end local v12    # "handoverConnectionsSize":I
    .restart local v17    # "dcSize":I
    .restart local v21    # "hasAnyCallDisconnected":Z
    .restart local v22    # "unknownConnectionAppeared":Z
    .restart local v23    # "handoverConnectionsSize":I
    move-object/from16 v7, v19

    .line 542
    .end local v19    # "dc":Lcom/android/internal/telephony/DriverCall;
    .local v7, "dc":Lcom/android/internal/telephony/DriverCall;
    :goto_b3
    if-nez v4, :cond_b7

    if-eqz v7, :cond_b9

    .line 543
    :cond_b7
    const/4 v9, 0x0

    move v13, v9

    .line 549
    :cond_b9
    if-nez v4, :cond_2ca

    if-eqz v7, :cond_2ca

    .line 555
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v9, :cond_127

    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v9, v7}, Lcom/android/internal/telephony/GsmCdmaConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v9

    if-eqz v9, :cond_127

    .line 560
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    iget-object v11, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    aput-object v11, v9, v14

    .line 561
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    iput v14, v9, Lcom/android/internal/telephony/GsmCdmaConnection;->mIndex:I

    .line 562
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v9, v7}, Lcom/android/internal/telephony/GsmCdmaConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    .line 563
    const/4 v9, 0x0

    iput-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 566
    iget-boolean v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHangupPendingMO:Z

    if-eqz v9, :cond_11f

    .line 567
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHangupPendingMO:Z

    .line 571
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaPhone;->isEcmCanceledForEmergency()Z

    move-result v9

    if-eqz v9, :cond_f0

    .line 572
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleTimerInEmergencyCallbackMode(I)V
    :try_end_f0
    .catchall {:try_start_37 .. :try_end_f0} :catchall_7da

    .line 576
    :cond_f0
    :try_start_f0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "poll: hangupPendingMO, hangup conn "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 578
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->updateWaitPollAfterAbortPendingMO(Z)V

    .line 579
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v9, v9, v14

    invoke-virtual {v1, v9}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->hangup(Lcom/android/internal/telephony/GsmCdmaConnection;)V
    :try_end_10f
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_f0 .. :try_end_10f} :catch_110
    .catchall {:try_start_f0 .. :try_end_10f} :catchall_7da

    .line 583
    goto :goto_11d

    .line 580
    :catch_110
    move-exception v0

    move-object v9, v0

    .line 581
    .local v9, "ex":Lcom/android/internal/telephony/CallStateException;
    :try_start_112
    const-string v11, "GsmCdmaCallTracker"

    const-string v12, "unexpected error on hangup"

    invoke-static {v11, v12}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->updateWaitPollAfterAbortPendingMO(Z)V
    :try_end_11d
    .catchall {:try_start_112 .. :try_end_11d} :catchall_7da

    .line 587
    .end local v9    # "ex":Lcom/android/internal/telephony/CallStateException;
    :goto_11d
    monitor-exit p0

    return-void

    .line 566
    :cond_11f
    move/from16 v25, v10

    move/from16 v19, v13

    move/from16 v24, v15

    goto/16 :goto_298

    .line 591
    :cond_127
    :try_start_127
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pendingMo="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", dc="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 595
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v9, :cond_158

    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v9, v7}, Lcom/android/internal/telephony/GsmCdmaConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v9

    if-nez v9, :cond_158

    .line 596
    const-string v9, "GsmCdmaCallTkr"

    const-string v11, "MO/MT conflict! MO should be hangup by MD"

    invoke-static {v9, v11}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_158
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    new-instance v11, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;

    iget-object v12, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-direct {v11, v12, v7, v1, v14}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/GsmCdmaCallTracker;I)V

    aput-object v11, v9, v14

    .line 601
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "New connection is not mPendingMO. Creating new GsmCdmaConnection, objId="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v11, v11, v14

    .line 602
    invoke-static {v11}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 601
    invoke-virtual {v1, v9}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 604
    invoke-virtual {v1, v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->getHoConnection(Lcom/android/internal/telephony/DriverCall;)Lcom/android/internal/telephony/Connection;

    move-result-object v9

    .line 605
    .local v9, "hoConnection":Lcom/android/internal/telephony/Connection;
    if-eqz v9, :cond_29b

    .line 606
    const-string v11, "Handover connection found."

    invoke-virtual {v1, v11}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 609
    instance-of v11, v9, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    if-eqz v11, :cond_1c4

    move-object v11, v9

    check-cast v11, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    .line 610
    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->isMultipartyBeforeHandover()Z

    move-result v11

    if-eqz v11, :cond_1c4

    move-object v11, v9

    check-cast v11, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    .line 611
    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->isConfHostBeforeHandover()Z

    move-result v11

    if-eqz v11, :cond_1c4

    .line 612
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->hasParsingCEPCapability()Z

    move-result v11

    if-nez v11, :cond_1c4

    .line 613
    const-string v11, "GsmCdmaCallTracker"

    const-string v12, "SRVCC: goes to conference case."

    invoke-static {v11, v12}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v11, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v11, v11, v14

    iput-object v9, v11, Lcom/android/internal/telephony/GsmCdmaConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    .line 615
    iget-object v11, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mImsConfParticipants:Ljava/util/ArrayList;

    iget-object v12, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v12, v12, v14

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v25, v10

    move/from16 v19, v13

    move/from16 v24, v15

    goto/16 :goto_298

    .line 617
    :cond_1c4
    const-string v11, "GsmCdmaCallTracker"

    const-string v12, "SRVCC: goes to normal call case."

    invoke-static {v11, v12}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object v11, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v11, v11, v14

    invoke-virtual {v11, v9}, Lcom/android/internal/telephony/GsmCdmaConnection;->migrateFrom(Lcom/android/internal/telephony/Connection;)V

    .line 622
    iget-object v11, v9, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    sget-object v12, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v11, v12, :cond_1eb

    iget-object v11, v9, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    sget-object v12, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v11, v12, :cond_1eb

    iget-object v11, v7, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v12, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v11, v12, :cond_1eb

    .line 625
    iget-object v11, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v11, v11, v14

    invoke-virtual {v11}, Lcom/android/internal/telephony/GsmCdmaConnection;->onConnectedInOrOut()V

    .line 628
    :cond_1eb
    iget-object v11, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 630
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v11

    if-eqz v11, :cond_25e

    .line 631
    iget-object v11, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 632
    .local v11, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/Connection;>;"
    :goto_1fc
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_257

    .line 633
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/Connection;

    .line 634
    .local v12, "c":Lcom/android/internal/telephony/Connection;
    move/from16 v19, v13

    .end local v13    # "noConnectionExists":Z
    .local v19, "noConnectionExists":Z
    const-string v13, "GsmCdmaCallTracker"

    move/from16 v24, v15

    .end local v15    # "curDC":I
    .local v24, "curDC":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v25, v10

    .end local v10    # "needsPollDelay":Z
    .local v25, "needsPollDelay":Z
    const-string v10, "HO Conn state is "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v12, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget-object v10, v12, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    iget-object v13, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v13, v13, v14

    invoke-virtual {v13}, Lcom/android/internal/telephony/GsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v13

    if-ne v10, v13, :cond_250

    .line 636
    const-string v10, "GsmCdmaCallTracker"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Removing HO conn "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v15, v12, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    .line 640
    .end local v12    # "c":Lcom/android/internal/telephony/Connection;
    :cond_250
    move/from16 v13, v19

    move/from16 v15, v24

    move/from16 v10, v25

    goto :goto_1fc

    .line 632
    .end local v19    # "noConnectionExists":Z
    .end local v24    # "curDC":I
    .end local v25    # "needsPollDelay":Z
    .restart local v10    # "needsPollDelay":Z
    .restart local v13    # "noConnectionExists":Z
    .restart local v15    # "curDC":I
    :cond_257
    move/from16 v25, v10

    move/from16 v19, v13

    move/from16 v24, v15

    .end local v10    # "needsPollDelay":Z
    .end local v13    # "noConnectionExists":Z
    .end local v15    # "curDC":I
    .restart local v19    # "noConnectionExists":Z
    .restart local v24    # "curDC":I
    .restart local v25    # "needsPollDelay":Z
    goto :goto_264

    .line 630
    .end local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/Connection;>;"
    .end local v19    # "noConnectionExists":Z
    .end local v24    # "curDC":I
    .end local v25    # "needsPollDelay":Z
    .restart local v10    # "needsPollDelay":Z
    .restart local v13    # "noConnectionExists":Z
    .restart local v15    # "curDC":I
    :cond_25e
    move/from16 v25, v10

    move/from16 v19, v13

    move/from16 v24, v15

    .line 644
    .end local v10    # "needsPollDelay":Z
    .end local v13    # "noConnectionExists":Z
    .end local v15    # "curDC":I
    .restart local v19    # "noConnectionExists":Z
    .restart local v24    # "curDC":I
    .restart local v25    # "needsPollDelay":Z
    :goto_264
    iget-boolean v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mIsInEmergencyCall:Z

    if-eqz v10, :cond_285

    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/GsmCdmaPhone;->isEcmCanceledForEmergency()Z

    move-result v10

    if-nez v10, :cond_285

    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 645
    invoke-virtual {v10}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInEcm()Z

    move-result v10

    if-eqz v10, :cond_285

    .line 646
    const-string v10, "GsmCdmaCallTracker"

    const-string v11, "Ecm timer has been canceled in IMS, so set setEcmCanceledForEmergency(true) directly"

    invoke-static {v10, v11}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/GsmCdmaPhone;->setEcmCanceledForEmergency(Z)V

    .line 652
    :cond_285
    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v11, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v11, v11, v14

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyHandoverStateChanged(Lcom/android/internal/telephony/Connection;)V

    .line 657
    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v10, v10, v14

    const-string v11, "android.telecom.event.CALL_REMOTELY_UNHELD"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/GsmCdmaConnection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 675
    .end local v9    # "hoConnection":Lcom/android/internal/telephony/Connection;
    .end local v19    # "noConnectionExists":Z
    .end local v24    # "curDC":I
    .end local v25    # "needsPollDelay":Z
    .restart local v10    # "needsPollDelay":Z
    .restart local v13    # "noConnectionExists":Z
    .restart local v15    # "curDC":I
    :goto_298
    move/from16 v11, v22

    .end local v10    # "needsPollDelay":Z
    .end local v13    # "noConnectionExists":Z
    .end local v15    # "curDC":I
    .restart local v19    # "noConnectionExists":Z
    .restart local v24    # "curDC":I
    .restart local v25    # "needsPollDelay":Z
    goto :goto_2c5

    .line 663
    .end local v19    # "noConnectionExists":Z
    .end local v24    # "curDC":I
    .end local v25    # "needsPollDelay":Z
    .restart local v9    # "hoConnection":Lcom/android/internal/telephony/Connection;
    .restart local v10    # "needsPollDelay":Z
    .restart local v13    # "noConnectionExists":Z
    .restart local v15    # "curDC":I
    :cond_29b
    move/from16 v25, v10

    move/from16 v19, v13

    move/from16 v24, v15

    .end local v10    # "needsPollDelay":Z
    .end local v13    # "noConnectionExists":Z
    .end local v15    # "curDC":I
    .restart local v19    # "noConnectionExists":Z
    .restart local v24    # "curDC":I
    .restart local v25    # "needsPollDelay":Z
    const-string v10, "New connection is not mPendingMO nor a pending handover."

    invoke-virtual {v1, v10}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 664
    invoke-virtual {v1, v7, v14}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->checkMtFindNewRinging(Lcom/android/internal/telephony/DriverCall;I)Lcom/android/internal/telephony/Connection;

    move-result-object v10

    move-object v5, v10

    .line 665
    if-nez v5, :cond_2c3

    .line 666
    const/4 v11, 0x1

    .line 667
    .end local v22    # "unknownConnectionAppeared":Z
    .local v11, "unknownConnectionAppeared":Z
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v10

    if-eqz v10, :cond_2bc

    .line 668
    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v10, v10, v14

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c5

    .line 670
    :cond_2bc
    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v10, v10, v14

    move-object/from16 v18, v10

    .end local v18    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .local v10, "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    goto :goto_2c5

    .line 665
    .end local v10    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .end local v11    # "unknownConnectionAppeared":Z
    .restart local v18    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .restart local v22    # "unknownConnectionAppeared":Z
    :cond_2c3
    move/from16 v11, v22

    .line 675
    .end local v9    # "hoConnection":Lcom/android/internal/telephony/Connection;
    .end local v22    # "unknownConnectionAppeared":Z
    .restart local v11    # "unknownConnectionAppeared":Z
    :goto_2c5
    const/4 v8, 0x1

    move-object/from16 v7, v18

    goto/16 :goto_494

    .line 549
    .end local v11    # "unknownConnectionAppeared":Z
    .end local v19    # "noConnectionExists":Z
    .end local v24    # "curDC":I
    .end local v25    # "needsPollDelay":Z
    .local v10, "needsPollDelay":Z
    .restart local v13    # "noConnectionExists":Z
    .restart local v15    # "curDC":I
    .restart local v22    # "unknownConnectionAppeared":Z
    :cond_2ca
    move/from16 v25, v10

    move/from16 v19, v13

    move/from16 v24, v15

    .line 676
    .end local v10    # "needsPollDelay":Z
    .end local v13    # "noConnectionExists":Z
    .end local v15    # "curDC":I
    .restart local v19    # "noConnectionExists":Z
    .restart local v24    # "curDC":I
    .restart local v25    # "needsPollDelay":Z
    if-eqz v4, :cond_3cb

    if-nez v7, :cond_3cb

    .line 681
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v9

    if-eqz v9, :cond_344

    iget v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhoneType:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_344

    .line 685
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->getCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v9

    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-ne v9, v10, :cond_2fa

    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v9, v9, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    .line 686
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2fa

    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 687
    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaCall;->isIdle()Z

    move-result v9

    if-nez v9, :cond_315

    .line 688
    :cond_2fa
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->getCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v9

    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-ne v9, v10, :cond_325

    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v9, v9, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    .line 689
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_325

    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 690
    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaCall;->isIdle()Z

    move-result v9

    if-eqz v9, :cond_325

    :cond_315
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 691
    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v10, :cond_325

    .line 692
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    sget-object v10, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    iput-object v10, v9, Lcom/android/internal/telephony/GsmCdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 698
    :cond_325
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaPhone;->isEcmCanceledForEmergency()Z

    move-result v9

    if-eqz v9, :cond_338

    .line 703
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleTimerInEmergencyCallbackMode(I)V

    .line 708
    :cond_338
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    const/4 v10, 0x0

    aput-object v10, v9, v14

    .line 711
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHelper:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;

    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->CallIndicationEnd()V

    goto/16 :goto_3c4

    .line 719
    :cond_344
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v9, v9, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 720
    .local v9, "count":I
    const/4 v10, 0x0

    .local v10, "n":I
    :goto_34d
    if-ge v10, v9, :cond_37b

    .line 722
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "adding fgCall cn "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " to droppedDuringPoll"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 723
    iget-object v11, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v11, v11, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    .line 724
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 725
    .local v11, "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    iget-object v12, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    nop

    .end local v11    # "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    add-int/lit8 v10, v10, 0x1

    goto :goto_34d

    .line 727
    .end local v10    # "n":I
    :cond_37b
    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v10, v10, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v9, v10

    .line 730
    const/4 v10, 0x0

    .restart local v10    # "n":I
    :goto_385
    if-ge v10, v9, :cond_3b3

    .line 732
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "adding rgCall cn "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " to droppedDuringPoll"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 733
    iget-object v11, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v11, v11, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    .line 734
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 735
    .restart local v11    # "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    iget-object v12, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    nop

    .end local v11    # "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    add-int/lit8 v10, v10, 0x1

    goto :goto_385

    .line 739
    .end local v10    # "n":I
    :cond_3b3
    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/GsmCdmaPhone;->isEcmCanceledForEmergency()Z

    move-result v10

    if-eqz v10, :cond_3c1

    .line 740
    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleTimerInEmergencyCallbackMode(I)V

    .line 743
    :cond_3c1
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    .line 747
    .end local v9    # "count":I
    :goto_3c4
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    const/4 v10, 0x0

    aput-object v10, v9, v14

    goto/16 :goto_490

    .line 748
    :cond_3cb
    if-eqz v4, :cond_429

    if-eqz v7, :cond_429

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/GsmCdmaConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v9

    if-nez v9, :cond_429

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v9

    if-eqz v9, :cond_429

    .line 756
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v9, :cond_406

    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v9, v7}, Lcom/android/internal/telephony/GsmCdmaConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v9

    if-eqz v9, :cond_406

    .line 761
    const-string v9, "GsmCdmaCallTkr"

    const-string v10, "ringing disc not updated yet & replaced by pendingMo"

    invoke-static {v9, v10}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    aput-object v10, v9, v14

    .line 764
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    iput v14, v9, Lcom/android/internal/telephony/GsmCdmaConnection;->mIndex:I

    .line 765
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v9, v7}, Lcom/android/internal/telephony/GsmCdmaConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    .line 766
    const/4 v9, 0x0

    iput-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    goto :goto_411

    .line 768
    :cond_406
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    new-instance v10, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;

    iget-object v11, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-direct {v10, v11, v7, v1, v14}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/GsmCdmaCallTracker;I)V

    aput-object v10, v9, v14

    .line 772
    :goto_411
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v9, v9, v14

    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaConnection;->getCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v9

    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-ne v9, v10, :cond_422

    .line 773
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v9, v9, v14

    move-object v5, v9

    .line 775
    :cond_422
    const/4 v8, 0x1

    move-object/from16 v7, v18

    move/from16 v11, v22

    goto/16 :goto_494

    .line 776
    :cond_429
    if-eqz v4, :cond_490

    if-eqz v7, :cond_490

    .line 778
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v9

    if-nez v9, :cond_47b

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->isIncoming()Z

    move-result v9

    iget-boolean v10, v7, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-eq v9, v10, :cond_47b

    .line 779
    iget-boolean v9, v7, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_464

    .line 781
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    new-instance v10, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;

    iget-object v11, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-direct {v10, v11, v7, v1, v14}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/GsmCdmaCallTracker;I)V

    aput-object v10, v9, v14

    .line 784
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    invoke-virtual {v1, v7, v14}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->checkMtFindNewRinging(Lcom/android/internal/telephony/DriverCall;I)Lcom/android/internal/telephony/Connection;

    move-result-object v9

    move-object v5, v9

    .line 787
    if-nez v5, :cond_45c

    .line 788
    const/4 v11, 0x1

    .line 789
    .end local v22    # "unknownConnectionAppeared":Z
    .local v11, "unknownConnectionAppeared":Z
    move-object v9, v4

    move-object/from16 v18, v9

    .end local v18    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .local v9, "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    goto :goto_45e

    .line 787
    .end local v9    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .end local v11    # "unknownConnectionAppeared":Z
    .restart local v18    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .restart local v22    # "unknownConnectionAppeared":Z
    :cond_45c
    move/from16 v11, v22

    .line 791
    .end local v22    # "unknownConnectionAppeared":Z
    .restart local v11    # "unknownConnectionAppeared":Z
    :goto_45e
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    move-object/from16 v7, v18

    goto :goto_494

    .line 797
    .end local v11    # "unknownConnectionAppeared":Z
    .restart local v22    # "unknownConnectionAppeared":Z
    :cond_464
    const-string v9, "GsmCdmaCallTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in RIL, Phantom call appeared "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_490

    .line 805
    :cond_47b
    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/GsmCdmaConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v9

    .line 806
    .local v9, "changed":Z
    if-nez v8, :cond_487

    if-eqz v9, :cond_484

    goto :goto_487

    :cond_484
    const/16 v20, 0x0

    goto :goto_489

    :cond_487
    :goto_487
    const/16 v20, 0x1

    :goto_489
    move/from16 v8, v20

    move-object/from16 v7, v18

    move/from16 v11, v22

    goto :goto_494

    .line 519
    .end local v4    # "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    .end local v7    # "dc":Lcom/android/internal/telephony/DriverCall;
    .end local v9    # "changed":Z
    :cond_490
    :goto_490
    move-object/from16 v7, v18

    move/from16 v11, v22

    .end local v18    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .end local v22    # "unknownConnectionAppeared":Z
    .local v7, "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .restart local v11    # "unknownConnectionAppeared":Z
    :goto_494
    add-int/lit8 v14, v14, 0x1

    move/from16 v13, v19

    move/from16 v9, v21

    move/from16 v12, v23

    move/from16 v15, v24

    move/from16 v10, v25

    const/4 v4, 0x0

    goto/16 :goto_5b

    .end local v7    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .end local v19    # "noConnectionExists":Z
    .end local v21    # "hasAnyCallDisconnected":Z
    .end local v23    # "handoverConnectionsSize":I
    .end local v24    # "curDC":I
    .end local v25    # "needsPollDelay":Z
    .local v9, "hasAnyCallDisconnected":Z
    .local v10, "needsPollDelay":Z
    .local v12, "handoverConnectionsSize":I
    .restart local v13    # "noConnectionExists":Z
    .restart local v15    # "curDC":I
    .restart local v18    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    :cond_4a3
    move/from16 v21, v9

    move/from16 v25, v10

    move/from16 v22, v11

    move/from16 v23, v12

    .line 831
    .end local v9    # "hasAnyCallDisconnected":Z
    .end local v10    # "needsPollDelay":Z
    .end local v11    # "unknownConnectionAppeared":Z
    .end local v12    # "handoverConnectionsSize":I
    .end local v14    # "i":I
    .end local v15    # "curDC":I
    .end local v17    # "dcSize":I
    .restart local v21    # "hasAnyCallDisconnected":Z
    .restart local v22    # "unknownConnectionAppeared":Z
    .restart local v23    # "handoverConnectionsSize":I
    .restart local v25    # "needsPollDelay":Z
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v4

    if-nez v4, :cond_4b6

    if-eqz v13, :cond_4b6

    .line 832
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    .line 838
    :cond_4b6
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v4, :cond_503

    .line 839
    const-string v4, "GsmCdmaCallTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Pending MO dropped before poll fg state:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 840
    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 839
    invoke-static {v4, v7}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    iget-object v7, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 844
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHangupPendingMO:Z

    .line 845
    invoke-virtual {v1, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->updateWaitPollAfterAbortPendingMO(Z)V

    .line 848
    iget-boolean v7, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingCallInEcm:Z

    if-eqz v7, :cond_4ec

    .line 849
    iput-boolean v4, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingCallInEcm:Z

    .line 852
    :cond_4ec
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->isEcmCanceledForEmergency()Z

    move-result v4

    if-eqz v4, :cond_4fa

    .line 853
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleTimerInEmergencyCallbackMode(I)V

    .line 857
    :cond_4fa
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v4

    if-nez v4, :cond_503

    .line 858
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    .line 863
    :cond_503
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_588

    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    array-length v4, v4

    if-nez v4, :cond_588

    .line 864
    const-string v4, "check whether fgCall or ringCall have mConnections"

    invoke-virtual {v1, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 865
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v4

    if-nez v4, :cond_588

    .line 870
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v4, v4, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 871
    .local v4, "count":I
    const/4 v7, 0x0

    .local v7, "n":I
    :goto_522
    if-ge v7, v4, :cond_550

    .line 872
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "adding fgCall cn "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " to droppedDuringPoll"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 873
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v9, v9, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 874
    .local v9, "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 871
    nop

    .end local v9    # "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    add-int/lit8 v7, v7, 0x1

    goto :goto_522

    .line 877
    .end local v7    # "n":I
    :cond_550
    iget-object v7, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v7, v7, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v4, v7

    .line 880
    const/4 v7, 0x0

    .restart local v7    # "n":I
    :goto_55a
    if-ge v7, v4, :cond_588

    .line 881
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "adding rgCall cn "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " to droppedDuringPoll"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 882
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v9, v9, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 883
    .restart local v9    # "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 880
    nop

    .end local v9    # "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    add-int/lit8 v7, v7, 0x1

    goto :goto_55a

    .line 889
    .end local v4    # "count":I
    .end local v7    # "n":I
    :cond_588
    if-eqz v5, :cond_58f

    .line 890
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V

    .line 896
    :cond_58f
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 897
    .local v4, "locallyDisconnectedConnections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/GsmCdmaConnection;>;"
    iget-object v7, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v9, 0x1

    sub-int/2addr v7, v9

    move-object/from16 v9, v18

    move/from16 v11, v22

    .end local v18    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .end local v22    # "unknownConnectionAppeared":Z
    .local v7, "i":I
    .local v9, "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .restart local v11    # "unknownConnectionAppeared":Z
    :goto_5a0
    if-ltz v7, :cond_64a

    .line 898
    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 900
    .local v10, "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    const/4 v12, 0x0

    .line 903
    .local v12, "wasDisconnected":Z
    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v14}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v14

    if-eqz v14, :cond_5c4

    .line 904
    iget-object v14, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 905
    const/16 v14, 0xe

    invoke-virtual {v10, v14}, Lcom/android/internal/telephony/GsmCdmaConnection;->onDisconnect(I)Z

    move-result v14

    or-int v14, v21, v14

    .line 906
    .end local v21    # "hasAnyCallDisconnected":Z
    .local v14, "hasAnyCallDisconnected":Z
    const/4 v12, 0x1

    move/from16 v21, v14

    goto :goto_635

    .line 908
    .end local v14    # "hasAnyCallDisconnected":Z
    .restart local v21    # "hasAnyCallDisconnected":Z
    :cond_5c4
    invoke-virtual {v10}, Lcom/android/internal/telephony/GsmCdmaConnection;->isIncoming()Z

    move-result v14

    const/4 v15, 0x3

    if-eqz v14, :cond_619

    invoke-virtual {v10}, Lcom/android/internal/telephony/GsmCdmaConnection;->getConnectTime()J

    move-result-wide v17

    const-wide/16 v26, 0x0

    cmp-long v14, v17, v26

    if-nez v14, :cond_619

    .line 911
    iget v14, v10, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    if-ne v14, v15, :cond_5dc

    .line 912
    const/16 v14, 0x10

    .local v14, "cause":I
    goto :goto_5dd

    .line 914
    .end local v14    # "cause":I
    :cond_5dc
    const/4 v14, 0x1

    .line 918
    .restart local v14    # "cause":I
    :goto_5dd
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "missed/rejected call, conn.cause="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 919
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setting cause to "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 921
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 922
    invoke-virtual {v10, v14}, Lcom/android/internal/telephony/GsmCdmaConnection;->onDisconnect(I)Z

    move-result v2

    or-int v2, v21, v2

    .line 923
    .end local v21    # "hasAnyCallDisconnected":Z
    .local v2, "hasAnyCallDisconnected":Z
    const/4 v12, 0x1

    .line 924
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 925
    move/from16 v21, v2

    .end local v14    # "cause":I
    goto :goto_635

    .end local v2    # "hasAnyCallDisconnected":Z
    .restart local v21    # "hasAnyCallDisconnected":Z
    :cond_619
    iget v2, v10, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    if-eq v2, v15, :cond_622

    iget v2, v10, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    const/4 v14, 0x7

    if-ne v2, v14, :cond_635

    .line 927
    :cond_622
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 928
    iget v2, v10, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    invoke-virtual {v10, v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->onDisconnect(I)Z

    move-result v2

    or-int v2, v21, v2

    .line 929
    .end local v21    # "hasAnyCallDisconnected":Z
    .restart local v2    # "hasAnyCallDisconnected":Z
    const/4 v12, 0x1

    .line 930
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v21, v2

    .line 933
    .end local v2    # "hasAnyCallDisconnected":Z
    .restart local v21    # "hasAnyCallDisconnected":Z
    :cond_635
    :goto_635
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v2

    if-nez v2, :cond_644

    if-eqz v12, :cond_644

    if-eqz v11, :cond_644

    if-ne v10, v9, :cond_644

    .line 935
    const/4 v2, 0x0

    .line 936
    .end local v11    # "unknownConnectionAppeared":Z
    .local v2, "unknownConnectionAppeared":Z
    const/4 v9, 0x0

    move v11, v2

    .line 897
    .end local v2    # "unknownConnectionAppeared":Z
    .end local v10    # "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    .end local v12    # "wasDisconnected":Z
    .restart local v11    # "unknownConnectionAppeared":Z
    :cond_644
    add-int/lit8 v7, v7, -0x1

    move-object/from16 v2, p1

    goto/16 :goto_5a0

    .line 939
    .end local v7    # "i":I
    :cond_64a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_663

    .line 940
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v7, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v7

    .line 941
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v10

    .line 940
    invoke-virtual {v2, v7, v4, v10}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilCallList(ILjava/util/ArrayList;Ljava/lang/String;)V

    .line 947
    :cond_663
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mImsConfHostConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v2, :cond_6dc

    .line 948
    check-cast v2, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    .line 949
    .local v2, "hostConn":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;
    iget-object v7, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mImsConfParticipants:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v10, 0x2

    if-lt v7, v10, :cond_682

    .line 953
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->restoreConferenceParticipantAddress()Z

    .line 955
    const-string v7, "GsmCdmaCallTkr"

    const-string v10, "SRVCC: notify new participant connections"

    invoke-static {v7, v10}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    iget-object v7, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mImsConfParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->notifyConferenceConnectionsConfigured(Ljava/util/ArrayList;)V

    goto :goto_6d2

    .line 957
    :cond_682
    iget-object v7, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mImsConfParticipants:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v10, 0x1

    if-ne v7, v10, :cond_6cb

    .line 959
    iget-object v7, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mImsConfParticipants:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 964
    .local v7, "participant":Lcom/android/internal/telephony/GsmCdmaConnection;
    invoke-virtual {v2, v10}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->getConferenceParticipantAddress(I)Ljava/lang/String;

    move-result-object v10

    .line 965
    .local v10, "address":Ljava/lang/String;
    const-string v12, "GsmCdmaCallTkr"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SRVCC: restore participant connection with address: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "GsmCdmaCallTkr"

    .line 967
    invoke-static {v15, v10}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 965
    invoke-static {v12, v14}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    instance-of v12, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;

    if-eqz v12, :cond_6be

    .line 969
    move-object v12, v7

    check-cast v12, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;

    .line 970
    invoke-virtual {v12, v10}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->updateConferenceParticipantAddress(Ljava/lang/String;)V

    .line 973
    :cond_6be
    const-string v12, "GsmCdmaCallTkr"

    const-string v14, "SRVCC: only one connection, consider it as a normal call SRVCC"

    invoke-static {v12, v14}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    iget-object v12, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v12, v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyHandoverStateChanged(Lcom/android/internal/telephony/Connection;)V

    .line 976
    .end local v7    # "participant":Lcom/android/internal/telephony/GsmCdmaConnection;
    .end local v10    # "address":Ljava/lang/String;
    goto :goto_6d2

    .line 977
    :cond_6cb
    const-string v7, "GsmCdmaCallTkr"

    const-string v10, "SRVCC: abnormal case, no participant connections."

    invoke-static {v7, v10}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :goto_6d2
    iget-object v7, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mImsConfParticipants:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 980
    const/4 v7, 0x0

    iput-object v7, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mImsConfHostConnection:Lcom/android/internal/telephony/Connection;

    .line 981
    iput-object v7, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mEconfSrvccConnectionIds:[I

    .line 985
    .end local v2    # "hostConn":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;
    :cond_6dc
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 986
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/Connection;>;"
    :goto_6e2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_725

    .line 987
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/Connection;

    .line 988
    .local v7, "hoConnection":Lcom/android/internal/telephony/Connection;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handlePollCalls - disconnect hoConn= "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " hoConn.State= "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 988
    invoke-virtual {v1, v10}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 990
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v10

    if-eqz v10, :cond_71d

    .line 991
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lcom/android/internal/telephony/Connection;->onDisconnect(I)Z

    goto :goto_721

    .line 993
    :cond_71d
    const/4 v10, -0x1

    invoke-virtual {v7, v10}, Lcom/android/internal/telephony/Connection;->onDisconnect(I)Z

    .line 996
    :goto_721
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 997
    .end local v7    # "hoConnection":Lcom/android/internal/telephony/Connection;
    goto :goto_6e2

    .line 1000
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/Connection;>;"
    :cond_725
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_737

    .line 1001
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v7, 0x5

    .line 1002
    invoke-virtual {v1, v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->obtainNoPollCompleteMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 1001
    invoke-virtual {v2, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->getLastCallFailCause(Landroid/os/Message;)V

    .line 1005
    :cond_737
    if-eqz v25, :cond_73c

    .line 1006
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->pollCallsAfterDelay()V

    .line 1014
    :cond_73c
    if-nez v5, :cond_742

    if-nez v8, :cond_742

    if-eqz v21, :cond_749

    :cond_742
    iget-boolean v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHasPendingSwapRequest:Z

    if-nez v2, :cond_749

    .line 1019
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->internalClearDisconnected()V

    .line 1023
    :cond_749
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->updatePhoneState()V

    .line 1025
    if-eqz v11, :cond_784

    .line 1026
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v2

    if-eqz v2, :cond_77f

    .line 1027
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_758
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_77e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/Connection;

    .line 1028
    .local v7, "c":Lcom/android/internal/telephony/Connection;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Notify unknown for "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1029
    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v10, v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V

    .line 1030
    .end local v7    # "c":Lcom/android/internal/telephony/Connection;
    goto :goto_758

    :cond_77e
    goto :goto_784

    .line 1032
    :cond_77f
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V

    .line 1036
    :cond_784
    :goto_784
    if-nez v8, :cond_78a

    if-nez v5, :cond_78a

    if-eqz v21, :cond_794

    .line 1037
    :cond_78a
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    .line 1038
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->updateMetrics([Lcom/android/internal/telephony/GsmCdmaConnection;)V

    .line 1042
    :cond_794
    if-lez v23, :cond_7a9

    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_7a9

    .line 1043
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 1044
    .local v2, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v2, :cond_7a9

    .line 1045
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->callEndCleanupHandOverCallIfAny()V

    .line 1051
    .end local v2    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :cond_7a9
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v2

    if-eqz v2, :cond_7d3

    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v2, :cond_7d3

    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    array-length v2, v2

    const/16 v7, 0x13

    if-ne v2, v7, :cond_7d3

    .line 1053
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHelper:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->getCurrentTotalConnections()I

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_7d3

    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 1054
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v7, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v7, :cond_7d3

    .line 1055
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    sget-object v7, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    iput-object v7, v2, Lcom/android/internal/telephony/GsmCdmaCall;->mState:Lcom/android/internal/telephony/Call$State;
    :try_end_7d3
    .catchall {:try_start_127 .. :try_end_7d3} :catchall_7da

    .line 1061
    :cond_7d3
    monitor-exit p0

    return-void

    .line 489
    .end local v3    # "polledCalls":Ljava/util/List;
    .end local v4    # "locallyDisconnectedConnections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/GsmCdmaConnection;>;"
    .end local v5    # "newRinging":Lcom/android/internal/telephony/Connection;
    .end local v6    # "newUnknownConnectionsGsm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    .end local v8    # "hasNonHangupStateChanged":Z
    .end local v9    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .end local v11    # "unknownConnectionAppeared":Z
    .end local v13    # "noConnectionExists":Z
    .end local v21    # "hasAnyCallDisconnected":Z
    .end local v23    # "handoverConnectionsSize":I
    .end local v25    # "needsPollDelay":Z
    :cond_7d5
    :try_start_7d5
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->pollCallsAfterDelay()V
    :try_end_7d8
    .catchall {:try_start_7d5 .. :try_end_7d8} :catchall_7da

    .line 490
    monitor-exit p0

    return-void

    .line 476
    .end local p1    # "ar":Landroid/os/AsyncResult;
    :catchall_7da
    move-exception v0

    move-object v2, v0

    monitor-exit p0

    throw v2
.end method

.method public hangup(Lcom/android/internal/telephony/GsmCdmaCall;)V
    .registers 8
    .param p1, "call"    # Lcom/android/internal/telephony/GsmCdmaCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1495
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_113

    .line 1499
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_51

    .line 1500
    const-string v0, "(ringing) hangup waiting or background"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1501
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->logHangupEvent(Lcom/android/internal/telephony/GsmCdmaCall;)V

    .line 1505
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1506
    .local v0, "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    instance-of v1, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;

    const/16 v2, 0x3eb

    if-eqz v1, :cond_46

    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;

    .line 1507
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->getRejectWithCause()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_46

    .line 1508
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    move-result v3

    move-object v4, v0

    check-cast v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;

    .line 1509
    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->getRejectWithCause()I

    move-result v4

    .line 1510
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1508
    invoke-virtual {v1, v3, v4, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->hangupConnectionWithCause(IILandroid/os/Message;)V

    goto :goto_4f

    .line 1512
    :cond_46
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    .line 1515
    .end local v0    # "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    :goto_4f
    goto/16 :goto_eb

    :cond_51
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-ne p1, v0, :cond_c0

    .line 1516
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCall;->isDialingOrAlerting()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 1518
    const-string v0, "(foregnd) hangup dialing or alerting..."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1520
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->hangup(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    goto/16 :goto_eb

    .line 1534
    :cond_6f
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->logHangupEvent(Lcom/android/internal/telephony/GsmCdmaCall;)V

    .line 1538
    const-string v0, "(foregnd) hangup active"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1539
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 1540
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1541
    .local v0, "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 1543
    .local v2, "address":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 1544
    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    .line 1545
    .local v3, "isEmergencyCall":Z
    if-eqz v3, :cond_aa

    .line 1546
    const-string v4, "GsmCdmaCallTkr"

    const-string v5, "(foregnd) hangup active ECC call by connection index"

    invoke-static {v4, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->hangup(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    goto :goto_bb

    .line 1552
    :cond_aa
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToHangupRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->isWaitToHangup()Z

    move-result v1

    if-nez v1, :cond_b6

    .line 1553
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->hangupForegroundResumeBackground()V

    goto :goto_bb

    .line 1555
    :cond_b6
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToHangupRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;

    invoke-virtual {v1, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->setToHangup(Lcom/android/internal/telephony/GsmCdmaCall;)V

    .line 1559
    .end local v0    # "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    .end local v2    # "address":Ljava/lang/String;
    .end local v3    # "isEmergencyCall":Z
    :goto_bb
    goto :goto_eb

    .line 1560
    :cond_bc
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->hangupForegroundResumeBackground()V

    goto :goto_eb

    .line 1563
    :cond_c0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-ne p1, v0, :cond_f4

    .line 1564
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 1566
    const-string v0, "hangup all conns in background call"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1568
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->hangupAllConnections(Lcom/android/internal/telephony/GsmCdmaCall;)V

    goto :goto_eb

    .line 1570
    :cond_d5
    const-string v0, "(backgnd) hangup waiting/background"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1573
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToHangupRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->isWaitToHangup()Z

    move-result v0

    if-nez v0, :cond_e6

    .line 1574
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->hangupWaitingOrBackground()V

    goto :goto_eb

    .line 1576
    :cond_e6
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToHangupRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->setToHangup(Lcom/android/internal/telephony/GsmCdmaCall;)V

    .line 1585
    :goto_eb
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCall;->onHangupLocal()V

    .line 1586
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    .line 1587
    return-void

    .line 1581
    :cond_f4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GsmCdmaCall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "does not belong to GsmCdmaCallTracker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1496
    :cond_113
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "no connections in call"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hangup(Lcom/android/internal/telephony/GsmCdmaConnection;)V
    .registers 6
    .param p1, "conn"    # Lcom/android/internal/telephony/GsmCdmaConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1426
    iget-object v0, p1, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    if-ne v0, p0, :cond_7b

    .line 1431
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-ne p1, v0, :cond_15

    .line 1435
    const-string v0, "hangup: set hangupPendingMO to true"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1436
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHangupPendingMO:Z

    .line 1437
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->updateWaitPollAfterAbortPendingMO(Z)V

    goto :goto_77

    .line 1438
    :cond_15
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_39

    .line 1439
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-ne v0, v1, :cond_39

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 1440
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_39

    .line 1452
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->onLocalDisconnect()V

    .line 1454
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->updatePhoneState()V

    .line 1455
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    .line 1456
    return-void

    .line 1459
    :cond_39
    :try_start_39
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    move-result v2

    .line 1460
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v3

    .line 1459
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilHangup(ILcom/android/internal/telephony/GsmCdmaConnection;ILjava/lang/String;)V

    .line 1463
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    move-result v1

    const/16 v2, 0x3eb

    .line 1464
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1463
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_5f
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_39 .. :try_end_5f} :catch_60

    .line 1470
    goto :goto_77

    .line 1465
    :catch_60
    move-exception v0

    .line 1468
    .local v0, "ex":Lcom/android/internal/telephony/CallStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GsmCdmaCallTracker WARN: hangup() on absent connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GsmCdmaCallTracker"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    .end local v0    # "ex":Lcom/android/internal/telephony/CallStateException;
    :goto_77
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->onHangupLocal()V

    .line 1474
    return-void

    .line 1427
    :cond_7b
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GsmCdmaConnection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "does not belong to GsmCdmaCallTracker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hangupAll()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1410
    const-string v0, "GsmCdmaCallTkr"

    const-string v1, "hangupAll"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->hangupAll(Landroid/os/Message;)V

    .line 1413
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->isIdle()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1414
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->onHangupLocal()V

    .line 1416
    :cond_1d
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->isIdle()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1417
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->onHangupLocal()V

    .line 1419
    :cond_2a
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->isIdle()Z

    move-result v0

    if-nez v0, :cond_37

    .line 1420
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->onHangupLocal()V

    .line 1422
    :cond_37
    return-void
.end method

.method public hangupForegroundResumeBackground()V
    .registers 3

    .line 1599
    const-string v0, "hangupForegroundResumeBackground"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1602
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x3eb

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupForegroundResumeBackground(Landroid/os/Message;)V

    .line 1604
    return-void
.end method

.method public hangupWaitingOrBackground()V
    .registers 3

    .line 1590
    const-string v0, "hangupWaitingOrBackground"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1591
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->logHangupEvent(Lcom/android/internal/telephony/GsmCdmaCall;)V

    .line 1594
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x3eb

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    .line 1596
    return-void
.end method

.method hasParsingCEPCapability()Z
    .registers 5

    .line 2279
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2281
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v1

    .line 2282
    .local v1, "mccmnc":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasParsingCEPCapability - mccmnc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 2286
    const-string v2, "25099"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_5e

    const-string v2, "732103"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5e

    .line 2287
    const-string v2, "732111"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5e

    const-string v2, "24001"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    goto :goto_5e

    .line 2291
    :cond_4e
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;

    .line 2292
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/TelephonyDevController;->getModem(I)Lcom/android/internal/telephony/HardwareConfig;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/MtkHardwareConfig;

    .line 2293
    .local v2, "modem":Lcom/mediatek/internal/telephony/MtkHardwareConfig;
    if-nez v2, :cond_59

    .line 2294
    return v3

    .line 2296
    :cond_59
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkHardwareConfig;->hasParsingCEPCapability()Z

    move-result v3

    return v3

    .line 2288
    .end local v2    # "modem":Lcom/mediatek/internal/telephony/MtkHardwareConfig;
    :cond_5e
    :goto_5e
    return v3
.end method

.method protected notifySrvccState(Lcom/android/internal/telephony/Call$SrvccState;Ljava/util/ArrayList;)V
    .registers 6
    .param p1, "state"    # Lcom/android/internal/telephony/Call$SrvccState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Call$SrvccState;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/Connection;",
            ">;)V"
        }
    .end annotation

    .line 2149
    .local p2, "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->STARTED:Lcom/android/internal/telephony/Call$SrvccState;

    if-ne p1, v0, :cond_3f

    if-eqz p2, :cond_3f

    .line 2151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2154
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->hasParsingCEPCapability()Z

    move-result v0

    if-nez v0, :cond_48

    .line 2155
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 2156
    .local v1, "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->isMultiparty()Z

    move-result v2

    if-eqz v2, :cond_3d

    instance-of v2, v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    if-eqz v2, :cond_3d

    .line 2157
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->isConferenceHost()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 2158
    const-string v2, "srvcc: mNeedWaitImsEConfSrvcc set True"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 2159
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mNeedWaitImsEConfSrvcc:Z

    .line 2160
    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mImsConfHostConnection:Lcom/android/internal/telephony/Connection;

    .line 2162
    .end local v1    # "conn":Lcom/android/internal/telephony/Connection;
    :cond_3d
    goto :goto_17

    :cond_3e
    goto :goto_48

    .line 2164
    :cond_3f
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    if-eq p1, v0, :cond_48

    .line 2167
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2169
    :cond_48
    :goto_48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySrvccState: mHandoverConnections= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 2170
    return-void
.end method

.method public onRilConnected()V
    .registers 3

    .line 2305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRilConnected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingOperations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GsmCdmaCallTkr"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingOperations:I

    .line 2307
    return-void
.end method

.method protected reset()V
    .registers 5

    .line 432
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHelper:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->setGwsdCall(Z)V

    .line 435
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->hasC2kOverImsModem()Z

    move-result v0

    if-nez v0, :cond_10

    .line 437
    invoke-super {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->reset()V

    .line 438
    return-void

    .line 443
    :cond_10
    const-string v0, "GsmCdmaCallTracker"

    const-string v2, "reset"

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    array-length v2, v0

    :goto_1a
    if-ge v1, v2, :cond_26

    aget-object v3, v0, v1

    .line 446
    .local v3, "gsmCdmaConnection":Lcom/android/internal/telephony/GsmCdmaConnection;
    if-eqz v3, :cond_23

    .line 452
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->dispose()V

    .line 445
    .end local v3    # "gsmCdmaConnection":Lcom/android/internal/telephony/GsmCdmaConnection;
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 456
    :cond_26
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v0, :cond_2f

    .line 463
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->dispose()V

    .line 466
    :cond_2f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 467
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 468
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->clearDisconnected()V

    .line 469
    return-void
.end method

.method public switchWaitingOrHoldingAndActive()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1760
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_44

    .line 1763
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-eqz v0, :cond_28

    .line 1767
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHasPendingSwapRequest:Z

    if-nez v0, :cond_43

    .line 1768
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitForHoldToHangupRequest:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->setToHangup()V

    .line 1769
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1770
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1769
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->switchWaitingOrHoldingAndActive(Landroid/os/Message;)V

    .line 1771
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mHasPendingSwapRequest:Z

    goto :goto_43

    .line 1775
    :cond_28
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_38

    .line 1776
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->flashAndSetGenericTrue()V

    goto :goto_43

    .line 1782
    :cond_38
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    .line 1786
    :cond_43
    :goto_43
    return-void

    .line 1761
    :cond_44
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "cannot be in the incoming state"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected updatePhoneState()V
    .registers 6

    .line 2101
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 2102
    .local v0, "oldState":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2103
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_51

    .line 2104
    :cond_f
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-nez v1, :cond_34

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 2105
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->isIdle()Z

    move-result v1

    if-nez v1, :cond_24

    goto :goto_34

    .line 2120
    :cond_24
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 2126
    .local v1, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_2f

    .line 2127
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->callEndCleanupHandOverCallIfAny()V

    .line 2129
    :cond_2f
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_51

    .line 2106
    .end local v1    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :cond_34
    :goto_34
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 2113
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_51

    .line 2114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2115
    .local v1, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2116
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioExIndication()Lcom/mediatek/internal/telephony/MtkRadioExIndication;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4, v1}, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->callAdditionalInfoInd(IILjava/util/ArrayList;)V

    .line 2132
    .end local v1    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_51
    :goto_51
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_67

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_67

    .line 2133
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mVoiceCallEndedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_79

    .line 2135
    :cond_67
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_79

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_79

    .line 2136
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mVoiceCallStartedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2140
    :cond_79
    :goto_79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update phone state, old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 2142
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v0, :cond_ad

    .line 2143
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPhoneStateChanged()V

    .line 2144
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writePhoneState(ILcom/android/internal/telephony/PhoneConstants$State;)V

    .line 2146
    :cond_ad
    return-void
.end method

.method protected updatePhoneType(Z)V
    .registers 3
    .param p1, "duringInit"    # Z

    .line 359
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->updatePhoneType(ZZ)V

    .line 360
    return-void
.end method

.method updateWaitPollAfterAbortPendingMO(Z)V
    .registers 3
    .param p1, "newValue"    # Z

    .line 1478
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->updateWaitPollAfterAbortPendingMO(ZZ)V

    .line 1479
    return-void
.end method

.method updateWaitPollAfterAbortPendingMO(ZZ)V
    .registers 7
    .param p1, "newValue"    # Z
    .param p2, "forceUpdate"    # Z

    .line 1482
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitPollAfterHangupPendingMO:Z

    if-ne v0, p1, :cond_6

    if-eqz p2, :cond_3f

    .line 1483
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set mWaitPollAfterHangupPendingMO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1484
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitPollAfterHangupPendingMO:Z

    const-string v2, "t"

    const-string v3, "f"

    if-eqz v1, :cond_1a

    move-object v1, v2

    goto :goto_1b

    :cond_1a
    move-object v1, v3

    :goto_1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1485
    if-eqz p1, :cond_26

    goto :goto_27

    :cond_26
    move-object v2, v3

    :goto_27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1486
    if-eqz p2, :cond_2f

    const-string v1, " (forceUpdate)"

    goto :goto_31

    :cond_2f
    const-string v1, ""

    :goto_31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1483
    const-string v1, "GsmCdmaCallTracker"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mWaitPollAfterHangupPendingMO:Z

    .line 1489
    :cond_3f
    return-void
.end method

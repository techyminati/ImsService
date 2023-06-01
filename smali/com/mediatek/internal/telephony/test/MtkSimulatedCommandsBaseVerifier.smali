.class public Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;
.super Ljava/lang/Object;
.source "MtkSimulatedCommandsBaseVerifier.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# static fields
.field private static sInstance:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static getInstance()Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;
    .registers 1

    .line 51
    sget-object v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->sInstance:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    if-nez v0, :cond_b

    .line 52
    new-instance v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->sInstance:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    .line 54
    :cond_b
    sget-object v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;->sInstance:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBaseVerifier;

    return-object v0
.end method


# virtual methods
.method public acceptCall(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 767
    return-void
.end method

.method public acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
    .registers 4
    .param p1, "success"    # Z
    .param p2, "ackPdu"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 912
    return-void
.end method

.method public acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
    .registers 4
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 907
    return-void
.end method

.method public acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .registers 4
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 902
    return-void
.end method

.method public cancelPendingUssd(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .line 1030
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .line 671
    return-void
.end method

.method public changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .param p1, "oldPin"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 650
    return-void
.end method

.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .param p1, "oldPin2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 660
    return-void
.end method

.method public changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .param p1, "oldPin2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "aidPtr"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .line 665
    return-void
.end method

.method public changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .param p1, "oldPin"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "aidPtr"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .line 655
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 747
    return-void
.end method

.method public deactivateDataCall(IILandroid/os/Message;)V
    .registers 4
    .param p1, "cid"    # I
    .param p2, "reason"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1209
    return-void
.end method

.method public deleteSmsOnRuim(ILandroid/os/Message;)V
    .registers 3
    .param p1, "index"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 882
    return-void
.end method

.method public deleteSmsOnSim(ILandroid/os/Message;)V
    .registers 3
    .param p1, "index"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 877
    return-void
.end method

.method public dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILandroid/os/Message;)V
    .registers 7
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "isEmergencyCall"    # Z
    .param p3, "emergencyNumberInfo"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p4, "hasKnownUserIntentEmergency"    # Z
    .param p5, "clirMode"    # I
    .param p6, "result"    # Landroid/os/Message;

    .line 696
    return-void
.end method

.method public dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .registers 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "isEmergencyCall"    # Z
    .param p3, "emergencyNumberInfo"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p4, "hasKnownUserIntentEmergency"    # Z
    .param p5, "clirMode"    # I
    .param p6, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p7, "result"    # Landroid/os/Message;

    .line 702
    return-void
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .line 1229
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 777
    return-void
.end method

.method public getAllowedNetworkTypesBitmap(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .line 1066
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .line 981
    return-void
.end method

.method public getBasebandVersion(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .line 996
    return-void
.end method

.method public getCDMASubscription(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .line 1156
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .line 934
    return-void
.end method

.method public getCdmaBroadcastConfig(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 1224
    return-void
.end method

.method public getCdmaSubscriptionSource(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .line 1186
    return-void
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 681
    return-void
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 691
    return-void
.end method

.method public getDataRegistrationState(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .line 817
    return-void
.end method

.method public getDeviceIdentity(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .line 1151
    return-void
.end method

.method public getGsmBroadcastConfig(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .line 1146
    return-void
.end method

.method public getHardwareConfig(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 1327
    return-void
.end method

.method public getIMEI(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 717
    return-void
.end method

.method public getIMEISV(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 722
    return-void
.end method

.method public getIMSI(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 707
    return-void
.end method

.method public getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 712
    return-void
.end method

.method public getIccCardStatus(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 1234
    return-void
.end method

.method public getIccSlotsStatus(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 1238
    return-void
.end method

.method public getImsRegistrationState(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 65
    return-void
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 782
    return-void
.end method

.method public getLastDataCallFailCause(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 792
    return-void
.end method

.method public getLastPdpFailCause(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 787
    return-void
.end method

.method public getLteOnCdmaMode()I
    .registers 2

    .line 1245
    const/4 v0, 0x0

    return v0
.end method

.method public getMute(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .line 802
    return-void
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .line 976
    return-void
.end method

.method public getOperator(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .line 822
    return-void
.end method

.method public getPDPContextList(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 686
    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .line 1055
    return-void
.end method

.method public getPreferredVoicePrivacy(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 757
    return-void
.end method

.method public getRadioCapability(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 1358
    return-void
.end method

.method public getRadioState()I
    .registers 2

    .line 59
    const/4 v0, 0x2

    return v0
.end method

.method public getRilVersion()I
    .registers 2

    .line 1331
    const/4 v0, 0x0

    return v0
.end method

.method public getSignalStrength(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .line 807
    return-void
.end method

.method public getSimPhonebookCapacity(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 1488
    return-void
.end method

.method public getSimPhonebookRecords(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 1484
    return-void
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 1076
    return-void
.end method

.method public getVoiceRadioTechnology(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 1257
    return-void
.end method

.method public getVoiceRegistrationState(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .line 812
    return-void
.end method

.method public handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
    .registers 3
    .param p1, "accept"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .line 1131
    return-void
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .registers 3
    .param p1, "gsmIndex"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 727
    return-void
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 737
    return-void
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 732
    return-void
.end method

.method public iccCloseLogicalChannel(ILandroid/os/Message;)V
    .registers 3
    .param p1, "channel"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1300
    return-void
.end method

.method public iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 10
    .param p1, "command"    # I
    .param p2, "fileid"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;
    .param p9, "response"    # Landroid/os/Message;

    .line 918
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
    .param p10, "response"    # Landroid/os/Message;

    .line 924
    return-void
.end method

.method public iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V
    .registers 4
    .param p1, "AID"    # Ljava/lang/String;
    .param p2, "p2"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 1295
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

    .line 1312
    return-void
.end method

.method public iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .registers 9
    .param p1, "channel"    # I
    .param p2, "cla"    # I
    .param p3, "instruction"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "response"    # Landroid/os/Message;

    .line 1306
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .registers 3
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .line 1096
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .param p1, "strings"    # [Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 1101
    return-void
.end method

.method public nvResetConfig(ILandroid/os/Message;)V
    .registers 3
    .param p1, "resetType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1322
    return-void
.end method

.method public nvWriteCdmaPrl([BLandroid/os/Message;)V
    .registers 3
    .param p1, "preferredRoamingList"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .line 1317
    return-void
.end method

.method public pullLceData(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 1383
    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .line 1045
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .line 929
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .registers 5
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 961
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .registers 3
    .param p1, "serviceClass"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 944
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .line 1171
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .registers 5
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 1002
    return-void
.end method

.method public queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .registers 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "appId"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    .line 1008
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .line 1196
    return-void
.end method

.method public registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 515
    return-void
.end method

.method public registerForApnUnthrottled(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 190
    return-void
.end method

.method public registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 110
    return-void
.end method

.method public registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 160
    return-void
.end method

.method public registerForCallWaitingInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 465
    return-void
.end method

.method public registerForCarrierInfoForImsiEncryption(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1438
    return-void
.end method

.method public registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 540
    return-void
.end method

.method public registerForCdmaPrlChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 580
    return-void
.end method

.method public registerForCdmaSubscriptionChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 570
    return-void
.end method

.method public registerForCellInfoList(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1262
    return-void
.end method

.method public registerForDataCallListChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 180
    return-void
.end method

.method public registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 455
    return-void
.end method

.method public registerForEmergencyNumberList(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1462
    return-void
.end method

.method public registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 590
    return-void
.end method

.method public registerForHardwareConfigChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 240
    return-void
.end method

.method public registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 340
    return-void
.end method

.method public registerForIccSlotStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 150
    return-void
.end method

.method public registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 140
    return-void
.end method

.method public registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 90
    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 210
    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 200
    return-void
.end method

.method public registerForLceInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1388
    return-void
.end method

.method public registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 505
    return-void
.end method

.method public registerForModemReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1411
    return-void
.end method

.method public registerForNattKeepaliveStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1454
    return-void
.end method

.method public registerForNetworkScanResult(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1442
    return-void
.end method

.method public registerForNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 170
    return-void
.end method

.method public registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 120
    return-void
.end method

.method public registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 485
    return-void
.end method

.method public registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 130
    return-void
.end method

.method public registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 100
    return-void
.end method

.method public registerForPcoData(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1403
    return-void
.end method

.method public registerForPhysicalChannelConfiguration(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1271
    return-void
.end method

.method public registerForRadioCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1363
    return-void
.end method

.method public registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 70
    return-void
.end method

.method public registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 495
    return-void
.end method

.method public registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 560
    return-void
.end method

.method public registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 600
    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 550
    return-void
.end method

.method public registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 475
    return-void
.end method

.method public registerForSimPhonebookChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1496
    return-void
.end method

.method public registerForSimPhonebookRecordsReceived(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1504
    return-void
.end method

.method public registerForSrvccStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 220
    return-void
.end method

.method public registerForSubscriptionStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 230
    return-void
.end method

.method public registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 525
    return-void
.end method

.method public registerForVoiceRadioTechChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 80
    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 772
    return-void
.end method

.method public reportSmsMemoryStatus(ZLandroid/os/Message;)V
    .registers 3
    .param p1, "available"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 1086
    return-void
.end method

.method public reportStkServiceIsRunning(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 1091
    return-void
.end method

.method public requestIccSimAuthentication(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .param p1, "authContext"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 1252
    return-void
.end method

.method public requestShutdown(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 1348
    return-void
.end method

.method public resetRadio(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 1035
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .registers 5
    .param p1, "dtmfString"    # Ljava/lang/String;
    .param p2, "on"    # I
    .param p3, "off"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 842
    return-void
.end method

.method public sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .param p1, "FeatureCode"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 1161
    return-void
.end method

.method public sendCdmaSMSExpectMore([BLandroid/os/Message;)V
    .registers 3
    .param p1, "pdu"    # [B
    .param p2, "result"    # Landroid/os/Message;

    .line 861
    return-void
.end method

.method public sendCdmaSms([BLandroid/os/Message;)V
    .registers 3
    .param p1, "pdu"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .line 857
    return-void
.end method

.method public sendDeviceState(IZLandroid/os/Message;)V
    .registers 4
    .param p1, "stateType"    # I
    .param p2, "state"    # Z
    .param p3, "result"    # Landroid/os/Message;

    .line 1419
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .registers 3
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 827
    return-void
.end method

.method public sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 1121
    return-void
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 1126
    return-void
.end method

.method public sendImsCdmaSms([BIILandroid/os/Message;)V
    .registers 5
    .param p1, "pdu"    # [B
    .param p2, "retry"    # I
    .param p3, "messageRef"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 872
    return-void
.end method

.method public sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V
    .registers 6
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "retry"    # I
    .param p4, "messageRef"    # I
    .param p5, "response"    # Landroid/os/Message;

    .line 867
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 847
    return-void
.end method

.method public sendSMSExpectMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 852
    return-void
.end method

.method public sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 1116
    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .param p1, "ussdString"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 1025
    return-void
.end method

.method public separateConnection(ILandroid/os/Message;)V
    .registers 3
    .param p1, "gsmIndex"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 762
    return-void
.end method

.method public setAllowedNetworkTypesBitmap(ILandroid/os/Message;)V
    .registers 3
    .param p1, "networkTypeBitmask"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1061
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .registers 3
    .param p1, "bandMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1040
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .registers 3
    .param p1, "clirMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 939
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .registers 7
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "response"    # Landroid/os/Message;

    .line 955
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .registers 4
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 949
    return-void
.end method

.method public setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;Landroid/os/Message;)V
    .registers 3
    .param p1, "imsiEncryptionInfo"    # Landroid/telephony/ImsiEncryptionInfo;
    .param p2, "result"    # Landroid/os/Message;

    .line 1399
    return-void
.end method

.method public setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    .registers 3
    .param p1, "activate"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 1214
    return-void
.end method

.method public setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;Landroid/os/Message;)V
    .registers 3
    .param p1, "configs"    # [Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
    .param p2, "response"    # Landroid/os/Message;

    .line 1219
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .registers 3
    .param p1, "cdmaRoamingType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1176
    return-void
.end method

.method public setCdmaSubscriptionSource(ILandroid/os/Message;)V
    .registers 3
    .param p1, "cdmaSubscriptionType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1181
    return-void
.end method

.method public setDataAllowed(ZLandroid/os/Message;)V
    .registers 3
    .param p1, "allowed"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 1343
    return-void
.end method

.method public setDataProfile([Landroid/telephony/data/DataProfile;ZLandroid/os/Message;)V
    .registers 4
    .param p1, "dps"    # [Landroid/telephony/data/DataProfile;
    .param p2, "isRoaming"    # Z
    .param p3, "result"    # Landroid/os/Message;

    .line 1285
    return-void
.end method

.method public setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 535
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .registers 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "response"    # Landroid/os/Message;

    .line 1014
    return-void
.end method

.method public setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .registers 7
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "appId"    # Ljava/lang/String;
    .param p6, "response"    # Landroid/os/Message;

    .line 1020
    return-void
.end method

.method public setGsmBroadcastActivation(ZLandroid/os/Message;)V
    .registers 3
    .param p1, "activate"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 1136
    return-void
.end method

.method public setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .registers 3
    .param p1, "config"    # [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .param p2, "response"    # Landroid/os/Message;

    .line 1141
    return-void
.end method

.method public setInitialAttachApn(Landroid/telephony/data/DataProfile;ZLandroid/os/Message;)V
    .registers 4
    .param p1, "dataProfile"    # Landroid/telephony/data/DataProfile;
    .param p2, "isRoaming"    # Z
    .param p3, "result"    # Landroid/os/Message;

    .line 1280
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

    .line 1434
    return-void
.end method

.method public setLocationUpdates(ZLandroid/os/Message;)V
    .registers 3
    .param p1, "enable"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .line 1071
    return-void
.end method

.method public setLogicalToPhysicalSlotMapping([ILandroid/os/Message;)V
    .registers 3
    .param p1, "physicalSlots"    # [I
    .param p2, "result"    # Landroid/os/Message;

    .line 1242
    return-void
.end method

.method public setMute(ZLandroid/os/Message;)V
    .registers 3
    .param p1, "enableMute"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .line 797
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .line 966
    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;ILandroid/os/Message;)V
    .registers 4
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "ran"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 971
    return-void
.end method

.method public setOnCallRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 360
    return-void
.end method

.method public setOnCatCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 420
    return-void
.end method

.method public setOnCatCcAlphaNotify(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 435
    return-void
.end method

.method public setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 410
    return-void
.end method

.method public setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 400
    return-void
.end method

.method public setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 390
    return-void
.end method

.method public setOnIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 350
    return-void
.end method

.method public setOnIccSmsFull(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 330
    return-void
.end method

.method public setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 300
    return-void
.end method

.method public setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 260
    return-void
.end method

.method public setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 270
    return-void
.end method

.method public setOnNewGsmSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 250
    return-void
.end method

.method public setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 370
    return-void
.end method

.method public setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 320
    return-void
.end method

.method public setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 280
    return-void
.end method

.method public setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 290
    return-void
.end method

.method public setOnSs(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 445
    return-void
.end method

.method public setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 380
    return-void
.end method

.method public setOnUSSD(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 310
    return-void
.end method

.method public setOnUnsolOemHookRaw(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1106
    return-void
.end method

.method public setPhoneType(I)V
    .registers 2
    .param p1, "phoneType"    # I

    .line 1166
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .registers 3
    .param p1, "networkType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1050
    return-void
.end method

.method public setPreferredVoicePrivacy(ZLandroid/os/Message;)V
    .registers 3
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 752
    return-void
.end method

.method public setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V
    .registers 3
    .param p1, "rc"    # Lcom/android/internal/telephony/RadioCapability;
    .param p2, "result"    # Landroid/os/Message;

    .line 1353
    return-void
.end method

.method public setRadioPower(ZLandroid/os/Message;)V
    .registers 3
    .param p1, "on"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .line 897
    return-void
.end method

.method public setSignalStrengthReportingCriteria(Landroid/telephony/SignalThresholdInfo;ILandroid/os/Message;)V
    .registers 4
    .param p1, "signalThresholdInfo"    # Landroid/telephony/SignalThresholdInfo;
    .param p2, "ran"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1428
    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 1081
    return-void
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .registers 3
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 430
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .registers 3
    .param p1, "ttyMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1191
    return-void
.end method

.method public setUiccSubscription(IIIILandroid/os/Message;)V
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "appIndex"    # I
    .param p3, "subId"    # I
    .param p4, "subStatus"    # I
    .param p5, "result"    # Landroid/os/Message;

    .line 1338
    return-void
.end method

.method public setUnsolResponseFilter(ILandroid/os/Message;)V
    .registers 3
    .param p1, "filter"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1423
    return-void
.end method

.method public setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/os/Message;)V
    .registers 12
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

    .line 1204
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .registers 3
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 832
    return-void
.end method

.method public startLceService(IZLandroid/os/Message;)V
    .registers 4
    .param p1, "reportIntervalMs"    # I
    .param p2, "pullMode"    # Z
    .param p3, "result"    # Landroid/os/Message;

    .line 1373
    return-void
.end method

.method public startNattKeepalive(ILandroid/net/KeepalivePacketData;ILandroid/os/Message;)V
    .registers 5
    .param p1, "contextId"    # I
    .param p2, "packetData"    # Landroid/net/KeepalivePacketData;
    .param p3, "intervalMillis"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 1471
    return-void
.end method

.method public startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V
    .registers 3
    .param p1, "nsr"    # Landroid/telephony/NetworkScanRequest;
    .param p2, "response"    # Landroid/os/Message;

    .line 986
    return-void
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 837
    return-void
.end method

.method public stopLceService(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 1378
    return-void
.end method

.method public stopNattKeepalive(ILandroid/os/Message;)V
    .registers 3
    .param p1, "sessionHandle"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1475
    return-void
.end method

.method public stopNetworkScan(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .line 991
    return-void
.end method

.method public supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 610
    return-void
.end method

.method public supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .param p1, "pin2"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 630
    return-void
.end method

.method public supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .param p1, "pin2"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 635
    return-void
.end method

.method public supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 615
    return-void
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 620
    return-void
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .param p1, "puk2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 640
    return-void
.end method

.method public supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .param p1, "puk2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .line 645
    return-void
.end method

.method public supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .line 625
    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .param p1, "netpin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 676
    return-void
.end method

.method public supplySimDepersonalization(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .param p1, "persoType"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    .param p2, "controlKey"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 1480
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 742
    return-void
.end method

.method public testingEmergencyCall()V
    .registers 1

    .line 1290
    return-void
.end method

.method public unSetOnCallRing(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 365
    return-void
.end method

.method public unSetOnCatCallSetUp(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 425
    return-void
.end method

.method public unSetOnCatCcAlphaNotify(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 440
    return-void
.end method

.method public unSetOnCatEvent(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 415
    return-void
.end method

.method public unSetOnCatProactiveCmd(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 405
    return-void
.end method

.method public unSetOnCatSessionEnd(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 395
    return-void
.end method

.method public unSetOnIccSmsFull(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 335
    return-void
.end method

.method public unSetOnNITZTime(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 305
    return-void
.end method

.method public unSetOnNewCdmaSms(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 265
    return-void
.end method

.method public unSetOnNewGsmBroadcastSms(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 275
    return-void
.end method

.method public unSetOnNewGsmSms(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 255
    return-void
.end method

.method public unSetOnRestrictedStateChanged(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 375
    return-void
.end method

.method public unSetOnSignalStrengthUpdate(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 325
    return-void
.end method

.method public unSetOnSmsOnSim(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 285
    return-void
.end method

.method public unSetOnSmsStatus(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 295
    return-void
.end method

.method public unSetOnSs(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 450
    return-void
.end method

.method public unSetOnSuppServiceNotification(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 385
    return-void
.end method

.method public unSetOnUSSD(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 315
    return-void
.end method

.method public unSetOnUnsolOemHookRaw(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 1111
    return-void
.end method

.method public unregisterForApnUnthrottled(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 195
    return-void
.end method

.method public unregisterForAvailable(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 115
    return-void
.end method

.method public unregisterForCallStateChanged(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 165
    return-void
.end method

.method public unregisterForCallWaitingInfo(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 470
    return-void
.end method

.method public unregisterForCarrierInfoForImsiEncryption(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 1450
    return-void
.end method

.method public unregisterForCdmaOtaProvision(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 545
    return-void
.end method

.method public unregisterForCdmaPrlChanged(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 585
    return-void
.end method

.method public unregisterForCdmaSubscriptionChanged(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 575
    return-void
.end method

.method public unregisterForCellInfoList(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 1267
    return-void
.end method

.method public unregisterForDataCallListChanged(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 185
    return-void
.end method

.method public unregisterForDisplayInfo(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 460
    return-void
.end method

.method public unregisterForEmergencyNumberList(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 1466
    return-void
.end method

.method public unregisterForExitEmergencyCallbackMode(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 595
    return-void
.end method

.method public unregisterForHardwareConfigChanged(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 245
    return-void
.end method

.method public unregisterForIccRefresh(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 345
    return-void
.end method

.method public unregisterForIccSlotStatusChanged(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 155
    return-void
.end method

.method public unregisterForIccStatusChanged(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 145
    return-void
.end method

.method public unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 95
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 215
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 205
    return-void
.end method

.method public unregisterForLceInfo(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 1393
    return-void
.end method

.method public unregisterForLineControlInfo(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 510
    return-void
.end method

.method public unregisterForModemReset(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 1415
    return-void
.end method

.method public unregisterForNattKeepaliveStatus(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 1458
    return-void
.end method

.method public unregisterForNetworkScanResult(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 1446
    return-void
.end method

.method public unregisterForNetworkStateChanged(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 175
    return-void
.end method

.method public unregisterForNotAvailable(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 125
    return-void
.end method

.method public unregisterForNumberInfo(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 490
    return-void
.end method

.method public unregisterForOffOrNotAvailable(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 135
    return-void
.end method

.method public unregisterForOn(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 105
    return-void
.end method

.method public unregisterForPcoData(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 1407
    return-void
.end method

.method public unregisterForPhysicalChannelConfiguration(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 1275
    return-void
.end method

.method public unregisterForRadioCapabilityChanged(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 1368
    return-void
.end method

.method public unregisterForRadioStateChanged(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 75
    return-void
.end method

.method public unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 500
    return-void
.end method

.method public unregisterForResendIncallMute(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 565
    return-void
.end method

.method public unregisterForRilConnected(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 605
    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 555
    return-void
.end method

.method public unregisterForSignalInfo(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 480
    return-void
.end method

.method public unregisterForSimPhonebookChanged(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 1500
    return-void
.end method

.method public unregisterForSimPhonebookRecordsReceived(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 1508
    return-void
.end method

.method public unregisterForSrvccStateChanged(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 225
    return-void
.end method

.method public unregisterForSubscriptionStatusChanged(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 235
    return-void
.end method

.method public unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 530
    return-void
.end method

.method public unregisterForT53ClirInfo(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 520
    return-void
.end method

.method public unregisterForVoiceRadioTechChanged(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 85
    return-void
.end method

.method public unsetOnIccRefresh(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 355
    return-void
.end method

.method public updateSimPhonebookRecord(Lcom/android/internal/telephony/uicc/SimPhonebookRecord;Landroid/os/Message;)V
    .registers 3
    .param p1, "phonebookRecordInfo"    # Lcom/android/internal/telephony/uicc/SimPhonebookRecord;
    .param p2, "result"    # Landroid/os/Message;

    .line 1492
    return-void
.end method

.method public writeSmsToRuim(I[BLandroid/os/Message;)V
    .registers 4
    .param p1, "status"    # I
    .param p2, "pdu"    # [B
    .param p3, "response"    # Landroid/os/Message;

    .line 892
    return-void
.end method

.method public writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .param p1, "status"    # I
    .param p2, "smsc"    # Ljava/lang/String;
    .param p3, "pdu"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 887
    return-void
.end method

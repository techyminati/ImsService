.class public Lcom/mediatek/internal/telephony/MtkRadioExIndicationBase;
.super Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;
.source "MtkRadioExIndicationBase.java"


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .registers 2
    .param p1, "ril"    # Lcom/android/internal/telephony/RIL;

    .line 92
    invoke-direct {p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;-><init>()V

    .line 93
    return-void
.end method


# virtual methods
.method public bipProactiveCommand(ILjava/lang/String;)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "cmd"    # Ljava/lang/String;

    .line 278
    return-void
.end method

.method public callAdditionalInfoInd(IILjava/util/ArrayList;)V
    .registers 4
    .param p1, "indicationType"    # I
    .param p2, "ciType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 110
    .local p3, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public cdmaCallAccepted(I)V
    .registers 2
    .param p1, "indicationType"    # I

    .line 125
    return-void
.end method

.method public cfuStatusNotify(ILvendor/mediatek/hardware/mtkradioex/V3_0/CfuStatusNotification;)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "cfuStatus"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/CfuStatusNotification;

    .line 101
    return-void
.end method

.method public cipherIndication(ILvendor/mediatek/hardware/mtkradioex/V3_0/CipherNotification;)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "cipherNotify"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/CipherNotification;

    .line 114
    return-void
.end method

.method public confSRVCC(ILjava/util/ArrayList;)V
    .registers 3
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 342
    .local p2, "callIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public crssIndication(ILvendor/mediatek/hardware/mtkradioex/V3_0/CrssNotification;)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "crssNotification"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/CrssNotification;

    .line 121
    return-void
.end method

.method public currentSignalStrengthWithWcdmaEcioInd(ILvendor/mediatek/hardware/mtkradioex/V3_0/SignalStrengthWithWcdmaEcio;)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "signalStrength"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/SignalStrengthWithWcdmaEcio;

    .line 97
    return-void
.end method

.method public dedicatedBearerActivationInd(ILvendor/mediatek/hardware/mtkradioex/V3_0/DedicateDataCall;)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "ddcResult"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/DedicateDataCall;

    .line 351
    return-void
.end method

.method public dedicatedBearerDeactivationInd(II)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "ddcResult"    # I

    .line 355
    return-void
.end method

.method public dedicatedBearerModificationInd(ILvendor/mediatek/hardware/mtkradioex/V3_0/DedicateDataCall;)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "ddcResult"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/DedicateDataCall;

    .line 353
    return-void
.end method

.method public dsbpStateChanged(II)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "dsbpState"    # I

    .line 381
    return-void
.end method

.method public eMBMSAtInfoIndication(ILjava/lang/String;)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "info"    # Ljava/lang/String;

    .line 213
    return-void
.end method

.method public eMBMSSessionStatusIndication(II)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "status"    # I

    .line 204
    return-void
.end method

.method public eccNumIndication(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "indicationType"    # I
    .param p2, "eccListWithCard"    # Ljava/lang/String;
    .param p3, "eccListNoCard"    # Ljava/lang/String;

    .line 129
    return-void
.end method

.method public esnMeidChangeInd(ILjava/lang/String;)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "esnMeid"    # Ljava/lang/String;

    .line 271
    return-void
.end method

.method public gmssRatChangedIndication(ILjava/util/ArrayList;)V
    .registers 3
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 239
    .local p2, "gmsss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public iccidChanged(ILjava/lang/String;)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "iccid"    # Ljava/lang/String;

    .line 411
    return-void
.end method

.method public incomingCallIndication(ILvendor/mediatek/hardware/mtkradioex/V3_0/IncomingCallNotification;)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "inCallNotify"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/IncomingCallNotification;

    .line 106
    return-void
.end method

.method public iwlanRegistrationStateInd(II)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "state"    # I

    .line 432
    return-void
.end method

.method public mdChangedApnInd(II)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "apnClassType"    # I

    .line 262
    return-void
.end method

.method public meSmsStorageFullInd(I)V
    .registers 2
    .param p1, "indicationType"    # I

    .line 187
    return-void
.end method

.method public mobileDataUsageInd(ILjava/util/ArrayList;)V
    .registers 3
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 399
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public networkBandInfoInd(ILjava/util/ArrayList;)V
    .registers 3
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 384
    .local p2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public networkInfoInd(ILjava/util/ArrayList;)V
    .registers 3
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 327
    .local p2, "networkinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public networkRejectCauseInd(ILjava/util/ArrayList;)V
    .registers 3
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 373
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public newEtwsInd(ILvendor/mediatek/hardware/mtkradioex/V3_0/EtwsNotification;)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "etws"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/EtwsNotification;

    .line 184
    return-void
.end method

.method public nrCaBandChangeInd(ILjava/util/ArrayList;)V
    .registers 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 435
    .local p2, "bands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public nrSysInfoInd(ILjava/util/ArrayList;)V
    .registers 3
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 446
    .local p2, "nrSysInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public oemHookRaw(ILjava/util/ArrayList;)V
    .registers 3
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 359
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    return-void
.end method

.method public on5GUWInfoInd(ILjava/util/ArrayList;)V
    .registers 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 438
    .local p2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public onCardDetectedInd(I)V
    .registers 2
    .param p1, "indicationType"    # I

    .line 179
    return-void
.end method

.method public onCellularQualityChangedInd(ILjava/util/ArrayList;)V
    .registers 3
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 396
    .local p2, "indStgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public onDsdaChangedInd(II)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "mode"    # I

    .line 390
    return-void
.end method

.method public onImeiLock(I)V
    .registers 2
    .param p1, "indicationType"    # I

    .line 173
    return-void
.end method

.method public onImsiRefreshDone(I)V
    .registers 2
    .param p1, "indicationType"    # I

    .line 176
    return-void
.end method

.method public onMccMncChanged(ILjava/lang/String;)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "mccmnc"    # Ljava/lang/String;

    .line 159
    return-void
.end method

.method public onMdDataRetryCountReset(I)V
    .registers 2
    .param p1, "indicationType"    # I

    .line 290
    return-void
.end method

.method public onNwCfgInfoInd(IZZZ)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "mimo"    # Z
    .param p3, "qam_256"    # Z
    .param p4, "qam_ul64"    # Z

    .line 426
    return-void
.end method

.method public onNwLimitInd(ILjava/util/ArrayList;)V
    .registers 3
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 402
    .local p2, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public onNwRrcStateInd(III)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "rat"    # I
    .param p3, "state"    # I

    .line 429
    return-void
.end method

.method public onPlmnDataInd(ILvendor/mediatek/hardware/mtkradioex/V3_0/PlmnMvnoInfo;)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "plmnMvnoInfo"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/PlmnMvnoInfo;

    .line 414
    return-void
.end method

.method public onPseudoCellInfoInd(ILjava/util/ArrayList;)V
    .registers 3
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 195
    .local p2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public onRemoveRestrictEutran(I)V
    .registers 2
    .param p1, "indicationType"    # I

    .line 292
    return-void
.end method

.method public onRsuEvent(IILjava/lang/String;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "eventId"    # I
    .param p3, "eventString"    # Ljava/lang/String;

    .line 417
    return-void
.end method

.method public onRsuSimLockEvent(II)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "eventId"    # I

    .line 319
    return-void
.end method

.method public onSimHotSwapInd(IILjava/lang/String;)V
    .registers 4
    .param p1, "indicationType"    # I
    .param p2, "event"    # I
    .param p3, "info"    # Ljava/lang/String;

    .line 301
    return-void
.end method

.method public onSimMeLockEvent(I)V
    .registers 2
    .param p1, "indicationType"    # I

    .line 330
    return-void
.end method

.method public onSimPowerChangedInd(ILjava/util/ArrayList;)V
    .registers 3
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 310
    .local p2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public onStkMenuReset(I)V
    .registers 2
    .param p1, "indicationType"    # I

    .line 287
    return-void
.end method

.method public onTxPowerIndication(ILjava/util/ArrayList;)V
    .registers 3
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 367
    .local p2, "txPower":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public onTxPowerStatusIndication(ILjava/util/ArrayList;)V
    .registers 3
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 370
    .local p2, "indPower":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public onVirtualSimOff(II)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "simInserted"    # I

    .line 167
    return-void
.end method

.method public onVirtualSimOn(II)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "simInserted"    # I

    .line 164
    return-void
.end method

.method public onVirtualSimStatusChanged(II)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "simInserted"    # I

    .line 170
    return-void
.end method

.method public onVsimEventIndication(ILvendor/mediatek/hardware/mtkradioex/V3_0/VsimOperationEvent;)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "event"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/VsimOperationEvent;

    .line 346
    return-void
.end method

.method public pcoDataAfterAttached(ILvendor/mediatek/hardware/mtkradioex/V3_0/PcoDataAttachedInfo;)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "pco"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/PcoDataAttachedInfo;

    .line 335
    return-void
.end method

.method public phbReadyNotification(II)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "isPhbReady"    # I

    .line 274
    return-void
.end method

.method public plmnChangedIndication(ILjava/util/ArrayList;)V
    .registers 3
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 223
    .local p2, "plmns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public qualifiedNetworkTypesChangedInd(ILjava/util/ArrayList;)V
    .registers 3
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 393
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public registrationSuspendedIndication(ILjava/util/ArrayList;)V
    .registers 3
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 231
    .local p2, "sessionIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public resetAttachApnInd(I)V
    .registers 2
    .param p1, "indicationType"    # I

    .line 254
    return-void
.end method

.method public responseCsNetworkStateChangeInd(ILjava/util/ArrayList;)V
    .registers 3
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 134
    .local p2, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public responseFemtocellInfo(ILjava/util/ArrayList;)V
    .registers 3
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 153
    .local p2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public responseInvalidSimInd(ILjava/util/ArrayList;)V
    .registers 3
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 150
    .local p2, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public responseLteNetworkInfo(II)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "info"    # I

    .line 156
    return-void
.end method

.method public responseModulationInfoInd(ILjava/util/ArrayList;)V
    .registers 3
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 146
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public responseNetworkEventInd(ILjava/util/ArrayList;)V
    .registers 3
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 142
    .local p2, "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public responsePsNetworkStateChangeInd(ILjava/util/ArrayList;)V
    .registers 3
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 138
    .local p2, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public sib16TimeInfoInd(ILjava/lang/String;J)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "arg2"    # J

    .line 423
    return-void
.end method

.method public smlSlotLockInfoChangedInd(ILjava/util/ArrayList;)V
    .registers 3
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 323
    .local p2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public smsInfoExtInd(ILjava/lang/String;)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "info"    # Ljava/lang/String;

    .line 387
    return-void
.end method

.method public smsReadyInd(I)V
    .registers 2
    .param p1, "indicationType"    # I

    .line 190
    return-void
.end method

.method public suppSvcNotifyEx(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "suppSvc"    # Landroid/hardware/radio/V1_0/SuppSvcNotification;

    .line 118
    return-void
.end method

.method public toeInfoInd(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "indicationType"    # I
    .param p2, "longName"    # Ljava/lang/String;
    .param p3, "shortName"    # Ljava/lang/String;
    .param p4, "numeric"    # Ljava/lang/String;

    .line 420
    return-void
.end method

.method public triggerOtaSP(I)V
    .registers 2
    .param p1, "indicationType"    # I

    .line 282
    return-void
.end method

.method public worldModeChangedIndication(ILjava/util/ArrayList;)V
    .registers 3
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 247
    .local p2, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.class public Lcom/mediatek/internal/telephony/MtkRadioExIndicationBaseV2;
.super Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;
.source "MtkRadioExIndicationBaseV2.java"


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .registers 2
    .param p1, "ril"    # Lcom/android/internal/telephony/RIL;

    .line 94
    invoke-direct {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;-><init>()V

    .line 95
    return-void
.end method


# virtual methods
.method public bipProactiveCommand(ILjava/lang/String;)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "cmd"    # Ljava/lang/String;

    .line 284
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

    .line 112
    .local p3, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public cdmaCallAccepted(I)V
    .registers 2
    .param p1, "indicationType"    # I

    .line 127
    return-void
.end method

.method public cfuStatusNotify(ILvendor/mediatek/hardware/mtkradioex/V2_0/CfuStatusNotification;)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "cfuStatus"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/CfuStatusNotification;

    .line 103
    return-void
.end method

.method public cipherIndication(ILvendor/mediatek/hardware/mtkradioex/V2_0/CipherNotification;)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "cipherNotify"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/CipherNotification;

    .line 116
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

    .line 348
    .local p2, "callIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public crssIndication(ILvendor/mediatek/hardware/mtkradioex/V2_0/CrssNotification;)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "crssNotification"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/CrssNotification;

    .line 123
    return-void
.end method

.method public currentSignalStrengthWithWcdmaEcioInd(ILvendor/mediatek/hardware/mtkradioex/V2_0/SignalStrengthWithWcdmaEcio;)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "signalStrength"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/SignalStrengthWithWcdmaEcio;

    .line 99
    return-void
.end method

.method public dataAllowedNotification(II)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "isAllowed"    # I

    .line 197
    return-void
.end method

.method public dedicatedBearerActivationInd(ILvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "ddcResult"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;

    .line 357
    return-void
.end method

.method public dedicatedBearerDeactivationInd(II)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "ddcResult"    # I

    .line 361
    return-void
.end method

.method public dedicatedBearerModificationInd(ILvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "ddcResult"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;

    .line 359
    return-void
.end method

.method public dsbpStateChanged(II)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "dsbpState"    # I

    .line 387
    return-void
.end method

.method public eMBMSAtInfoIndication(ILjava/lang/String;)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "info"    # Ljava/lang/String;

    .line 219
    return-void
.end method

.method public eMBMSSessionStatusIndication(II)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "status"    # I

    .line 210
    return-void
.end method

.method public eccNumIndication(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "indicationType"    # I
    .param p2, "eccListWithCard"    # Ljava/lang/String;
    .param p3, "eccListNoCard"    # Ljava/lang/String;

    .line 131
    return-void
.end method

.method public esnMeidChangeInd(ILjava/lang/String;)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "esnMeid"    # Ljava/lang/String;

    .line 277
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

    .line 245
    .local p2, "gmsss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public iccidChanged(ILjava/lang/String;)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "iccid"    # Ljava/lang/String;

    .line 417
    return-void
.end method

.method public incomingCallIndication(ILvendor/mediatek/hardware/mtkradioex/V2_0/IncomingCallNotification;)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "inCallNotify"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/IncomingCallNotification;

    .line 108
    return-void
.end method

.method public mdChangedApnInd(II)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "apnClassType"    # I

    .line 268
    return-void
.end method

.method public meSmsStorageFullInd(I)V
    .registers 2
    .param p1, "indicationType"    # I

    .line 189
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

    .line 405
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

    .line 390
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

    .line 333
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

    .line 379
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public newEtwsInd(ILvendor/mediatek/hardware/mtkradioex/V2_0/EtwsNotification;)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "etws"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/EtwsNotification;

    .line 186
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

    .line 365
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    return-void
.end method

.method public onCardDetectedInd(I)V
    .registers 2
    .param p1, "indicationType"    # I

    .line 181
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

    .line 402
    .local p2, "indStgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public onDsdaChangedInd(II)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "mode"    # I

    .line 396
    return-void
.end method

.method public onImeiLock(I)V
    .registers 2
    .param p1, "indicationType"    # I

    .line 175
    return-void
.end method

.method public onImsiRefreshDone(I)V
    .registers 2
    .param p1, "indicationType"    # I

    .line 178
    return-void
.end method

.method public onMccMncChanged(ILjava/lang/String;)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "mccmnc"    # Ljava/lang/String;

    .line 161
    return-void
.end method

.method public onMdDataRetryCountReset(I)V
    .registers 2
    .param p1, "indicationType"    # I

    .line 296
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

    .line 408
    .local p2, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public onPlmnDataInd(ILvendor/mediatek/hardware/mtkradioex/V2_0/PlmnMvnoInfo;)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "plmnMvnoInfo"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/PlmnMvnoInfo;

    .line 420
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

    .line 201
    .local p2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public onRemoveRestrictEutran(I)V
    .registers 2
    .param p1, "indicationType"    # I

    .line 298
    return-void
.end method

.method public onRsuEvent(IILjava/lang/String;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "eventId"    # I
    .param p3, "eventString"    # Ljava/lang/String;

    .line 423
    return-void
.end method

.method public onRsuSimLockEvent(II)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "eventId"    # I

    .line 325
    return-void
.end method

.method public onSimHotSwapInd(IILjava/lang/String;)V
    .registers 4
    .param p1, "indicationType"    # I
    .param p2, "event"    # I
    .param p3, "info"    # Ljava/lang/String;

    .line 307
    return-void
.end method

.method public onSimMeLockEvent(I)V
    .registers 2
    .param p1, "indicationType"    # I

    .line 336
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

    .line 316
    .local p2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public onStkMenuReset(I)V
    .registers 2
    .param p1, "indicationType"    # I

    .line 293
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

    .line 373
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

    .line 376
    .local p2, "indPower":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public onVirtualSimOff(II)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "simInserted"    # I

    .line 169
    return-void
.end method

.method public onVirtualSimOn(II)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "simInserted"    # I

    .line 166
    return-void
.end method

.method public onVirtualSimStatusChanged(II)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "simInserted"    # I

    .line 172
    return-void
.end method

.method public onVsimEventIndication(ILvendor/mediatek/hardware/mtkradioex/V2_0/VsimOperationEvent;)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "event"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimOperationEvent;

    .line 352
    return-void
.end method

.method public pcoDataAfterAttached(ILvendor/mediatek/hardware/mtkradioex/V2_0/PcoDataAttachedInfo;)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "pco"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/PcoDataAttachedInfo;

    .line 341
    return-void
.end method

.method public phbReadyNotification(II)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "isPhbReady"    # I

    .line 280
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

    .line 229
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

    .line 399
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

    .line 237
    .local p2, "sessionIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public resetAttachApnInd(I)V
    .registers 2
    .param p1, "indicationType"    # I

    .line 260
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

    .line 136
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

    .line 155
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

    .line 152
    .local p2, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public responseLteNetworkInfo(II)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "info"    # I

    .line 158
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

    .line 148
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

    .line 144
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

    .line 140
    .local p2, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
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

    .line 329
    .local p2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public smsInfoExtInd(ILjava/lang/String;)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "info"    # Ljava/lang/String;

    .line 393
    return-void
.end method

.method public smsReadyInd(I)V
    .registers 2
    .param p1, "indicationType"    # I

    .line 192
    return-void
.end method

.method public suppSvcNotifyEx(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V
    .registers 3
    .param p1, "indicationType"    # I
    .param p2, "suppSvc"    # Landroid/hardware/radio/V1_0/SuppSvcNotification;

    .line 120
    return-void
.end method

.method public triggerOtaSP(I)V
    .registers 2
    .param p1, "indicationType"    # I

    .line 288
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

    .line 253
    .local p2, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

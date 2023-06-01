.class public Lcom/mediatek/internal/telephony/MtkRadioExResponseBaseV2;
.super Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExResponse$Stub;
.source "MtkRadioExResponseBaseV2.java"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .registers 2
    .param p1, "ril"    # Lcom/android/internal/telephony/RIL;

    .line 80
    invoke-direct {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExResponse$Stub;-><init>()V

    .line 81
    return-void
.end method


# virtual methods
.method public abortFemtocellListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 517
    return-void
.end method

.method public acknowledgeRequest(I)V
    .registers 2
    .param p1, "serial"    # I

    .line 91
    return-void
.end method

.method public activateUiccCardRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "simPowerOnOffResponse"    # I

    .line 193
    return-void
.end method

.method public cancelAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 240
    return-void
.end method

.method public cfgA2offsetResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 246
    return-void
.end method

.method public cfgB1offsetResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 252
    return-void
.end method

.method public dataConnectionAttachResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 639
    return-void
.end method

.method public dataConnectionDetachResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 642
    return-void
.end method

.method public deactivateNrScgCommunicationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 699
    return-void
.end method

.method public deactivateUiccCardRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "simPowerOnOffResponse"    # I

    .line 200
    return-void
.end method

.method public deleteUPBEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 457
    return-void
.end method

.method public disableNRResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 264
    return-void
.end method

.method public eccPreferredRatResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 387
    return-void
.end method

.method public editUPBEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 454
    return-void
.end method

.method public enableCAPlusBandWidthFilterResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 663
    return-void
.end method

.method public enableDsdaIndicationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 683
    return-void
.end method

.method public enableSCGfailureResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 258
    return-void
.end method

.method public getATRResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "response"    # Ljava/lang/String;

    .line 173
    return-void
.end method

.method public getApcInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 405
    .local p2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public getAvailableNetworksWithActResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;",
            ">;)V"
        }
    .end annotation

    .line 226
    .local p2, "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;>;"
    return-void
.end method

.method public getCallSubAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "enable"    # I

    .line 395
    return-void
.end method

.method public getColpResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V
    .registers 4
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "n"    # I
    .param p3, "m"    # I

    .line 106
    return-void
.end method

.method public getColrResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "status"    # I

    .line 114
    return-void
.end method

.method public getCurrentPOLListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 574
    .local p2, "polList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public getCurrentUiccCardProvisioningStatusRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "simPowerOnOffStatus"    # I

    .line 208
    return-void
.end method

.method public getDeactivateNrScgCommunicationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V
    .registers 4
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "deactivate"    # I
    .param p3, "allowSCGAdd"    # I

    .line 703
    return-void
.end method

.method public getDsdaStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "mode"    # I

    .line 686
    return-void
.end method

.method public getEccNumResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 371
    return-void
.end method

.method public getFemtocellListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 514
    .local p2, "femtoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public getGsmBroadcastActivationRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "activation"    # I

    .line 327
    return-void
.end method

.method public getGsmBroadcastLangsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "langs"    # Ljava/lang/String;

    .line 323
    return-void
.end method

.method public getIccidResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "response"    # Ljava/lang/String;

    .line 180
    return-void
.end method

.method public getLteReleaseVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "mode"    # I

    .line 591
    return-void
.end method

.method public getPOLCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 570
    .local p2, "polCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public getPhoneBookMemStorageResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbMemStorageResponse;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "phbMemStorage"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbMemStorageResponse;

    .line 475
    return-void
.end method

.method public getPhoneBookStringsLengthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 471
    .local p2, "stringLength":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public getPlmnNameFromSE13TableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "name"    # Ljava/lang/String;

    .line 660
    return-void
.end method

.method public getRoamingEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 584
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public getRxTestResultResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 566
    .local p2, "respAntInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public getSignalStrengthWithWcdmaEcioResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/SignalStrengthWithWcdmaEcio;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "signalStrength"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/SignalStrengthWithWcdmaEcio;

    .line 234
    return-void
.end method

.method public getSmsMemStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "params"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;

    .line 315
    return-void
.end method

.method public getSmsParametersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "params"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;

    .line 299
    return-void
.end method

.method public getSmsRuimMemoryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "memStatus"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;

    .line 414
    return-void
.end method

.method public getSuggestedPlmnListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 693
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public handleStkCallSetupRequestFromSimWithResCodeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 435
    return-void
.end method

.method public hangupAllResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 347
    return-void
.end method

.method public hangupWithReasonResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 654
    return-void
.end method

.method public modifyModemTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "applyType"    # I

    .line 431
    return-void
.end method

.method public notifyEPDGScreenStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 627
    return-void
.end method

.method public queryCallForwardInTimeSlotStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;",
            ">;)V"
        }
    .end annotation

    .line 143
    .local p2, "callForwardInfoExs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;>;"
    return-void
.end method

.method public queryFemtoCellSystemSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "mode"    # I

    .line 524
    return-void
.end method

.method public queryNetworkLockResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;IIIIIII)V
    .registers 9
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "catagory"    # I
    .param p3, "state"    # I
    .param p4, "retry_cnt"    # I
    .param p5, "autolock_cnt"    # I
    .param p6, "num_set"    # I
    .param p7, "total_set"    # I
    .param p8, "key_state"    # I

    .line 543
    return-void
.end method

.method public queryPhbStorageInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 440
    .local p2, "storageInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public queryUPBAvailableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 489
    .local p2, "upbAvailable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public queryUPBCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 451
    .local p2, "upbCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public readPhbEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;",
            ">;)V"
        }
    .end annotation

    .line 447
    .local p2, "phbEntry":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;>;"
    return-void
.end method

.method public readPhoneBookEntryExtResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;",
            ">;)V"
        }
    .end annotation

    .line 482
    .local p2, "phbEntryExts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;>;"
    return-void
.end method

.method public readUPBAasListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 502
    .local p2, "aasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public readUPBAnrEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;",
            ">;)V"
        }
    .end annotation

    .line 499
    .local p2, "anrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;>;"
    return-void
.end method

.method public readUPBEmailEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "email"    # Ljava/lang/String;

    .line 492
    return-void
.end method

.method public readUPBGasListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 460
    .local p2, "gasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public readUPBGrpEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 464
    .local p2, "grpEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public readUPBSneEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "sne"    # Ljava/lang/String;

    .line 495
    return-void
.end method

.method public registerCellQltyReportResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 689
    return-void
.end method

.method public removeCbMsgResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 310
    return-void
.end method

.method public resetAllConnectionsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 645
    return-void
.end method

.method public resetMdDataRetryCountResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 534
    return-void
.end method

.method public restartRILDResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 509
    return-void
.end method

.method public runGbaAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 158
    .local p2, "resList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public selectFemtocellResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 520
    return-void
.end method

.method public sendCnapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V
    .registers 4
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "n"    # I
    .param p3, "m"    # I

    .line 122
    return-void
.end method

.method public sendEmbmsAtCommandResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "result"    # Ljava/lang/String;

    .line 338
    return-void
.end method

.method public sendOemRilRequestRawResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 162
    .local p2, "var2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    return-void
.end method

.method public sendRequestRawResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 633
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    return-void
.end method

.method public sendRequestStringsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 636
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public sendRsuRequestResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "data"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuResponseInfo;

    .line 709
    return-void
.end method

.method public sendSarIndicatorResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 706
    return-void
.end method

.method public sendWifiAssociatedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 716
    return-void
.end method

.method public sendWifiEnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 713
    return-void
.end method

.method public sendWifiIpAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 719
    return-void
.end method

.method public setApcModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 401
    return-void
.end method

.method public setBgsrchDeltaSleepTimerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 288
    return-void
.end method

.method public setCallForwardInTimeSlotResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 150
    return-void
.end method

.method public setCallIndicationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 353
    return-void
.end method

.method public setCallSubAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 392
    return-void
.end method

.method public setCallValidTimerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 670
    return-void
.end method

.method public setClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 98
    return-void
.end method

.method public setColpResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 128
    return-void
.end method

.method public setColrResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 134
    return-void
.end method

.method public setEccModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 379
    return-void
.end method

.method public setEccNumResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 365
    return-void
.end method

.method public setEmergencyAddressIdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 617
    return-void
.end method

.method public setEtwsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 306
    return-void
.end method

.method public setFdModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 418
    return-void
.end method

.method public setFemtoCellSystemSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 527
    return-void
.end method

.method public setGsmBroadcastLangsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 319
    return-void
.end method

.method public setGwsdModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 667
    return-void
.end method

.method public setIgnoreSameNumberIntervalResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 673
    return-void
.end method

.method public setKeepAliveByIpDataResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 679
    return-void
.end method

.method public setKeepAliveByPDCPCtrlPDUResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 676
    return-void
.end method

.method public setLocationInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 614
    return-void
.end method

.method public setLteReleaseVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 588
    return-void
.end method

.method public setMaxUlSpeedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 696
    return-void
.end method

.method public setModemPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 294
    return-void
.end method

.method public setNattKeepAliveStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 620
    return-void
.end method

.method public setNetworkLockResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 545
    return-void
.end method

.method public setNetworkSelectionModeManualWithActResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 216
    return-void
.end method

.method public setPOLEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 577
    return-void
.end method

.method public setPhoneBookMemStorageResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 478
    return-void
.end method

.method public setPhonebookReadyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 505
    return-void
.end method

.method public setRemoveRestrictEutranModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 537
    return-void
.end method

.method public setResumeRegistrationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 424
    return-void
.end method

.method public setRoamingEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 581
    return-void
.end method

.method public setRxTestConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 562
    .local p2, "respAntConf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public setSearchRatResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 282
    return-void
.end method

.method public setSearchStoredFreqInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 276
    return-void
.end method

.method public setServiceStateToModemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 630
    return-void
.end method

.method public setSimPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 186
    return-void
.end method

.method public setSmsParametersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 303
    return-void
.end method

.method public setSuppServPropertyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 651
    return-void
.end method

.method public setTrmResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 165
    return-void
.end method

.method public setTxPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 270
    return-void
.end method

.method public setTxPowerStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 648
    return-void
.end method

.method public setVendorSettingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 657
    return-void
.end method

.method public setVoicePreferStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 359
    return-void
.end method

.method public setWifiAssociatedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 605
    return-void
.end method

.method public setWifiEnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 602
    return-void
.end method

.method public setWifiIpAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 611
    return-void
.end method

.method public setWifiPingResultResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 623
    return-void
.end method

.method public setWifiSignalLevelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 608
    return-void
.end method

.method public supplyDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "retriesRemaining"    # I

    .line 553
    return-void
.end method

.method public supplyDeviceNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "remainingAttempts"    # I

    .line 557
    return-void
.end method

.method public syncDataSettingsToMdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 531
    return-void
.end method

.method public triggerModeSwitchByEccResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 409
    return-void
.end method

.method public vsimNotificationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimEvent;)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "event"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimEvent;

    .line 595
    return-void
.end method

.method public vsimOperationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 598
    return-void
.end method

.method public writePhbEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 443
    return-void
.end method

.method public writePhoneBookEntryExtResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 485
    return-void
.end method

.method public writeUPBGrpEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 467
    return-void
.end method

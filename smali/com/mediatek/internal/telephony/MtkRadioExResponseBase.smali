.class public Lcom/mediatek/internal/telephony/MtkRadioExResponseBase;
.super Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;
.source "MtkRadioExResponseBase.java"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .registers 2
    .param p1, "ril"    # Lcom/android/internal/telephony/RIL;

    .line 83
    invoke-direct {p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;-><init>()V

    .line 84
    return-void
.end method


# virtual methods
.method public abortFemtocellListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 520
    return-void
.end method

.method public acknowledgeRequest(I)V
    .registers 2
    .param p1, "serial"    # I

    .line 94
    return-void
.end method

.method public activateUiccCardRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "simPowerOnOffResponse"    # I

    .line 196
    return-void
.end method

.method public cancelAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 243
    return-void
.end method

.method public cfgA2offsetResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 249
    return-void
.end method

.method public cfgB1offsetResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 255
    return-void
.end method

.method public clearLteAvailableFileResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 793
    return-void
.end method

.method public dataConnectionAttachResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 642
    return-void
.end method

.method public dataConnectionDetachResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 645
    return-void
.end method

.method public deactivateNrScgCommunicationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 702
    return-void
.end method

.method public deactivateUiccCardRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "simPowerOnOffResponse"    # I

    .line 203
    return-void
.end method

.method public deleteUPBEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 460
    return-void
.end method

.method public disableAllCALinksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 729
    return-void
.end method

.method public eccPreferredRatResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 390
    return-void
.end method

.method public editUPBEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 457
    return-void
.end method

.method public enableCAPlusBandWidthFilterResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 666
    return-void
.end method

.method public enableDsdaIndicationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 686
    return-void
.end method

.method public enableSCGfailureResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 261
    return-void
.end method

.method public get4x4MimoEnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "enabled_bitmask"    # I

    .line 780
    return-void
.end method

.method public getATRResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "response"    # Ljava/lang/String;

    .line 176
    return-void
.end method

.method public getAllBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V3_0/BandModeInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "data"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/BandModeInfo;

    .line 825
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

    .line 408
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
            "Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;",
            ">;)V"
        }
    .end annotation

    .line 229
    .local p2, "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;>;"
    return-void
.end method

.method public getBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
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

    .line 797
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public getBandPriorityListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
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

    .line 770
    .local p2, "bandPriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public getCALinkCapabilityListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
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

    .line 739
    .local p2, "linkCapabilityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public getCALinkEnableStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "status"    # Z

    .line 732
    return-void
.end method

.method public getCaBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
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

    .line 801
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public getCallSubAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "enable"    # I

    .line 398
    return-void
.end method

.method public getCampedFemtoCellInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
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

    .line 805
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public getColpResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V
    .registers 4
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "n"    # I
    .param p3, "m"    # I

    .line 109
    return-void
.end method

.method public getColrResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "status"    # I

    .line 117
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

    .line 577
    .local p2, "polList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public getCurrentUiccCardProvisioningStatusRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "simPowerOnOffStatus"    # I

    .line 211
    return-void
.end method

.method public getDeactivateNrScgCommunicationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V
    .registers 4
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "deactivate"    # I
    .param p3, "allowSCGAdd"    # I

    .line 706
    return-void
.end method

.method public getDisable2GResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "mode"    # I

    .line 811
    return-void
.end method

.method public getDsdaStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "mode"    # I

    .line 689
    return-void
.end method

.method public getEccNumResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 374
    return-void
.end method

.method public getEngineeringModeInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 818
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
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

    .line 517
    .local p2, "femtoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public getGsmBroadcastActivationRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "activation"    # I

    .line 330
    return-void
.end method

.method public getGsmBroadcastLangsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "langs"    # Ljava/lang/String;

    .line 326
    return-void
.end method

.method public getIWlanRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "state"    # I

    .line 821
    return-void
.end method

.method public getIccidResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "response"    # Ljava/lang/String;

    .line 183
    return-void
.end method

.method public getLte1xRttCellListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/mtkradioex/V3_0/Lte1xRttCellInfo;",
            ">;)V"
        }
    .end annotation

    .line 790
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V3_0/Lte1xRttCellInfo;>;"
    return-void
.end method

.method public getLteBsrTimerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "timer"    # I

    .line 783
    return-void
.end method

.method public getLteDataResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V3_0/LteData;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "data"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/LteData;

    .line 742
    return-void
.end method

.method public getLteRRCStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "state"    # I

    .line 763
    return-void
.end method

.method public getLteReleaseVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "mode"    # I

    .line 594
    return-void
.end method

.method public getLteScanDurationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "duration"    # I

    .line 760
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

    .line 573
    .local p2, "polCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public getPhoneBookMemStorageResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbMemStorageResponse;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "phbMemStorage"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbMemStorageResponse;

    .line 478
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

    .line 474
    .local p2, "stringLength":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public getPlmnNameFromSE13TableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "name"    # Ljava/lang/String;

    .line 663
    return-void
.end method

.method public getQamEnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZZ)V
    .registers 4
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "ulOrDl"    # Z
    .param p3, "enabled"    # Z

    .line 748
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

    .line 587
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

    .line 569
    .local p2, "respAntInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public getSignalStrengthWithWcdmaEcioResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V3_0/SignalStrengthWithWcdmaEcio;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "signalStrength"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/SignalStrengthWithWcdmaEcio;

    .line 237
    return-void
.end method

.method public getSmsMemStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsMemStatus;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "params"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsMemStatus;

    .line 318
    return-void
.end method

.method public getSmsParametersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsParams;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "params"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsParams;

    .line 302
    return-void
.end method

.method public getSmsRuimMemoryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsMemStatus;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "memStatus"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsMemStatus;

    .line 417
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

    .line 696
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public getTOEInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "longName"    # Ljava/lang/String;
    .param p3, "shortName"    # Ljava/lang/String;
    .param p4, "numeric"    # Ljava/lang/String;

    .line 726
    return-void
.end method

.method public getTm9EnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZZ)V
    .registers 4
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "fddOrTdd"    # Z
    .param p3, "enabled"    # Z

    .line 754
    return-void
.end method

.method public handleStkCallSetupRequestFromSimWithResCodeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 438
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

    .line 350
    return-void
.end method

.method public hangupWithReasonResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 657
    return-void
.end method

.method public modifyModemTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "applyType"    # I

    .line 434
    return-void
.end method

.method public notifyEPDGScreenStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 630
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
            "Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;",
            ">;)V"
        }
    .end annotation

    .line 146
    .local p2, "callForwardInfoExs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;>;"
    return-void
.end method

.method public queryFemtoCellSystemSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "mode"    # I

    .line 527
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

    .line 546
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

    .line 443
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

    .line 492
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

    .line 454
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
            "Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryStructure;",
            ">;)V"
        }
    .end annotation

    .line 450
    .local p2, "phbEntry":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryStructure;>;"
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
            "Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryExt;",
            ">;)V"
        }
    .end annotation

    .line 485
    .local p2, "phbEntryExts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryExt;>;"
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

    .line 505
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
            "Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryStructure;",
            ">;)V"
        }
    .end annotation

    .line 502
    .local p2, "anrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryStructure;>;"
    return-void
.end method

.method public readUPBEmailEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "email"    # Ljava/lang/String;

    .line 495
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

    .line 463
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

    .line 467
    .local p2, "grpEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public readUPBSneEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "sne"    # Ljava/lang/String;

    .line 498
    return-void
.end method

.method public registerCellQltyReportResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 692
    return-void
.end method

.method public removeCbMsgResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 313
    return-void
.end method

.method public resetAllConnectionsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 648
    return-void
.end method

.method public resetMdDataRetryCountResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 537
    return-void
.end method

.method public restartRILDResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 512
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

    .line 161
    .local p2, "resList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public selectFemtocellResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 523
    return-void
.end method

.method public sendCnapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V
    .registers 4
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "n"    # I
    .param p3, "m"    # I

    .line 125
    return-void
.end method

.method public sendEmbmsAtCommandResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "result"    # Ljava/lang/String;

    .line 341
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

    .line 165
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

    .line 636
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

    .line 639
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public sendRsuRequestResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V3_0/RsuResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "data"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/RsuResponseInfo;

    .line 712
    return-void
.end method

.method public sendSarIndicatorResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 709
    return-void
.end method

.method public sendWifiAssociatedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 719
    return-void
.end method

.method public sendWifiEnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 716
    return-void
.end method

.method public sendWifiIpAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 722
    return-void
.end method

.method public set4x4MimoEnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 776
    return-void
.end method

.method public setApcModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 404
    return-void
.end method

.method public setBandPriorityListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 773
    return-void
.end method

.method public setBgsrchDeltaSleepTimerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 291
    return-void
.end method

.method public setCALinkEnableStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 735
    return-void
.end method

.method public setCallForwardInTimeSlotResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 153
    return-void
.end method

.method public setCallIndicationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 356
    return-void
.end method

.method public setCallSubAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 395
    return-void
.end method

.method public setCallValidTimerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 673
    return-void
.end method

.method public setClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 101
    return-void
.end method

.method public setColpResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 131
    return-void
.end method

.method public setColrResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 137
    return-void
.end method

.method public setDisable2GResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 808
    return-void
.end method

.method public setEccModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 382
    return-void
.end method

.method public setEccNumResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 368
    return-void
.end method

.method public setEmergencyAddressIdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 620
    return-void
.end method

.method public setEtwsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 309
    return-void
.end method

.method public setFdModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 421
    return-void
.end method

.method public setFemtoCellSystemSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 530
    return-void
.end method

.method public setGsmBroadcastLangsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 322
    return-void
.end method

.method public setGwsdModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 670
    return-void
.end method

.method public setIgnoreSameNumberIntervalResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 676
    return-void
.end method

.method public setKeepAliveByIpDataResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 682
    return-void
.end method

.method public setKeepAliveByPDCPCtrlPDUResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 679
    return-void
.end method

.method public setLocationInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 617
    return-void
.end method

.method public setLteBandEnableStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 766
    return-void
.end method

.method public setLteBsrTimerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 786
    return-void
.end method

.method public setLteReleaseVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 591
    return-void
.end method

.method public setLteScanDurationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 757
    return-void
.end method

.method public setMaxUlSpeedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 699
    return-void
.end method

.method public setModemPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 297
    return-void
.end method

.method public setNROptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 267
    return-void
.end method

.method public setNattKeepAliveStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 623
    return-void
.end method

.method public setNetworkLockResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 548
    return-void
.end method

.method public setNetworkSelectionModeManualWithActResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 219
    return-void
.end method

.method public setNrBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 828
    return-void
.end method

.method public setPOLEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 580
    return-void
.end method

.method public setPhoneBookMemStorageResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 481
    return-void
.end method

.method public setPhonebookReadyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 508
    return-void
.end method

.method public setQamEnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 745
    return-void
.end method

.method public setRemoveRestrictEutranModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 540
    return-void
.end method

.method public setResumeRegistrationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 427
    return-void
.end method

.method public setRoamingEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 584
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

    .line 565
    .local p2, "respAntConf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public setSearchRatResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 285
    return-void
.end method

.method public setSearchStoredFreqInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 279
    return-void
.end method

.method public setServiceStateToModemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 633
    return-void
.end method

.method public setSimPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 189
    return-void
.end method

.method public setSmsParametersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 306
    return-void
.end method

.method public setSuppServPropertyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 654
    return-void
.end method

.method public setTm9EnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 751
    return-void
.end method

.method public setTrmResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 168
    return-void
.end method

.method public setTxPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 273
    return-void
.end method

.method public setTxPowerStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 651
    return-void
.end method

.method public setVendorSettingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 660
    return-void
.end method

.method public setVoicePreferStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 362
    return-void
.end method

.method public setWifiAssociatedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 608
    return-void
.end method

.method public setWifiEnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 605
    return-void
.end method

.method public setWifiIpAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 614
    return-void
.end method

.method public setWifiPingResultResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 626
    return-void
.end method

.method public setWifiSignalLevelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 611
    return-void
.end method

.method public supplyDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "retriesRemaining"    # I

    .line 556
    return-void
.end method

.method public supplyDeviceNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "remainingAttempts"    # I

    .line 560
    return-void
.end method

.method public syncDataSettingsToMdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 534
    return-void
.end method

.method public triggerModeSwitchByEccResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 412
    return-void
.end method

.method public vsimNotificationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V3_0/VsimEvent;)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "event"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/VsimEvent;

    .line 598
    return-void
.end method

.method public vsimOperationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 601
    return-void
.end method

.method public writePhbEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 446
    return-void
.end method

.method public writePhoneBookEntryExtResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 488
    return-void
.end method

.method public writeUPBGrpEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 470
    return-void
.end method

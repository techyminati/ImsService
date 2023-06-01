.class public Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Default;
.super Ljava/lang/Object;
.source "IMtkTelephonyEx.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/IMtkTelephonyEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abortFemtoCellList(I)Z
    .registers 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 630
    const/4 v0, 0x0

    return v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 843
    const/4 v0, 0x0

    return-object v0
.end method

.method public cancelAvailableNetworks(I)Z
    .registers 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 668
    const/4 v0, 0x0

    return v0
.end method

.method public exitEmergencyCallbackMode(I)Z
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 484
    const/4 v0, 0x0

    return v0
.end method

.method public getAdnStorageInfo(I)[I
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 401
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllCellInfo(ILjava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 584
    const/4 v0, 0x0

    return-object v0
.end method

.method public getApcInfoUsingSlotId(I)Lcom/mediatek/internal/telephony/PseudoCellInfo;
    .registers 3
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 507
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCallSubAddressEnabled(I)Z
    .registers 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 829
    const/4 v0, 0x0

    return v0
.end method

.method public getCdmaSubscriptionActStatus(I)I
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 516
    const/4 v0, 0x0

    return v0
.end method

.method public getCellLocationUsingSlotId(I)Landroid/os/Bundle;
    .registers 3
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 288
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDebuggingDsdaStatus()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 786
    const/4 v0, 0x0

    return v0
.end method

.method public getDisable2G(I)I
    .registers 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 612
    const/4 v0, 0x0

    return v0
.end method

.method public getFemtoCellList(I)Ljava/util/List;
    .registers 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/mediatek/internal/telephony/FemtoCellInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 621
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccAppFamily(I)I
    .registers 3
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public getIccAtr(I)Ljava/lang/String;
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccCardType(I)Ljava/lang/String;
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIsLastEccIms()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 526
    const/4 v0, 0x0

    return v0
.end method

.method public getLocatedPlmn(I)Ljava/lang/String;
    .registers 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 593
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMainCapabilityPhoneId()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 354
    const/4 v0, 0x0

    return v0
.end method

.method public getMvnoMatchType(I)Ljava/lang/String;
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMvnoPattern(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "subId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNrMapStatus(I)Ljava/lang/String;
    .registers 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 820
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPCO520State(I)I
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 474
    const/4 v0, 0x0

    return v0
.end method

.method public getRoamingEnable(I)[I
    .registers 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 746
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRxTestResult(I)[I
    .registers 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 433
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelfActivateState(I)I
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 461
    const/4 v0, 0x0

    return v0
.end method

.method public getServiceStateByPhoneId(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/ServiceState;
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 718
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimLockStateForRSU(I)I
    .registers 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 687
    const/4 v0, 0x0

    return v0
.end method

.method public getSimOnOffExecutingState(I)I
    .registers 3
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public getSimOnOffState(I)I
    .registers 3
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public getSimOperatorNumericForPhoneEx(I)[Ljava/lang/String;
    .registers 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 325
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimSerialNumber(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 310
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSuggestedPlmnList(IIIILjava/lang/String;)[Ljava/lang/String;
    .registers 7
    .param p1, "phoneId"    # I
    .param p2, "rat"    # I
    .param p3, "num"    # I
    .param p4, "timer"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 757
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUimSubscriberId(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 299
    const/4 v0, 0x0

    return-object v0
.end method

.method public iccExchangeSimIOEx(IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 11
    .param p1, "subId"    # I
    .param p2, "fileID"    # I
    .param p3, "command"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "filePath"    # Ljava/lang/String;
    .param p8, "data"    # Ljava/lang/String;
    .param p9, "pin2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public invokeOemRilRequestRaw([B[B)I
    .registers 4
    .param p1, "oemReq"    # [B
    .param p2, "oemResp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 552
    const/4 v0, 0x0

    return v0
.end method

.method public invokeOemRilRequestRawBySlot(I[B[B)I
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "oemReq"    # [B
    .param p3, "oemResp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 566
    const/4 v0, 0x0

    return v0
.end method

.method public isAppTypeSupported(II)Z
    .registers 4
    .param p1, "slotId"    # I
    .param p2, "appType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public isCapabilitySwitching()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method public isEmergencyNumber(ILjava/lang/String;)Z
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 778
    const/4 v0, 0x0

    return v0
.end method

.method public isFdnEnabled(I)Z
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 279
    const/4 v0, 0x0

    return v0
.end method

.method public isImsRegistered(I)Z
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 364
    const/4 v0, 0x0

    return v0
.end method

.method public isInCsCall(I)Z
    .registers 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 573
    const/4 v0, 0x0

    return v0
.end method

.method public isInHomeNetwork(I)Z
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public isNrMapEnabled(I)Z
    .registers 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 811
    const/4 v0, 0x0

    return v0
.end method

.method public isPhbReady(I)Z
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 412
    const/4 v0, 0x0

    return v0
.end method

.method public isRadioOffBySimManagement(I)Z
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public isTestIccCard(I)Z
    .registers 3
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public isVolteEnabled(I)Z
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 374
    const/4 v0, 0x0

    return v0
.end method

.method public isWifiCallingEnabled(I)Z
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 384
    const/4 v0, 0x0

    return v0
.end method

.method public loadEFLinearFixedAll(IIILjava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "family"    # I
    .param p3, "fileID"    # I
    .param p4, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public loadEFTransparent(IIILjava/lang/String;)[B
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "family"    # I
    .param p3, "fileID"    # I
    .param p4, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public manuallySetNrMap(II)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 803
    return-void
.end method

.method public queryFemtoCellSystemSelectionMode(I)I
    .registers 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 649
    const/4 v0, 0x0

    return v0
.end method

.method public queryNetworkLock(II)Landroid/os/Bundle;
    .registers 4
    .param p1, "subId"    # I
    .param p2, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAtUrcInd(ILcom/mediatek/telephony/IOemHookCallback;)V
    .registers 3
    .param p1, "slotId"    # I
    .param p2, "cb"    # Lcom/mediatek/telephony/IOemHookCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 533
    return-void
.end method

.method public repollIccStateForNetworkLock(IZ)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "needIntent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 175
    return-void
.end method

.method public selectFemtoCell(ILcom/mediatek/internal/telephony/FemtoCellInfo;)Z
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "femtocell"    # Lcom/mediatek/internal/telephony/FemtoCellInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 640
    const/4 v0, 0x0

    return v0
.end method

.method public selfActivationAction(ILandroid/os/Bundle;I)I
    .registers 5
    .param p1, "action"    # I
    .param p2, "param"    # Landroid/os/Bundle;
    .param p3, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 447
    const/4 v0, 0x0

    return v0
.end method

.method public sendAtCmd(IJLjava/lang/String;Lcom/mediatek/telephony/IOemHookCallback;)V
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "token"    # J
    .param p4, "atCmd"    # Ljava/lang/String;
    .param p5, "cb"    # Lcom/mediatek/telephony/IOemHookCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 539
    return-void
.end method

.method public setApcModeUsingSlotId(IIZI)V
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "mode"    # I
    .param p3, "reportOn"    # Z
    .param p4, "reportInterval"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 499
    return-void
.end method

.method public setCallSubAddressEnabled(IZ)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 840
    return-void
.end method

.method public setDisable2G(IZ)Z
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "mode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 603
    const/4 v0, 0x0

    return v0
.end method

.method public setFemtoCellSystemSelectionMode(II)Z
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 659
    const/4 v0, 0x0

    return v0
.end method

.method public setIsLastEccIms(Z)V
    .registers 2
    .param p1, "val"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 523
    return-void
.end method

.method public setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z
    .registers 3
    .param p1, "rafs"    # [Landroid/telephony/RadioAccessFamily;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 337
    const/4 v0, 0x0

    return v0
.end method

.method public setRoamingEnable(I[I)Z
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "config"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 736
    const/4 v0, 0x0

    return v0
.end method

.method public setRxTestConfig(II)[I
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "config"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 426
    const/4 v0, 0x0

    return-object v0
.end method

.method public setSimPower(II)I
    .registers 4
    .param p1, "slotId"    # I
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public setupPdnByType(ILjava/lang/String;)Z
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 709
    const/4 v0, 0x0

    return v0
.end method

.method public simAkaAuthentication(II[B[B)[B
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "family"    # I
    .param p3, "byteRand"    # [B
    .param p4, "byteAutn"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 214
    const/4 v0, 0x0

    return-object v0
.end method

.method public simGbaAuthBootStrapMode(II[B[B)[B
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "family"    # I
    .param p3, "byteRand"    # [B
    .param p4, "byteAutn"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 233
    const/4 v0, 0x0

    return-object v0
.end method

.method public simGbaAuthNafMode(II[B[B)[B
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "family"    # I
    .param p3, "byteNafId"    # [B
    .param p4, "byteImpi"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 252
    const/4 v0, 0x0

    return-object v0
.end method

.method public supplyDeviceNetworkDepersonalization(Ljava/lang/String;)[I
    .registers 3
    .param p1, "pwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 677
    const/4 v0, 0x0

    return-object v0
.end method

.method public supplyNetworkDepersonalization(ILjava/lang/String;)I
    .registers 4
    .param p1, "subId"    # I
    .param p2, "strPasswd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public switchNrMap(IZ)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "sw"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 795
    return-void
.end method

.method public tearDownPdnByType(ILjava/lang/String;)Z
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 698
    const/4 v0, 0x0

    return v0
.end method

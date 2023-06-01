.class public abstract Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;
.super Landroid/os/Binder;
.source "IMtkTelephonyEx.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/IMtkTelephonyEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_abortFemtoCellList:I = 0x38

.field static final TRANSACTION_cancelAvailableNetworks:I = 0x3c

.field static final TRANSACTION_exitEmergencyCallbackMode:I = 0x28

.field static final TRANSACTION_getAdnStorageInfo:I = 0x21

.field static final TRANSACTION_getAllCellInfo:I = 0x33

.field static final TRANSACTION_getApcInfoUsingSlotId:I = 0x2a

.field static final TRANSACTION_getCallSubAddressEnabled:I = 0x4b

.field static final TRANSACTION_getCdmaSubscriptionActStatus:I = 0x2b

.field static final TRANSACTION_getCellLocationUsingSlotId:I = 0x17

.field static final TRANSACTION_getDebuggingDsdaStatus:I = 0x46

.field static final TRANSACTION_getDisable2G:I = 0x36

.field static final TRANSACTION_getFemtoCellList:I = 0x37

.field static final TRANSACTION_getIccAppFamily:I = 0x2

.field static final TRANSACTION_getIccAtr:I = 0x6

.field static final TRANSACTION_getIccCardType:I = 0x3

.field static final TRANSACTION_getIsLastEccIms:I = 0x2d

.field static final TRANSACTION_getLocatedPlmn:I = 0x34

.field static final TRANSACTION_getMainCapabilityPhoneId:I = 0x1d

.field static final TRANSACTION_getMvnoMatchType:I = 0x10

.field static final TRANSACTION_getMvnoPattern:I = 0x11

.field static final TRANSACTION_getNrMapStatus:I = 0x4a

.field static final TRANSACTION_getPCO520State:I = 0x27

.field static final TRANSACTION_getRoamingEnable:I = 0x43

.field static final TRANSACTION_getRxTestResult:I = 0x24

.field static final TRANSACTION_getSelfActivateState:I = 0x26

.field static final TRANSACTION_getServiceStateByPhoneId:I = 0x41

.field static final TRANSACTION_getSimLockStateForRSU:I = 0x3e

.field static final TRANSACTION_getSimOnOffExecutingState:I = 0xc

.field static final TRANSACTION_getSimOnOffState:I = 0xb

.field static final TRANSACTION_getSimOperatorNumericForPhoneEx:I = 0x1a

.field static final TRANSACTION_getSimSerialNumber:I = 0x19

.field static final TRANSACTION_getSuggestedPlmnList:I = 0x44

.field static final TRANSACTION_getUimSubscriberId:I = 0x18

.field static final TRANSACTION_iccExchangeSimIOEx:I = 0x7

.field static final TRANSACTION_invokeOemRilRequestRaw:I = 0x30

.field static final TRANSACTION_invokeOemRilRequestRawBySlot:I = 0x31

.field static final TRANSACTION_isAppTypeSupported:I = 0x4

.field static final TRANSACTION_isCapabilitySwitching:I = 0x1c

.field static final TRANSACTION_isEmergencyNumber:I = 0x45

.field static final TRANSACTION_isFdnEnabled:I = 0x16

.field static final TRANSACTION_isImsRegistered:I = 0x1e

.field static final TRANSACTION_isInCsCall:I = 0x32

.field static final TRANSACTION_isInHomeNetwork:I = 0x1

.field static final TRANSACTION_isNrMapEnabled:I = 0x49

.field static final TRANSACTION_isPhbReady:I = 0x22

.field static final TRANSACTION_isRadioOffBySimManagement:I = 0x15

.field static final TRANSACTION_isTestIccCard:I = 0x5

.field static final TRANSACTION_isVolteEnabled:I = 0x1f

.field static final TRANSACTION_isWifiCallingEnabled:I = 0x20

.field static final TRANSACTION_loadEFLinearFixedAll:I = 0x9

.field static final TRANSACTION_loadEFTransparent:I = 0x8

.field static final TRANSACTION_manuallySetNrMap:I = 0x48

.field static final TRANSACTION_queryFemtoCellSystemSelectionMode:I = 0x3a

.field static final TRANSACTION_queryNetworkLock:I = 0xd

.field static final TRANSACTION_registerAtUrcInd:I = 0x2e

.field static final TRANSACTION_repollIccStateForNetworkLock:I = 0xf

.field static final TRANSACTION_selectFemtoCell:I = 0x39

.field static final TRANSACTION_selfActivationAction:I = 0x25

.field static final TRANSACTION_sendAtCmd:I = 0x2f

.field static final TRANSACTION_setApcModeUsingSlotId:I = 0x29

.field static final TRANSACTION_setCallSubAddressEnabled:I = 0x4c

.field static final TRANSACTION_setDisable2G:I = 0x35

.field static final TRANSACTION_setFemtoCellSystemSelectionMode:I = 0x3b

.field static final TRANSACTION_setIsLastEccIms:I = 0x2c

.field static final TRANSACTION_setRadioCapability:I = 0x1b

.field static final TRANSACTION_setRoamingEnable:I = 0x42

.field static final TRANSACTION_setRxTestConfig:I = 0x23

.field static final TRANSACTION_setSimPower:I = 0xa

.field static final TRANSACTION_setupPdnByType:I = 0x40

.field static final TRANSACTION_simAkaAuthentication:I = 0x12

.field static final TRANSACTION_simGbaAuthBootStrapMode:I = 0x13

.field static final TRANSACTION_simGbaAuthNafMode:I = 0x14

.field static final TRANSACTION_supplyDeviceNetworkDepersonalization:I = 0x3d

.field static final TRANSACTION_supplyNetworkDepersonalization:I = 0xe

.field static final TRANSACTION_switchNrMap:I = 0x47

.field static final TRANSACTION_tearDownPdnByType:I = 0x3f


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 851
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 852
    const-string v0, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 853
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 860
    if-nez p0, :cond_4

    .line 861
    const/4 v0, 0x0

    return-object v0

    .line 863
    :cond_4
    const-string v0, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 864
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    if-eqz v1, :cond_14

    .line 865
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    return-object v1

    .line 867
    :cond_14
    new-instance v1, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    .registers 1

    .line 4275
    sget-object v0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/internal/telephony/IMtkTelephonyEx;)Z
    .registers 3
    .param p0, "impl"    # Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    .line 4265
    sget-object v0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    if-nez v0, :cond_c

    .line 4268
    if-eqz p0, :cond_a

    .line 4269
    sput-object p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    .line 4270
    const/4 v0, 0x1

    return v0

    .line 4272
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 4266
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 871
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 29
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 875
    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const-string v13, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    .line 876
    .local v13, "descriptor":Ljava/lang/String;
    const/4 v14, 0x1

    packed-switch p1, :pswitch_data_6c2

    .line 884
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_6c8

    .line 1802
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 880
    :pswitch_15
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 881
    return v14

    .line 1791
    :pswitch_19
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1793
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1795
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_27

    move v0, v14

    .line 1796
    .local v0, "_arg1":Z
    :cond_27
    invoke-virtual {v10, v1, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->setCallSubAddressEnabled(IZ)V

    .line 1797
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1798
    return v14

    .line 1781
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":I
    :pswitch_2e
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1783
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1784
    .local v0, "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getCallSubAddressEnabled(I)Z

    move-result v1

    .line 1785
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1786
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1787
    return v14

    .line 1771
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_40
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1773
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1774
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getNrMapStatus(I)Ljava/lang/String;

    move-result-object v1

    .line 1775
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1776
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1777
    return v14

    .line 1761
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_52
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1763
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1764
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->isNrMapEnabled(I)Z

    move-result v1

    .line 1765
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1766
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1767
    return v14

    .line 1750
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_64
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1752
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1754
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1755
    .local v1, "_arg1":I
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->manuallySetNrMap(II)V

    .line 1756
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1757
    return v14

    .line 1739
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_76
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1741
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1743
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_84

    move v0, v14

    .line 1744
    .local v0, "_arg1":Z
    :cond_84
    invoke-virtual {v10, v1, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->switchNrMap(IZ)V

    .line 1745
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1746
    return v14

    .line 1731
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":I
    :pswitch_8b
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1732
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDebuggingDsdaStatus()I

    move-result v0

    .line 1733
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1734
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1735
    return v14

    .line 1719
    .end local v0    # "_result":I
    :pswitch_99
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1721
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1723
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1724
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v2

    .line 1725
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1726
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1727
    return v14

    .line 1701
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_af
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1703
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1705
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1707
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1709
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1711
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1712
    .local v15, "_arg4":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getSuggestedPlmnList(IIIILjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1713
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1714
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1715
    return v14

    .line 1691
    .end local v0    # "_result":[Ljava/lang/String;
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v15    # "_arg4":Ljava/lang/String;
    :pswitch_d8
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1693
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1694
    .local v0, "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getRoamingEnable(I)[I

    move-result-object v1

    .line 1695
    .local v1, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1696
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1697
    return v14

    .line 1679
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[I
    :pswitch_ea
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1681
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1683
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1684
    .local v1, "_arg1":[I
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->setRoamingEnable(I[I)Z

    move-result v2

    .line 1685
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1686
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1687
    return v14

    .line 1659
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[I
    .end local v2    # "_result":Z
    :pswitch_100
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1661
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1663
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1665
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1666
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v10, v1, v2, v3}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getServiceStateByPhoneId(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/ServiceState;

    move-result-object v4

    .line 1667
    .local v4, "_result":Landroid/telephony/ServiceState;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1668
    if-eqz v4, :cond_11f

    .line 1669
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 1670
    invoke-virtual {v4, v12, v14}, Landroid/telephony/ServiceState;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_122

    .line 1673
    :cond_11f
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1675
    :goto_122
    return v14

    .line 1647
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Landroid/telephony/ServiceState;
    :pswitch_123
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1649
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1651
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1652
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->setupPdnByType(ILjava/lang/String;)Z

    move-result v2

    .line 1653
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1654
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1655
    return v14

    .line 1635
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_139
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1637
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1639
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1640
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->tearDownPdnByType(ILjava/lang/String;)Z

    move-result v2

    .line 1641
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1642
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1643
    return v14

    .line 1625
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_14f
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1627
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1628
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getSimLockStateForRSU(I)I

    move-result v1

    .line 1629
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1630
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1631
    return v14

    .line 1615
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_161
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1617
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1618
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->supplyDeviceNetworkDepersonalization(Ljava/lang/String;)[I

    move-result-object v1

    .line 1619
    .local v1, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1620
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1621
    return v14

    .line 1605
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":[I
    :pswitch_173
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1607
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1608
    .local v0, "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->cancelAvailableNetworks(I)Z

    move-result v1

    .line 1609
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1610
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1611
    return v14

    .line 1593
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_185
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1595
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1597
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1598
    .local v1, "_arg1":I
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->setFemtoCellSystemSelectionMode(II)Z

    move-result v2

    .line 1599
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1600
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1601
    return v14

    .line 1583
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_19b
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1585
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1586
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->queryFemtoCellSystemSelectionMode(I)I

    move-result v1

    .line 1587
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1588
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1589
    return v14

    .line 1566
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_1ad
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1568
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1570
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1c3

    .line 1571
    sget-object v1, Lcom/mediatek/internal/telephony/FemtoCellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/FemtoCellInfo;

    .local v1, "_arg1":Lcom/mediatek/internal/telephony/FemtoCellInfo;
    goto :goto_1c4

    .line 1574
    .end local v1    # "_arg1":Lcom/mediatek/internal/telephony/FemtoCellInfo;
    :cond_1c3
    const/4 v1, 0x0

    .line 1576
    .restart local v1    # "_arg1":Lcom/mediatek/internal/telephony/FemtoCellInfo;
    :goto_1c4
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->selectFemtoCell(ILcom/mediatek/internal/telephony/FemtoCellInfo;)Z

    move-result v2

    .line 1577
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1578
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1579
    return v14

    .line 1556
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/mediatek/internal/telephony/FemtoCellInfo;
    .end local v2    # "_result":Z
    :pswitch_1cf
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1558
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1559
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->abortFemtoCellList(I)Z

    move-result v1

    .line 1560
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1561
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1562
    return v14

    .line 1546
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_1e1
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1548
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1549
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getFemtoCellList(I)Ljava/util/List;

    move-result-object v1

    .line 1550
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/FemtoCellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1551
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1552
    return v14

    .line 1536
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/FemtoCellInfo;>;"
    :pswitch_1f3
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1539
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDisable2G(I)I

    move-result v1

    .line 1540
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1541
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1542
    return v14

    .line 1524
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_205
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1526
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1528
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_213

    move v0, v14

    .line 1529
    .local v0, "_arg1":Z
    :cond_213
    invoke-virtual {v10, v1, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->setDisable2G(IZ)Z

    move-result v2

    .line 1530
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1531
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1532
    return v14

    .line 1514
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_21e
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1516
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1517
    .local v0, "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getLocatedPlmn(I)Ljava/lang/String;

    move-result-object v1

    .line 1518
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1519
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1520
    return v14

    .line 1502
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_230
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1504
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1506
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1507
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getAllCellInfo(ILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1508
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1509
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1510
    return v14

    .line 1492
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :pswitch_246
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1494
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1495
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->isInCsCall(I)Z

    move-result v1

    .line 1496
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1497
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1498
    return v14

    .line 1471
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_258
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1473
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1475
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 1477
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1478
    .local v2, "_arg2_length":I
    if-gez v2, :cond_26b

    .line 1479
    const/4 v3, 0x0

    .local v3, "_arg2":[B
    goto :goto_26d

    .line 1482
    .end local v3    # "_arg2":[B
    :cond_26b
    new-array v3, v2, [B

    .line 1484
    .restart local v3    # "_arg2":[B
    :goto_26d
    invoke-virtual {v10, v0, v1, v3}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->invokeOemRilRequestRawBySlot(I[B[B)I

    move-result v4

    .line 1485
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1486
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1487
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1488
    return v14

    .line 1452
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2_length":I
    .end local v3    # "_arg2":[B
    .end local v4    # "_result":I
    :pswitch_27b
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1454
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1456
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1457
    .local v1, "_arg1_length":I
    if-gez v1, :cond_28a

    .line 1458
    const/4 v2, 0x0

    .local v2, "_arg1":[B
    goto :goto_28c

    .line 1461
    .end local v2    # "_arg1":[B
    :cond_28a
    new-array v2, v1, [B

    .line 1463
    .restart local v2    # "_arg1":[B
    :goto_28c
    invoke-virtual {v10, v0, v2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->invokeOemRilRequestRaw([B[B)I

    move-result v3

    .line 1464
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1465
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1466
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1467
    return v14

    .line 1437
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1_length":I
    .end local v2    # "_arg1":[B
    .end local v3    # "_result":I
    :pswitch_29a
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1439
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1441
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 1443
    .local v7, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1445
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/IOemHookCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/telephony/IOemHookCallback;

    move-result-object v15

    .line 1446
    .local v15, "_arg3":Lcom/mediatek/telephony/IOemHookCallback;
    move-object/from16 v0, p0

    move v1, v6

    move-wide v2, v7

    move-object v4, v9

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->sendAtCmd(IJLjava/lang/String;Lcom/mediatek/telephony/IOemHookCallback;)V

    .line 1447
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1448
    return v14

    .line 1426
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":J
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Lcom/mediatek/telephony/IOemHookCallback;
    :pswitch_2be
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1428
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1430
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/IOemHookCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/telephony/IOemHookCallback;

    move-result-object v1

    .line 1431
    .local v1, "_arg1":Lcom/mediatek/telephony/IOemHookCallback;
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->registerAtUrcInd(ILcom/mediatek/telephony/IOemHookCallback;)V

    .line 1432
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1433
    return v14

    .line 1418
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/mediatek/telephony/IOemHookCallback;
    :pswitch_2d4
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1419
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getIsLastEccIms()Z

    move-result v0

    .line 1420
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1421
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1422
    return v14

    .line 1409
    .end local v0    # "_result":Z
    :pswitch_2e2
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1411
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2ec

    move v0, v14

    .line 1412
    .local v0, "_arg0":Z
    :cond_2ec
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->setIsLastEccIms(Z)V

    .line 1413
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1414
    return v14

    .line 1399
    .end local v0    # "_arg0":Z
    :pswitch_2f3
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1402
    .local v0, "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getCdmaSubscriptionActStatus(I)I

    move-result v1

    .line 1403
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1404
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1405
    return v14

    .line 1383
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_305
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1385
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1386
    .local v1, "_arg0":I
    invoke-virtual {v10, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getApcInfoUsingSlotId(I)Lcom/mediatek/internal/telephony/PseudoCellInfo;

    move-result-object v2

    .line 1387
    .local v2, "_result":Lcom/mediatek/internal/telephony/PseudoCellInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1388
    if-eqz v2, :cond_31c

    .line 1389
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 1390
    invoke-virtual {v2, v12, v14}, Lcom/mediatek/internal/telephony/PseudoCellInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_31f

    .line 1393
    :cond_31c
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1395
    :goto_31f
    return v14

    .line 1368
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Lcom/mediatek/internal/telephony/PseudoCellInfo;
    :pswitch_320
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1370
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1372
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1374
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_332

    move v0, v14

    .line 1376
    .local v0, "_arg2":Z
    :cond_332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1377
    .local v3, "_arg3":I
    invoke-virtual {v10, v1, v2, v0, v3}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->setApcModeUsingSlotId(IIZI)V

    .line 1378
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1379
    return v14

    .line 1358
    .end local v0    # "_arg2":Z
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg3":I
    :pswitch_33d
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1360
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1361
    .local v0, "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->exitEmergencyCallbackMode(I)Z

    move-result v1

    .line 1362
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1363
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1364
    return v14

    .line 1348
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_34f
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1351
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getPCO520State(I)I

    move-result v1

    .line 1352
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1353
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1354
    return v14

    .line 1338
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_361
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1340
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1341
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getSelfActivateState(I)I

    move-result v1

    .line 1342
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1343
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1344
    return v14

    .line 1319
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_373
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1323
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_389

    .line 1324
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .local v1, "_arg1":Landroid/os/Bundle;
    goto :goto_38a

    .line 1327
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_389
    const/4 v1, 0x0

    .line 1330
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    :goto_38a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1331
    .local v2, "_arg2":I
    invoke-virtual {v10, v0, v1, v2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->selfActivationAction(ILandroid/os/Bundle;I)I

    move-result v3

    .line 1332
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1333
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1334
    return v14

    .line 1309
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_399
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1312
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getRxTestResult(I)[I

    move-result-object v1

    .line 1313
    .local v1, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1314
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1315
    return v14

    .line 1297
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[I
    :pswitch_3ab
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1301
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1302
    .local v1, "_arg1":I
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->setRxTestConfig(II)[I

    move-result-object v2

    .line 1303
    .local v2, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1304
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1305
    return v14

    .line 1287
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":[I
    :pswitch_3c1
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1290
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->isPhbReady(I)Z

    move-result v1

    .line 1291
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1292
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1293
    return v14

    .line 1277
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_3d3
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1280
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getAdnStorageInfo(I)[I

    move-result-object v1

    .line 1281
    .local v1, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1282
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1283
    return v14

    .line 1267
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[I
    :pswitch_3e5
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1270
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->isWifiCallingEnabled(I)Z

    move-result v1

    .line 1271
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1272
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1273
    return v14

    .line 1257
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_3f7
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1259
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1260
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->isVolteEnabled(I)Z

    move-result v1

    .line 1261
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1262
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1263
    return v14

    .line 1247
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_409
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1250
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->isImsRegistered(I)Z

    move-result v1

    .line 1251
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1252
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1253
    return v14

    .line 1239
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_41b
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1240
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getMainCapabilityPhoneId()I

    move-result v0

    .line 1241
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1242
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1243
    return v14

    .line 1231
    .end local v0    # "_result":I
    :pswitch_429
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1232
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->isCapabilitySwitching()Z

    move-result v0

    .line 1233
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1234
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1235
    return v14

    .line 1221
    .end local v0    # "_result":Z
    :pswitch_437
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1223
    sget-object v0, Landroid/telephony/RadioAccessFamily;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/RadioAccessFamily;

    .line 1224
    .local v0, "_arg0":[Landroid/telephony/RadioAccessFamily;
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    move-result v1

    .line 1225
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1226
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1227
    return v14

    .line 1211
    .end local v0    # "_arg0":[Landroid/telephony/RadioAccessFamily;
    .end local v1    # "_result":Z
    :pswitch_44d
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1214
    .local v0, "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getSimOperatorNumericForPhoneEx(I)[Ljava/lang/String;

    move-result-object v1

    .line 1215
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1216
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1217
    return v14

    .line 1199
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_45f
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1203
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1204
    .local v1, "_arg1":I
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getSimSerialNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1205
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1206
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1207
    return v14

    .line 1187
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_475
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1191
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1192
    .restart local v1    # "_arg1":I
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getUimSubscriberId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1193
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1194
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1195
    return v14

    .line 1171
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_48b
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1174
    .local v1, "_arg0":I
    invoke-virtual {v10, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getCellLocationUsingSlotId(I)Landroid/os/Bundle;

    move-result-object v2

    .line 1175
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1176
    if-eqz v2, :cond_4a2

    .line 1177
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 1178
    invoke-virtual {v2, v12, v14}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4a5

    .line 1181
    :cond_4a2
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1183
    :goto_4a5
    return v14

    .line 1161
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_4a6
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1164
    .local v0, "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->isFdnEnabled(I)Z

    move-result v1

    .line 1165
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1166
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1167
    return v14

    .line 1151
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_4b8
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1154
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->isRadioOffBySimManagement(I)Z

    move-result v1

    .line 1155
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1156
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1157
    return v14

    .line 1135
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_4ca
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1139
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1141
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 1143
    .local v2, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 1144
    .local v3, "_arg3":[B
    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->simGbaAuthNafMode(II[B[B)[B

    move-result-object v4

    .line 1145
    .local v4, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1146
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1147
    return v14

    .line 1119
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[B
    .end local v3    # "_arg3":[B
    .end local v4    # "_result":[B
    :pswitch_4e8
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1123
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1125
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 1127
    .restart local v2    # "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 1128
    .restart local v3    # "_arg3":[B
    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->simGbaAuthBootStrapMode(II[B[B)[B

    move-result-object v4

    .line 1129
    .restart local v4    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1130
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1131
    return v14

    .line 1103
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[B
    .end local v3    # "_arg3":[B
    .end local v4    # "_result":[B
    :pswitch_506
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1107
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1109
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 1111
    .restart local v2    # "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 1112
    .restart local v3    # "_arg3":[B
    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->simAkaAuthentication(II[B[B)[B

    move-result-object v4

    .line 1113
    .restart local v4    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1114
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1115
    return v14

    .line 1091
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[B
    .end local v3    # "_arg3":[B
    .end local v4    # "_result":[B
    :pswitch_524
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1093
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1095
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1096
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getMvnoPattern(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1097
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1098
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1099
    return v14

    .line 1081
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_53a
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1083
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1084
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getMvnoMatchType(I)Ljava/lang/String;

    move-result-object v1

    .line 1085
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1086
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1087
    return v14

    .line 1070
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_54c
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1072
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1074
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_55a

    move v0, v14

    .line 1075
    .local v0, "_arg1":Z
    :cond_55a
    invoke-virtual {v10, v1, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->repollIccStateForNetworkLock(IZ)V

    .line 1076
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1077
    return v14

    .line 1058
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":I
    :pswitch_561
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1060
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1062
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1063
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)I

    move-result v2

    .line 1064
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1065
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1066
    return v14

    .line 1040
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_577
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1042
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1044
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1045
    .local v2, "_arg1":I
    invoke-virtual {v10, v1, v2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->queryNetworkLock(II)Landroid/os/Bundle;

    move-result-object v3

    .line 1046
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1047
    if-eqz v3, :cond_592

    .line 1048
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 1049
    invoke-virtual {v3, v12, v14}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_595

    .line 1052
    :cond_592
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1054
    :goto_595
    return v14

    .line 1030
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/os/Bundle;
    :pswitch_596
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1032
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1033
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getSimOnOffExecutingState(I)I

    move-result v1

    .line 1034
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1035
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1036
    return v14

    .line 1020
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_5a8
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1022
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1023
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getSimOnOffState(I)I

    move-result v1

    .line 1024
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1025
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1026
    return v14

    .line 1008
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_5ba
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1010
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1012
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1013
    .local v1, "_arg1":I
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->setSimPower(II)I

    move-result v2

    .line 1014
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1015
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1016
    return v14

    .line 992
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_5d0
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 994
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 996
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 998
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1000
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1001
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->loadEFLinearFixedAll(IIILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 1002
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1003
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1004
    return v14

    .line 976
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_5ee
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 978
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 980
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 982
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 984
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 985
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->loadEFTransparent(IIILjava/lang/String;)[B

    move-result-object v4

    .line 986
    .local v4, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 987
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 988
    return v14

    .line 950
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":[B
    :pswitch_60c
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 952
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 954
    .local v15, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 956
    .local v16, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 958
    .local v17, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 960
    .local v18, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 962
    .local v19, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 964
    .local v20, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 966
    .local v21, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 968
    .local v22, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 969
    .local v23, "_arg8":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    move-object/from16 v9, v23

    invoke-virtual/range {v0 .. v9}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->iccExchangeSimIOEx(IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 970
    .local v0, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 971
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 972
    return v14

    .line 940
    .end local v0    # "_result":[B
    .end local v15    # "_arg0":I
    .end local v16    # "_arg1":I
    .end local v17    # "_arg2":I
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":I
    .end local v20    # "_arg5":I
    .end local v21    # "_arg6":Ljava/lang/String;
    .end local v22    # "_arg7":Ljava/lang/String;
    .end local v23    # "_arg8":Ljava/lang/String;
    :pswitch_651
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 942
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 943
    .local v0, "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getIccAtr(I)Ljava/lang/String;

    move-result-object v1

    .line 944
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 945
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 946
    return v14

    .line 930
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_663
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 932
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 933
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->isTestIccCard(I)Z

    move-result v1

    .line 934
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 935
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 936
    return v14

    .line 918
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_675
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 920
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 922
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 923
    .local v1, "_arg1":I
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->isAppTypeSupported(II)Z

    move-result v2

    .line 924
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 925
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 926
    return v14

    .line 908
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_68b
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 910
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 911
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getIccCardType(I)Ljava/lang/String;

    move-result-object v1

    .line 912
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 913
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 914
    return v14

    .line 898
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_69d
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 900
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 901
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getIccAppFamily(I)I

    move-result v1

    .line 902
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 903
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 904
    return v14

    .line 888
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_6af
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 890
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 891
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->isInHomeNetwork(I)Z

    move-result v1

    .line 892
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 893
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 894
    return v14

    nop

    :pswitch_data_6c2
    .packed-switch 0x5f4e5446
        :pswitch_15
    .end packed-switch

    :pswitch_data_6c8
    .packed-switch 0x1
        :pswitch_6af
        :pswitch_69d
        :pswitch_68b
        :pswitch_675
        :pswitch_663
        :pswitch_651
        :pswitch_60c
        :pswitch_5ee
        :pswitch_5d0
        :pswitch_5ba
        :pswitch_5a8
        :pswitch_596
        :pswitch_577
        :pswitch_561
        :pswitch_54c
        :pswitch_53a
        :pswitch_524
        :pswitch_506
        :pswitch_4e8
        :pswitch_4ca
        :pswitch_4b8
        :pswitch_4a6
        :pswitch_48b
        :pswitch_475
        :pswitch_45f
        :pswitch_44d
        :pswitch_437
        :pswitch_429
        :pswitch_41b
        :pswitch_409
        :pswitch_3f7
        :pswitch_3e5
        :pswitch_3d3
        :pswitch_3c1
        :pswitch_3ab
        :pswitch_399
        :pswitch_373
        :pswitch_361
        :pswitch_34f
        :pswitch_33d
        :pswitch_320
        :pswitch_305
        :pswitch_2f3
        :pswitch_2e2
        :pswitch_2d4
        :pswitch_2be
        :pswitch_29a
        :pswitch_27b
        :pswitch_258
        :pswitch_246
        :pswitch_230
        :pswitch_21e
        :pswitch_205
        :pswitch_1f3
        :pswitch_1e1
        :pswitch_1cf
        :pswitch_1ad
        :pswitch_19b
        :pswitch_185
        :pswitch_173
        :pswitch_161
        :pswitch_14f
        :pswitch_139
        :pswitch_123
        :pswitch_100
        :pswitch_ea
        :pswitch_d8
        :pswitch_af
        :pswitch_99
        :pswitch_8b
        :pswitch_76
        :pswitch_64
        :pswitch_52
        :pswitch_40
        :pswitch_2e
        :pswitch_19
    .end packed-switch
.end method

.class public abstract Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;
.super Landroid/os/Binder;
.source "IBluetoothMesh.java"

# interfaces
.implements Lcom/mediatek/bt/mesh/IBluetoothMesh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bt/mesh/IBluetoothMesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_accessModelReply:I = 0x21

.field static final TRANSACTION_addDevKey:I = 0x1d

.field static final TRANSACTION_addElement:I = 0x8

.field static final TRANSACTION_addModel:I = 0xa

.field static final TRANSACTION_bearerAdvSetParams:I = 0x29

.field static final TRANSACTION_delDevKey:I = 0x1f

.field static final TRANSACTION_disable:I = 0x6

.field static final TRANSACTION_disableMeshFilter:I = 0x2e

.field static final TRANSACTION_enable:I = 0x5

.field static final TRANSACTION_enableMeshFilter:I = 0x2c

.field static final TRANSACTION_enableMeshFilterWithNetwork:I = 0x2d

.field static final TRANSACTION_gattConnect:I = 0x24

.field static final TRANSACTION_gattDisconnect:I = 0x25

.field static final TRANSACTION_getDefaultTtl:I = 0x1b

.field static final TRANSACTION_getDevKey:I = 0x1e

.field static final TRANSACTION_getElementAddr:I = 0x19

.field static final TRANSACTION_getMeshRole:I = 0x3

.field static final TRANSACTION_getMeshState:I = 0x4

.field static final TRANSACTION_getModelHandle:I = 0x23

.field static final TRANSACTION_getVersion:I = 0x18

.field static final TRANSACTION_inviteProvisioning:I = 0xe

.field static final TRANSACTION_modelAppBind:I = 0x20

.field static final TRANSACTION_otaGetClientModelHandle:I = 0x27

.field static final TRANSACTION_otaInitiatorOperation:I = 0x28

.field static final TRANSACTION_publishModel:I = 0x13

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_resetData:I = 0x15

.field static final TRANSACTION_saveData:I = 0x16

.field static final TRANSACTION_sendConfigMessage:I = 0x11

.field static final TRANSACTION_sendPacket:I = 0x12

.field static final TRANSACTION_setAppkey:I = 0xc

.field static final TRANSACTION_setCompositionDataHeader:I = 0x7

.field static final TRANSACTION_setData:I = 0x17

.field static final TRANSACTION_setDefaultTtl:I = 0x1a

.field static final TRANSACTION_setElementAddr:I = 0x9

.field static final TRANSACTION_setHeartbeatPeriod:I = 0x26

.field static final TRANSACTION_setIv:I = 0x1c

.field static final TRANSACTION_setLogLevel:I = 0x22

.field static final TRANSACTION_setMeshMode:I = 0x14

.field static final TRANSACTION_setNetkey:I = 0xb

.field static final TRANSACTION_setProvisionFactor:I = 0x10

.field static final TRANSACTION_setScanParams:I = 0x2a

.field static final TRANSACTION_setSpecialPktParams:I = 0x2b

.field static final TRANSACTION_startProvisioning:I = 0xf

.field static final TRANSACTION_unProvisionScan:I = 0xd

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 203
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 204
    const-string v0, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/bt/mesh/IBluetoothMesh;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 212
    if-nez p0, :cond_4

    .line 213
    const/4 v0, 0x0

    return-object v0

    .line 215
    :cond_4
    const-string v0, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 216
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/bt/mesh/IBluetoothMesh;

    if-eqz v1, :cond_14

    .line 217
    move-object v1, v0

    check-cast v1, Lcom/mediatek/bt/mesh/IBluetoothMesh;

    return-object v1

    .line 219
    :cond_14
    new-instance v1, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;
    .registers 1

    .line 2031
    sget-object v0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/bt/mesh/IBluetoothMesh;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/bt/mesh/IBluetoothMesh;)Z
    .registers 3
    .param p0, "impl"    # Lcom/mediatek/bt/mesh/IBluetoothMesh;

    .line 2021
    sget-object v0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/bt/mesh/IBluetoothMesh;

    if-nez v0, :cond_c

    .line 2024
    if-eqz p0, :cond_a

    .line 2025
    sput-object p0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/bt/mesh/IBluetoothMesh;

    .line 2026
    const/4 v0, 0x1

    return v0

    .line 2028
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 2022
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 223
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 34
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 227
    move-object/from16 v13, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    const-string v12, "com.mediatek.bt.mesh.IBluetoothMesh"

    .line 228
    .local v12, "descriptor":Ljava/lang/String;
    const/16 v16, 0x1

    packed-switch p1, :pswitch_data_4e2

    .line 236
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_4e8

    .line 820
    move-object v2, v13

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 232
    :pswitch_17
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    return v16

    .line 812
    :pswitch_1b
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 813
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->disableMeshFilter()I

    move-result v0

    .line 814
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 815
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 816
    return v16

    .line 792
    .end local v0    # "_result":I
    :pswitch_29
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 794
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_35

    move/from16 v1, v16

    goto :goto_36

    :cond_35
    move v1, v0

    .line 796
    .local v1, "_arg0":Z
    :goto_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3f

    move/from16 v2, v16

    goto :goto_40

    :cond_3f
    move v2, v0

    .line 798
    .local v2, "_arg1":Z
    :goto_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v7

    .line 800
    .local v7, "_arg2":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4d

    move/from16 v4, v16

    goto :goto_4e

    :cond_4d
    move v4, v0

    .line 802
    .local v4, "_arg3":Z
    :goto_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_57

    move/from16 v5, v16

    goto :goto_58

    :cond_57
    move v5, v0

    .line 804
    .local v5, "_arg4":Z
    :goto_58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v8

    .line 805
    .local v8, "_arg5":[I
    move-object/from16 v0, p0

    move-object v3, v7

    move-object v6, v8

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->enableMeshFilterWithNetwork(ZZ[IZZ[I)I

    move-result v0

    .line 806
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 807
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 808
    return v16

    .line 776
    .end local v0    # "_result":I
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Z
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    .end local v7    # "_arg2":[I
    .end local v8    # "_arg5":[I
    :pswitch_6b
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 778
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_77

    move/from16 v1, v16

    goto :goto_78

    :cond_77
    move v1, v0

    .line 780
    .restart local v1    # "_arg0":Z
    :goto_78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_81

    move/from16 v2, v16

    goto :goto_82

    :cond_81
    move v2, v0

    .line 782
    .restart local v2    # "_arg1":Z
    :goto_82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8b

    move/from16 v3, v16

    goto :goto_8c

    :cond_8b
    move v3, v0

    .line 784
    .local v3, "_arg2":Z
    :goto_8c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_94

    move/from16 v0, v16

    .line 785
    .local v0, "_arg3":Z
    :cond_94
    invoke-virtual {v13, v1, v2, v3, v0}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->enableMeshFilter(ZZZZ)I

    move-result v4

    .line 786
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 787
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 788
    return v16

    .line 760
    .end local v0    # "_arg3":Z
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Z
    .end local v4    # "_result":I
    :pswitch_9f
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 762
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_aa

    move/from16 v0, v16

    .line 764
    .local v0, "_arg0":Z
    :cond_aa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 766
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 768
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 769
    .local v3, "_arg3":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->setSpecialPktParams(ZIII)I

    move-result v4

    .line 770
    .restart local v4    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 772
    return v16

    .line 748
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":I
    :pswitch_c1
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 750
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 752
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 753
    .restart local v1    # "_arg1":I
    invoke-virtual {v13, v0, v1}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->setScanParams(II)I

    move-result v2

    .line 754
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 755
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 756
    return v16

    .line 726
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_d7
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 728
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 730
    .local v10, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 732
    .local v17, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 734
    .local v18, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 736
    .local v19, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 738
    .local v20, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 740
    .local v22, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 741
    .local v23, "_arg6":I
    move-object/from16 v0, p0

    move-wide v1, v10

    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v5, v19

    move-wide/from16 v6, v20

    move/from16 v8, v22

    move/from16 v9, v23

    invoke-virtual/range {v0 .. v9}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->bearerAdvSetParams(JIIIJII)I

    move-result v0

    .line 742
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 743
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 744
    return v16

    .line 711
    .end local v0    # "_result":I
    .end local v10    # "_arg0":J
    .end local v17    # "_arg1":I
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":J
    .end local v22    # "_arg5":I
    .end local v23    # "_arg6":I
    :pswitch_110
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 713
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_122

    .line 714
    sget-object v0, Lcom/mediatek/bt/mesh/OtaOperationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bt/mesh/OtaOperationParams;

    .local v0, "_arg0":Lcom/mediatek/bt/mesh/OtaOperationParams;
    goto :goto_123

    .line 717
    .end local v0    # "_arg0":Lcom/mediatek/bt/mesh/OtaOperationParams;
    :cond_122
    const/4 v0, 0x0

    .line 719
    .restart local v0    # "_arg0":Lcom/mediatek/bt/mesh/OtaOperationParams;
    :goto_123
    invoke-virtual {v13, v0}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->otaInitiatorOperation(Lcom/mediatek/bt/mesh/OtaOperationParams;)I

    move-result v1

    .line 720
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 722
    return v16

    .line 703
    .end local v0    # "_arg0":Lcom/mediatek/bt/mesh/OtaOperationParams;
    .end local v1    # "_result":I
    :pswitch_12e
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 704
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->otaGetClientModelHandle()[I

    move-result-object v0

    .line 705
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 706
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 707
    return v16

    .line 691
    .end local v0    # "_result":[I
    :pswitch_13c
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 693
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 695
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 696
    .local v1, "_arg1":J
    invoke-virtual {v13, v0, v1, v2}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->setHeartbeatPeriod(IJ)I

    move-result v3

    .line 697
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 699
    return v16

    .line 683
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    .end local v3    # "_result":I
    :pswitch_152
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 684
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->gattDisconnect()I

    move-result v0

    .line 685
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 686
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 687
    return v16

    .line 669
    .end local v0    # "_result":I
    :pswitch_160
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 671
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 673
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 675
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 676
    .local v2, "_arg2":I
    invoke-virtual {v13, v0, v1, v2}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->gattConnect(Ljava/lang/String;II)I

    move-result v3

    .line 677
    .restart local v3    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 678
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 679
    return v16

    .line 657
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_17a
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 659
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 661
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 662
    .local v2, "_arg1":I
    invoke-virtual {v13, v0, v1, v2}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getModelHandle(JI)I

    move-result v3

    .line 663
    .restart local v3    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 665
    return v16

    .line 648
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_190
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 650
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 651
    .restart local v0    # "_arg0":J
    invoke-virtual {v13, v0, v1}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->setLogLevel(J)V

    .line 652
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    return v16

    .line 624
    .end local v0    # "_arg0":J
    :pswitch_19e
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 628
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1b4

    .line 629
    sget-object v1, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;

    .local v1, "_arg1":Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;
    goto :goto_1b5

    .line 632
    .end local v1    # "_arg1":Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;
    :cond_1b4
    const/4 v1, 0x0

    .line 635
    .restart local v1    # "_arg1":Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;
    :goto_1b5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1c4

    .line 636
    sget-object v2, Lcom/mediatek/bt/mesh/BluetoothMeshAccessTxMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/bt/mesh/BluetoothMeshAccessTxMessage;

    .local v2, "_arg2":Lcom/mediatek/bt/mesh/BluetoothMeshAccessTxMessage;
    goto :goto_1c5

    .line 639
    .end local v2    # "_arg2":Lcom/mediatek/bt/mesh/BluetoothMeshAccessTxMessage;
    :cond_1c4
    const/4 v2, 0x0

    .line 641
    .restart local v2    # "_arg2":Lcom/mediatek/bt/mesh/BluetoothMeshAccessTxMessage;
    :goto_1c5
    invoke-virtual {v13, v0, v1, v2}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->accessModelReply(ILcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;Lcom/mediatek/bt/mesh/BluetoothMeshAccessTxMessage;)I

    move-result v3

    .line 642
    .restart local v3    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 644
    return v16

    .line 612
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;
    .end local v2    # "_arg2":Lcom/mediatek/bt/mesh/BluetoothMeshAccessTxMessage;
    .end local v3    # "_result":I
    :pswitch_1d0
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 616
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 617
    .local v1, "_arg1":I
    invoke-virtual {v13, v0, v1}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->modelAppBind(II)I

    move-result v2

    .line 618
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 620
    return v16

    .line 602
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_1e6
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 604
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 605
    .restart local v0    # "_arg0":I
    invoke-virtual {v13, v0}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->delDevKey(I)I

    move-result v1

    .line 606
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 608
    return v16

    .line 592
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_1f8
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 595
    .restart local v0    # "_arg0":I
    invoke-virtual {v13, v0}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDevKey(I)[I

    move-result-object v1

    .line 596
    .local v1, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 598
    return v16

    .line 578
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[I
    :pswitch_20a
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 582
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 584
    .local v1, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 585
    .local v2, "_arg2":[I
    invoke-virtual {v13, v0, v1, v2}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->addDevKey(I[I[I)I

    move-result v3

    .line 586
    .restart local v3    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 588
    return v16

    .line 566
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[I
    .end local v2    # "_arg2":[I
    .end local v3    # "_result":I
    :pswitch_224
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 570
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 571
    .local v2, "_arg1":I
    invoke-virtual {v13, v0, v1, v2}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->setIv(JI)I

    move-result v3

    .line 572
    .restart local v3    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 574
    return v16

    .line 558
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_23a
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 559
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultTtl()I

    move-result v0

    .line 560
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 562
    return v16

    .line 549
    .end local v0    # "_result":I
    :pswitch_248
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 552
    .local v0, "_arg0":I
    invoke-virtual {v13, v0}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->setDefaultTtl(I)V

    .line 553
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    return v16

    .line 539
    .end local v0    # "_arg0":I
    :pswitch_256
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 541
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 542
    .restart local v0    # "_arg0":I
    invoke-virtual {v13, v0}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getElementAddr(I)I

    move-result v1

    .line 543
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    return v16

    .line 531
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_268
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 532
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 535
    return v16

    .line 524
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_276
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->setData()V

    .line 526
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    return v16

    .line 516
    :pswitch_280
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->saveData()Z

    move-result v0

    .line 518
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    return v16

    .line 506
    .end local v0    # "_result":Z
    :pswitch_28e
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 509
    .local v0, "_arg0":I
    invoke-virtual {v13, v0}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->resetData(I)Z

    move-result v1

    .line 510
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    return v16

    .line 496
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_2a0
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 499
    .restart local v0    # "_arg0":I
    invoke-virtual {v13, v0}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->setMeshMode(I)I

    move-result v1

    .line 500
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 502
    return v16

    .line 480
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_2b2
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 484
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 486
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 488
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 489
    .local v3, "_arg3":[I
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->publishModel(III[I)I

    move-result v4

    .line 490
    .restart local v4    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 492
    return v16

    .line 460
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":[I
    .end local v4    # "_result":I
    :pswitch_2d0
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 464
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 466
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 468
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 470
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 472
    .local v11, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v17

    .line 473
    .local v17, "_arg5":[I
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    move-object/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->sendPacket(IIIII[I)I

    move-result v0

    .line 474
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 476
    return v16

    .line 435
    .end local v0    # "_result":I
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    .end local v17    # "_arg5":[I
    :pswitch_2ff
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 437
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 439
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 441
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 443
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 445
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 447
    .restart local v11    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_327

    .line 448
    sget-object v0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bt/mesh/ConfigMessageParams;

    move-object/from16 v17, v0

    .local v0, "_arg5":Lcom/mediatek/bt/mesh/ConfigMessageParams;
    goto :goto_32a

    .line 451
    .end local v0    # "_arg5":Lcom/mediatek/bt/mesh/ConfigMessageParams;
    :cond_327
    const/4 v0, 0x0

    move-object/from16 v17, v0

    .line 453
    .local v17, "_arg5":Lcom/mediatek/bt/mesh/ConfigMessageParams;
    :goto_32a
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    move-object/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->sendConfigMessage(IIIIILcom/mediatek/bt/mesh/ConfigMessageParams;)I

    move-result v0

    .line 454
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    return v16

    .line 423
    .end local v0    # "_result":I
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    .end local v17    # "_arg5":Lcom/mediatek/bt/mesh/ConfigMessageParams;
    :pswitch_33e
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 427
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 428
    .local v1, "_arg1":[I
    invoke-virtual {v13, v0, v1}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->setProvisionFactor(I[I)I

    move-result v2

    .line 429
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 431
    return v16

    .line 393
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[I
    .end local v2    # "_result":I
    :pswitch_354
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 397
    .local v17, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 399
    .local v18, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 401
    .local v19, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 403
    .local v20, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 405
    .local v21, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v22

    .line 407
    .local v22, "_arg5":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 409
    .restart local v23    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .line 411
    .local v24, "_arg7":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 413
    .local v26, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 415
    .local v27, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 416
    .local v28, "_arg10":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    move/from16 v5, v21

    move-object/from16 v6, v22

    move/from16 v7, v23

    move-wide/from16 v8, v24

    move/from16 v10, v26

    move/from16 v11, v27

    move-object v13, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .local v13, "descriptor":Ljava/lang/String;
    move/from16 v12, v28

    invoke-virtual/range {v0 .. v12}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->startProvisioning(IIIII[IIJIII)I

    move-result v0

    .line 417
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    return v16

    .line 381
    .end local v0    # "_result":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .end local v17    # "_arg0":I
    .end local v18    # "_arg1":I
    .end local v19    # "_arg2":I
    .end local v20    # "_arg3":I
    .end local v21    # "_arg4":I
    .end local v22    # "_arg5":[I
    .end local v23    # "_arg6":I
    .end local v24    # "_arg7":J
    .end local v26    # "_arg8":I
    .end local v27    # "_arg9":I
    .end local v28    # "_arg10":I
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_3a7
    move-object v13, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 385
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 386
    .local v1, "_arg1":I
    move-object/from16 v2, p0

    move-object v3, v13

    .end local v13    # "descriptor":Ljava/lang/String;
    .local v3, "descriptor":Ljava/lang/String;
    invoke-virtual {v2, v0, v1}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->inviteProvisioning([II)I

    move-result v4

    .line 387
    .restart local v4    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    return v16

    .line 370
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":I
    .end local v3    # "descriptor":Ljava/lang/String;
    .end local v4    # "_result":I
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_3c1
    move-object v3, v12

    move-object v2, v13

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v3    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3ce

    move/from16 v0, v16

    .line 374
    .local v0, "_arg0":Z
    :cond_3ce
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 375
    .restart local v1    # "_arg1":I
    invoke-virtual {v2, v0, v1}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->unProvisionScan(ZI)V

    .line 376
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    return v16

    .line 354
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v3    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_3d9
    move-object v3, v12

    move-object v2, v13

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v3    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 358
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 360
    .local v1, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 362
    .local v4, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 363
    .local v5, "_arg3":I
    invoke-virtual {v2, v0, v1, v4, v5}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->setAppkey(I[III)I

    move-result v6

    .line 364
    .local v6, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    invoke-virtual {v15, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    return v16

    .line 340
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[I
    .end local v3    # "descriptor":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_result":I
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_3f9
    move-object v3, v12

    move-object v2, v13

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v3    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 344
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 346
    .restart local v1    # "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 347
    .restart local v4    # "_arg2":I
    invoke-virtual {v2, v0, v1, v4}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->setNetkey(I[II)I

    move-result v5

    .line 348
    .local v5, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    invoke-virtual {v15, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    return v16

    .line 325
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[I
    .end local v3    # "descriptor":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":I
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_415
    move-object v3, v12

    move-object v2, v13

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v3    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_429

    .line 328
    sget-object v0, Lcom/mediatek/bt/mesh/MeshModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bt/mesh/MeshModel;

    .local v0, "_arg0":Lcom/mediatek/bt/mesh/MeshModel;
    goto :goto_42a

    .line 331
    .end local v0    # "_arg0":Lcom/mediatek/bt/mesh/MeshModel;
    :cond_429
    const/4 v0, 0x0

    .line 333
    .restart local v0    # "_arg0":Lcom/mediatek/bt/mesh/MeshModel;
    :goto_42a
    invoke-virtual {v2, v0}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->addModel(Lcom/mediatek/bt/mesh/MeshModel;)I

    move-result v1

    .line 334
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    return v16

    .line 315
    .end local v0    # "_arg0":Lcom/mediatek/bt/mesh/MeshModel;
    .end local v1    # "_result":I
    .end local v3    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_435
    move-object v3, v12

    move-object v2, v13

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v3    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 318
    .local v0, "_arg0":I
    invoke-virtual {v2, v0}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->setElementAddr(I)Z

    move-result v1

    .line 319
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    return v16

    .line 305
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    .end local v3    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_449
    move-object v3, v12

    move-object v2, v13

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v3    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 308
    .restart local v0    # "_arg0":I
    invoke-virtual {v2, v0}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->addElement(I)I

    move-result v1

    .line 309
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    return v16

    .line 295
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    .end local v3    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_45d
    move-object v3, v12

    move-object v2, v13

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v3    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 298
    .local v0, "_arg0":[I
    invoke-virtual {v2, v0}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->setCompositionDataHeader([I)Z

    move-result v1

    .line 299
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    return v16

    .line 287
    .end local v0    # "_arg0":[I
    .end local v1    # "_result":Z
    .end local v3    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_471
    move-object v3, v12

    move-object v2, v13

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v3    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->disable()I

    move-result v0

    .line 289
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    return v16

    .line 272
    .end local v0    # "_result":I
    .end local v3    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_481
    move-object v3, v12

    move-object v2, v13

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v3    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_495

    .line 275
    sget-object v0, Lcom/mediatek/bt/mesh/MeshInitParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bt/mesh/MeshInitParams;

    .local v0, "_arg0":Lcom/mediatek/bt/mesh/MeshInitParams;
    goto :goto_496

    .line 278
    .end local v0    # "_arg0":Lcom/mediatek/bt/mesh/MeshInitParams;
    :cond_495
    const/4 v0, 0x0

    .line 280
    .restart local v0    # "_arg0":Lcom/mediatek/bt/mesh/MeshInitParams;
    :goto_496
    invoke-virtual {v2, v0}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->enable(Lcom/mediatek/bt/mesh/MeshInitParams;)I

    move-result v1

    .line 281
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    return v16

    .line 264
    .end local v0    # "_arg0":Lcom/mediatek/bt/mesh/MeshInitParams;
    .end local v1    # "_result":I
    .end local v3    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_4a1
    move-object v3, v12

    move-object v2, v13

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v3    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getMeshState()Z

    move-result v0

    .line 266
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    return v16

    .line 256
    .end local v0    # "_result":Z
    .end local v3    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_4b1
    move-object v3, v12

    move-object v2, v13

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v3    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getMeshRole()I

    move-result v0

    .line 258
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    return v16

    .line 249
    .end local v0    # "_result":I
    .end local v3    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_4c1
    move-object v3, v12

    move-object v2, v13

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v3    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->unregisterCallback()V

    .line 251
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    return v16

    .line 240
    .end local v3    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_4cd
    move-object v3, v12

    move-object v2, v13

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v3    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v0

    .line 243
    .local v0, "_arg0":Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;
    invoke-virtual {v2, v0}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->registerCallback(Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;)V

    .line 244
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    return v16

    nop

    :pswitch_data_4e2
    .packed-switch 0x5f4e5446
        :pswitch_17
    .end packed-switch

    :pswitch_data_4e8
    .packed-switch 0x1
        :pswitch_4cd
        :pswitch_4c1
        :pswitch_4b1
        :pswitch_4a1
        :pswitch_481
        :pswitch_471
        :pswitch_45d
        :pswitch_449
        :pswitch_435
        :pswitch_415
        :pswitch_3f9
        :pswitch_3d9
        :pswitch_3c1
        :pswitch_3a7
        :pswitch_354
        :pswitch_33e
        :pswitch_2ff
        :pswitch_2d0
        :pswitch_2b2
        :pswitch_2a0
        :pswitch_28e
        :pswitch_280
        :pswitch_276
        :pswitch_268
        :pswitch_256
        :pswitch_248
        :pswitch_23a
        :pswitch_224
        :pswitch_20a
        :pswitch_1f8
        :pswitch_1e6
        :pswitch_1d0
        :pswitch_19e
        :pswitch_190
        :pswitch_17a
        :pswitch_160
        :pswitch_152
        :pswitch_13c
        :pswitch_12e
        :pswitch_110
        :pswitch_d7
        :pswitch_c1
        :pswitch_9f
        :pswitch_6b
        :pswitch_29
        :pswitch_1b
    .end packed-switch
.end method

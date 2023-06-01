.class Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBluetoothMesh.java"

# interfaces
.implements Lcom/mediatek/bt/mesh/IBluetoothMesh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/mediatek/bt/mesh/IBluetoothMesh;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 828
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 829
    iput-object p1, p0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 830
    return-void
.end method


# virtual methods
.method public accessModelReply(ILcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;Lcom/mediatek/bt/mesh/BluetoothMeshAccessTxMessage;)I
    .registers 9
    .param p1, "modelHandle"    # I
    .param p2, "msg"    # Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;
    .param p3, "reply"    # Lcom/mediatek/bt/mesh/BluetoothMeshAccessTxMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1612
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1613
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1616
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1617
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1618
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_1b

    .line 1619
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1620
    invoke-virtual {p2, v0, v3}, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1e

    .line 1623
    :cond_1b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1625
    :goto_1e
    if-eqz p3, :cond_27

    .line 1626
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1627
    invoke-virtual {p3, v0, v3}, Lcom/mediatek/bt/mesh/BluetoothMeshAccessTxMessage;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2a

    .line 1630
    :cond_27
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1632
    :goto_2a
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x21

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1633
    .local v2, "_status":Z
    if-nez v2, :cond_49

    .line 1634
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    if-eqz v3, :cond_49

    .line 1635
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->accessModelReply(ILcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;Lcom/mediatek/bt/mesh/BluetoothMeshAccessTxMessage;)I

    move-result v3
    :try_end_42
    .catchall {:try_start_8 .. :try_end_42} :catchall_59

    .line 1642
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1643
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1635
    return v3

    .line 1638
    :cond_49
    :try_start_49
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1639
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_50
    .catchall {:try_start_49 .. :try_end_50} :catchall_59

    move v2, v3

    .line 1642
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1643
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1644
    nop

    .line 1645
    return v2

    .line 1642
    .end local v2    # "_result":I
    :catchall_59
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1643
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1644
    throw v2
.end method

.method public addDevKey(I[I[I)I
    .registers 9
    .param p1, "unicastAddr"    # I
    .param p2, "devicekey"    # [I
    .param p3, "uuid"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1517
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1518
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1521
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1522
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1523
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1524
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1525
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1526
    .local v2, "_status":Z
    if-nez v2, :cond_36

    .line 1527
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 1528
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->addDevKey(I[I[I)I

    move-result v3
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_46

    .line 1535
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1528
    return v3

    .line 1531
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1532
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_46

    move v2, v3

    .line 1535
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1537
    nop

    .line 1538
    return v2

    .line 1535
    .end local v2    # "_result":I
    :catchall_46
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1537
    throw v2
.end method

.method public addElement(I)I
    .registers 7
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1000
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1001
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1004
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1005
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1006
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1007
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 1008
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 1009
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->addElement(I)I

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 1016
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1017
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1009
    return v3

    .line 1012
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1013
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move v2, v3

    .line 1016
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1017
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1018
    nop

    .line 1019
    return v2

    .line 1016
    .end local v2    # "_result":I
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1017
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1018
    throw v2
.end method

.method public addModel(Lcom/mediatek/bt/mesh/MeshModel;)I
    .registers 7
    .param p1, "model"    # Lcom/mediatek/bt/mesh/MeshModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1046
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1047
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1050
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1051
    const/4 v2, 0x0

    if-eqz p1, :cond_18

    .line 1052
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1053
    invoke-virtual {p1, v0, v2}, Lcom/mediatek/bt/mesh/MeshModel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 1056
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1058
    :goto_1b
    iget-object v3, p0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1059
    .local v2, "_status":Z
    if-nez v2, :cond_3a

    .line 1060
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    if-eqz v3, :cond_3a

    .line 1061
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->addModel(Lcom/mediatek/bt/mesh/MeshModel;)I

    move-result v3
    :try_end_33
    .catchall {:try_start_8 .. :try_end_33} :catchall_4a

    .line 1068
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1069
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1061
    return v3

    .line 1064
    :cond_3a
    :try_start_3a
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1065
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_4a

    move v2, v3

    .line 1068
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1069
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1070
    nop

    .line 1071
    return v2

    .line 1068
    .end local v2    # "_result":I
    :catchall_4a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1069
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1070
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 833
    iget-object v0, p0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public bearerAdvSetParams(JIIIJII)I
    .registers 26
    .param p1, "advPeriod"    # J
    .param p3, "minInterval"    # I
    .param p4, "maxInterval"    # I
    .param p5, "resend"    # I
    .param p6, "scanPeriod"    # J
    .param p8, "scanInterval"    # I
    .param p9, "scanWindow"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1816
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1817
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1820
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_74

    .line 1821
    move-wide/from16 v13, p1

    :try_start_f
    invoke-virtual {v1, v13, v14}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_72

    .line 1822
    move/from16 v15, p3

    :try_start_14
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 1823
    move/from16 v12, p4

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1824
    move/from16 v11, p5

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1825
    move-wide/from16 v9, p6

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 1826
    move/from16 v8, p8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1827
    move/from16 v7, p9

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1828
    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1829
    .local v0, "_status":Z
    if-nez v0, :cond_60

    .line 1830
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    if-eqz v3, :cond_60

    .line 1831
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-wide/from16 v9, p6

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-interface/range {v3 .. v12}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->bearerAdvSetParams(JIIIJII)I

    move-result v3
    :try_end_59
    .catchall {:try_start_14 .. :try_end_59} :catchall_70

    .line 1838
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1839
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1831
    return v3

    .line 1834
    :cond_60
    :try_start_60
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1835
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_67
    .catchall {:try_start_60 .. :try_end_67} :catchall_70

    move v0, v3

    .line 1838
    .local v0, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1839
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1840
    nop

    .line 1841
    return v0

    .line 1838
    .end local v0    # "_result":I
    :catchall_70
    move-exception v0

    goto :goto_79

    :catchall_72
    move-exception v0

    goto :goto_77

    :catchall_74
    move-exception v0

    move-wide/from16 v13, p1

    :goto_77
    move/from16 v15, p3

    :goto_79
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1839
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1840
    throw v0
.end method

.method public delDevKey(I)I
    .registers 7
    .param p1, "unicastAddr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1565
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1566
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1569
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1570
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1571
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1572
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 1573
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 1574
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->delDevKey(I)I

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 1581
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1582
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1574
    return v3

    .line 1577
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1578
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move v2, v3

    .line 1581
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1582
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1583
    nop

    .line 1584
    return v2

    .line 1581
    .end local v2    # "_result":I
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1582
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1583
    throw v2
.end method

.method public disable()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 955
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 956
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 959
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 960
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 961
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    .line 962
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 963
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->disable()I

    move-result v3
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3c

    .line 970
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 971
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 963
    return v3

    .line 966
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 967
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_3c

    move v2, v3

    .line 970
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 971
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 972
    nop

    .line 973
    return v2

    .line 970
    .end local v2    # "_result":I
    :catchall_3c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 971
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 972
    throw v2
.end method

.method public disableMeshFilter()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1949
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1950
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1953
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1954
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1955
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    .line 1956
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 1957
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->disableMeshFilter()I

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3d

    .line 1964
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1957
    return v3

    .line 1960
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1961
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3d

    move v2, v3

    .line 1964
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1966
    nop

    .line 1967
    return v2

    .line 1964
    .end local v2    # "_result":I
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1966
    throw v2
.end method

.method public enable(Lcom/mediatek/bt/mesh/MeshInitParams;)I
    .registers 7
    .param p1, "params"    # Lcom/mediatek/bt/mesh/MeshInitParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 926
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 927
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 930
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 931
    const/4 v2, 0x0

    if-eqz p1, :cond_18

    .line 932
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 933
    invoke-virtual {p1, v0, v2}, Lcom/mediatek/bt/mesh/MeshInitParams;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 936
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 938
    :goto_1b
    iget-object v3, p0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 939
    .local v2, "_status":Z
    if-nez v2, :cond_39

    .line 940
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    if-eqz v3, :cond_39

    .line 941
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->enable(Lcom/mediatek/bt/mesh/MeshInitParams;)I

    move-result v3
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_49

    .line 948
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 949
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 941
    return v3

    .line 944
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 945
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_49

    move v2, v3

    .line 948
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 949
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 950
    nop

    .line 951
    return v2

    .line 948
    .end local v2    # "_result":I
    :catchall_49
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 949
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 950
    throw v2
.end method

.method public enableMeshFilter(ZZZZ)I
    .registers 10
    .param p1, "pbAdv"    # Z
    .param p2, "meshMessage"    # Z
    .param p3, "unprovBeacon"    # Z
    .param p4, "secureBeacon"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1895
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1896
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1899
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1900
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_13

    move v4, v2

    goto :goto_14

    :cond_13
    move v4, v3

    :goto_14
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1901
    if-eqz p2, :cond_1b

    move v4, v2

    goto :goto_1c

    :cond_1b
    move v4, v3

    :goto_1c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1902
    if-eqz p3, :cond_23

    move v4, v2

    goto :goto_24

    :cond_23
    move v4, v3

    :goto_24
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1903
    if-eqz p4, :cond_2a

    goto :goto_2b

    :cond_2a
    move v2, v3

    :goto_2b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1904
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2c

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1905
    .local v2, "_status":Z
    if-nez v2, :cond_4d

    .line 1906
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    if-eqz v3, :cond_4d

    .line 1907
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->enableMeshFilter(ZZZZ)I

    move-result v3
    :try_end_46
    .catchall {:try_start_8 .. :try_end_46} :catchall_5d

    .line 1914
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1915
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1907
    return v3

    .line 1910
    :cond_4d
    :try_start_4d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1911
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_54
    .catchall {:try_start_4d .. :try_end_54} :catchall_5d

    move v2, v3

    .line 1914
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1915
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1916
    nop

    .line 1917
    return v2

    .line 1914
    .end local v2    # "_result":I
    :catchall_5d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1915
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1916
    throw v2
.end method

.method public enableMeshFilterWithNetwork(ZZ[IZZ[I)I
    .registers 21
    .param p1, "pbAdv"    # Z
    .param p2, "meshMessageWithNID"    # Z
    .param p3, "meshMessageNetIndex"    # [I
    .param p4, "unprovBeacon"    # Z
    .param p5, "secureBeaconWithNetworkID"    # Z
    .param p6, "secureBeaconNetIndex"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1921
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1922
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1925
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1926
    const/4 v0, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_13

    move v4, v0

    goto :goto_14

    :cond_13
    move v4, v3

    :goto_14
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1927
    if-eqz p2, :cond_1b

    move v4, v0

    goto :goto_1c

    :cond_1b
    move v4, v3

    :goto_1c
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_7b

    .line 1928
    move-object/from16 v11, p3

    :try_start_21
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1929
    if-eqz p4, :cond_28

    move v4, v0

    goto :goto_29

    :cond_28
    move v4, v3

    :goto_29
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1930
    if-eqz p5, :cond_2f

    goto :goto_30

    :cond_2f
    move v0, v3

    :goto_30
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_33
    .catchall {:try_start_21 .. :try_end_33} :catchall_78

    .line 1931
    move-object/from16 v12, p6

    :try_start_35
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeIntArray([I)V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_75

    .line 1932
    move-object v13, p0

    :try_start_39
    iget-object v0, v13, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2d

    invoke-interface {v0, v4, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1933
    .local v0, "_status":Z
    if-nez v0, :cond_63

    .line 1934
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    if-eqz v3, :cond_63

    .line 1935
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v4

    move v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    invoke-interface/range {v4 .. v10}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->enableMeshFilterWithNetwork(ZZ[IZZ[I)I

    move-result v3
    :try_end_5c
    .catchall {:try_start_39 .. :try_end_5c} :catchall_73

    .line 1942
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1943
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1935
    return v3

    .line 1938
    :cond_63
    :try_start_63
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1939
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_6a
    .catchall {:try_start_63 .. :try_end_6a} :catchall_73

    move v0, v3

    .line 1942
    .local v0, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1943
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1944
    nop

    .line 1945
    return v0

    .line 1942
    .end local v0    # "_result":I
    :catchall_73
    move-exception v0

    goto :goto_81

    :catchall_75
    move-exception v0

    move-object v13, p0

    goto :goto_81

    :catchall_78
    move-exception v0

    move-object v13, p0

    goto :goto_7f

    :catchall_7b
    move-exception v0

    move-object v13, p0

    move-object/from16 v11, p3

    :goto_7f
    move-object/from16 v12, p6

    :goto_81
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1943
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1944
    throw v0
.end method

.method public gattConnect(Ljava/lang/String;II)I
    .registers 9
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "addressType"    # I
    .param p3, "serviceType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1694
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1695
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1698
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1699
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1700
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1701
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1702
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1703
    .local v2, "_status":Z
    if-nez v2, :cond_36

    .line 1704
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 1705
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->gattConnect(Ljava/lang/String;II)I

    move-result v3
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_46

    .line 1712
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1705
    return v3

    .line 1708
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1709
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_46

    move v2, v3

    .line 1712
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1714
    nop

    .line 1715
    return v2

    .line 1712
    .end local v2    # "_result":I
    :catchall_46
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1714
    throw v2
.end method

.method public gattDisconnect()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1719
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1720
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1723
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1724
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1725
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    .line 1726
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 1727
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->gattDisconnect()I

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3d

    .line 1734
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1735
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1727
    return v3

    .line 1730
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1731
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3d

    move v2, v3

    .line 1734
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1735
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1736
    nop

    .line 1737
    return v2

    .line 1734
    .end local v2    # "_result":I
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1735
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1736
    throw v2
.end method

.method public getDefaultTtl()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1471
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1472
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1475
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1476
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1477
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    .line 1478
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 1479
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->getDefaultTtl()I

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3d

    .line 1486
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1479
    return v3

    .line 1482
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1483
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3d

    move v2, v3

    .line 1486
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1488
    nop

    .line 1489
    return v2

    .line 1486
    .end local v2    # "_result":I
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1488
    throw v2
.end method

.method public getDevKey(I)[I
    .registers 7
    .param p1, "unicastAddr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1542
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1543
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1546
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1547
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1548
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1549
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 1550
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 1551
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->getDevKey(I)[I

    move-result-object v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 1558
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1551
    return-object v3

    .line 1554
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1555
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move-object v2, v3

    .line 1558
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1560
    nop

    .line 1561
    return-object v2

    .line 1558
    .end local v2    # "_result":[I
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1560
    throw v2
.end method

.method public getElementAddr(I)I
    .registers 7
    .param p1, "elementIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1427
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1428
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1431
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1432
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1433
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1434
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 1435
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 1436
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->getElementAddr(I)I

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 1443
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1436
    return v3

    .line 1439
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1440
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move v2, v3

    .line 1443
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1445
    nop

    .line 1446
    return v2

    .line 1443
    .end local v2    # "_result":I
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1445
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 837
    const-string v0, "com.mediatek.bt.mesh.IBluetoothMesh"

    return-object v0
.end method

.method public getMeshRole()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 882
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 883
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 886
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 887
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 888
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    .line 889
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 890
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->getMeshRole()I

    move-result v3
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3c

    .line 897
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 898
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 890
    return v3

    .line 893
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 894
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_3c

    move v2, v3

    .line 897
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 898
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 899
    nop

    .line 900
    return v2

    .line 897
    .end local v2    # "_result":I
    :catchall_3c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 898
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 899
    throw v2
.end method

.method public getMeshState()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 904
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 905
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 908
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 909
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 910
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    .line 911
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 912
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->getMeshState()Z

    move-result v3
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3f

    .line 919
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 912
    return v3

    .line 915
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 916
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_3f

    if-eqz v3, :cond_36

    const/4 v4, 0x1

    :cond_36
    move v2, v4

    .line 919
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 921
    nop

    .line 922
    return v2

    .line 919
    .end local v2    # "_result":Z
    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 921
    throw v2
.end method

.method public getModelHandle(JI)I
    .registers 9
    .param p1, "modelId"    # J
    .param p3, "elementIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1670
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1671
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1674
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1675
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1676
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1677
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1678
    .local v2, "_status":Z
    if-nez v2, :cond_33

    .line 1679
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 1680
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->getModelHandle(JI)I

    move-result v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_43

    .line 1687
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1688
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1680
    return v3

    .line 1683
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1684
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_43

    move v2, v3

    .line 1687
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1688
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1689
    nop

    .line 1690
    return v2

    .line 1687
    .end local v2    # "_result":I
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1688
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1689
    throw v2
.end method

.method public getVersion()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1405
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1406
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1409
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1410
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1411
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    .line 1412
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 1413
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->getVersion()Ljava/lang/String;

    move-result-object v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3d

    .line 1420
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1413
    return-object v3

    .line 1416
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1417
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3d

    move-object v2, v3

    .line 1420
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1422
    nop

    .line 1423
    return-object v2

    .line 1420
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1422
    throw v2
.end method

.method public inviteProvisioning([II)I
    .registers 8
    .param p1, "UUID"    # [I
    .param p2, "attentionDuration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1149
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1152
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1153
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1154
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1155
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1156
    .local v2, "_status":Z
    if-nez v2, :cond_33

    .line 1157
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 1158
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->inviteProvisioning([II)I

    move-result v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_43

    .line 1165
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1158
    return v3

    .line 1161
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1162
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_43

    move v2, v3

    .line 1165
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1167
    nop

    .line 1168
    return v2

    .line 1165
    .end local v2    # "_result":I
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1167
    throw v2
.end method

.method public modelAppBind(II)I
    .registers 8
    .param p1, "handle"    # I
    .param p2, "appIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1588
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1589
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1592
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1593
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1594
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1595
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1596
    .local v2, "_status":Z
    if-nez v2, :cond_33

    .line 1597
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 1598
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->modelAppBind(II)I

    move-result v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_43

    .line 1605
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1598
    return v3

    .line 1601
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1602
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_43

    move v2, v3

    .line 1605
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1607
    nop

    .line 1608
    return v2

    .line 1605
    .end local v2    # "_result":I
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1607
    throw v2
.end method

.method public otaGetClientModelHandle()[I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1765
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1766
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1769
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1770
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1771
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    .line 1772
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 1773
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->otaGetClientModelHandle()[I

    move-result-object v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3d

    .line 1780
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1781
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1773
    return-object v3

    .line 1776
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1777
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3d

    move-object v2, v3

    .line 1780
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1781
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1782
    nop

    .line 1783
    return-object v2

    .line 1780
    .end local v2    # "_result":[I
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1781
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1782
    throw v2
.end method

.method public otaInitiatorOperation(Lcom/mediatek/bt/mesh/OtaOperationParams;)I
    .registers 7
    .param p1, "params"    # Lcom/mediatek/bt/mesh/OtaOperationParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1787
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1788
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1791
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1792
    const/4 v2, 0x0

    if-eqz p1, :cond_18

    .line 1793
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1794
    invoke-virtual {p1, v0, v2}, Lcom/mediatek/bt/mesh/OtaOperationParams;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 1797
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1799
    :goto_1b
    iget-object v3, p0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x28

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1800
    .local v2, "_status":Z
    if-nez v2, :cond_3a

    .line 1801
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    if-eqz v3, :cond_3a

    .line 1802
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->otaInitiatorOperation(Lcom/mediatek/bt/mesh/OtaOperationParams;)I

    move-result v3
    :try_end_33
    .catchall {:try_start_8 .. :try_end_33} :catchall_4a

    .line 1809
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1810
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1802
    return v3

    .line 1805
    :cond_3a
    :try_start_3a
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1806
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_4a

    move v2, v3

    .line 1809
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1810
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1811
    nop

    .line 1812
    return v2

    .line 1809
    .end local v2    # "_result":I
    :catchall_4a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1810
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1811
    throw v2
.end method

.method public publishModel(III[I)I
    .registers 10
    .param p1, "modelHandle"    # I
    .param p2, "opCode"    # I
    .param p3, "companyId"    # I
    .param p4, "buffer"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1291
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1292
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1295
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1296
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1297
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1298
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1299
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1300
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1301
    .local v2, "_status":Z
    if-nez v2, :cond_39

    .line 1302
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    if-eqz v3, :cond_39

    .line 1303
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->publishModel(III[I)I

    move-result v3
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_49

    .line 1310
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1303
    return v3

    .line 1306
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1307
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_49

    move v2, v3

    .line 1310
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1312
    nop

    .line 1313
    return v2

    .line 1310
    .end local v2    # "_result":I
    :catchall_49
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1312
    throw v2
.end method

.method public registerCallback(Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;)V
    .registers 7
    .param p1, "callback"    # Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 841
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 842
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 844
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 845
    if-eqz p1, :cond_14

    invoke-interface {p1}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 846
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 847
    .local v2, "_status":Z
    if-nez v2, :cond_36

    .line 848
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 849
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->registerCallback(Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;)V
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_41

    .line 856
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 857
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 850
    return-void

    .line 853
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_41

    .line 856
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 857
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 858
    nop

    .line 859
    return-void

    .line 856
    :catchall_41
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 857
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 858
    throw v2
.end method

.method public resetData(I)Z
    .registers 7
    .param p1, "sector"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1340
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1341
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1344
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1345
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1346
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1347
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 1348
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 1349
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->resetData(I)Z

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_43

    .line 1356
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1349
    return v3

    .line 1352
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1353
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_43

    if-eqz v3, :cond_3a

    const/4 v4, 0x1

    :cond_3a
    move v2, v4

    .line 1356
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1358
    nop

    .line 1359
    return v2

    .line 1356
    .end local v2    # "_result":Z
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1358
    throw v2
.end method

.method public saveData()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1363
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1364
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1367
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1368
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1369
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    .line 1370
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 1371
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->saveData()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_40

    .line 1378
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1379
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1371
    return v3

    .line 1374
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1375
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_40

    if-eqz v3, :cond_37

    const/4 v4, 0x1

    :cond_37
    move v2, v4

    .line 1378
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1379
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1380
    nop

    .line 1381
    return v2

    .line 1378
    .end local v2    # "_result":Z
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1379
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1380
    throw v2
.end method

.method public sendConfigMessage(IIIIILcom/mediatek/bt/mesh/ConfigMessageParams;)I
    .registers 23
    .param p1, "dst"    # I
    .param p2, "src"    # I
    .param p3, "ttl"    # I
    .param p4, "netKeyIndex"    # I
    .param p5, "opcode"    # I
    .param p6, "param"    # Lcom/mediatek/bt/mesh/ConfigMessageParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1229
    move-object/from16 v8, p6

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    .line 1230
    .local v9, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    .line 1233
    .local v10, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v0, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_7d

    .line 1234
    move/from16 v11, p1

    :try_start_11
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_7b

    .line 1235
    move/from16 v12, p2

    :try_start_16
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_79

    .line 1236
    move/from16 v13, p3

    :try_start_1b
    invoke-virtual {v9, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_77

    .line 1237
    move/from16 v14, p4

    :try_start_20
    invoke-virtual {v9, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_75

    .line 1238
    move/from16 v15, p5

    :try_start_25
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 1239
    const/4 v0, 0x0

    if-eqz v8, :cond_33

    .line 1240
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1241
    invoke-virtual {v8, v9, v0}, Lcom/mediatek/bt/mesh/ConfigMessageParams;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_36

    .line 1244
    :cond_33
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1246
    :goto_36
    move-object/from16 v7, p0

    iget-object v1, v7, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x11

    invoke-interface {v1, v2, v9, v10, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1247
    .local v0, "_status":Z
    if-nez v0, :cond_63

    .line 1248
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v1

    if-eqz v1, :cond_63

    .line 1249
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v1

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->sendConfigMessage(IIIIILcom/mediatek/bt/mesh/ConfigMessageParams;)I

    move-result v1
    :try_end_5c
    .catchall {:try_start_25 .. :try_end_5c} :catchall_73

    .line 1256
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 1257
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 1249
    return v1

    .line 1252
    :cond_63
    :try_start_63
    invoke-virtual {v10}, Landroid/os/Parcel;->readException()V

    .line 1253
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1
    :try_end_6a
    .catchall {:try_start_63 .. :try_end_6a} :catchall_73

    move v0, v1

    .line 1256
    .local v0, "_result":I
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 1257
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 1258
    nop

    .line 1259
    return v0

    .line 1256
    .end local v0    # "_result":I
    :catchall_73
    move-exception v0

    goto :goto_88

    :catchall_75
    move-exception v0

    goto :goto_86

    :catchall_77
    move-exception v0

    goto :goto_84

    :catchall_79
    move-exception v0

    goto :goto_82

    :catchall_7b
    move-exception v0

    goto :goto_80

    :catchall_7d
    move-exception v0

    move/from16 v11, p1

    :goto_80
    move/from16 v12, p2

    :goto_82
    move/from16 v13, p3

    :goto_84
    move/from16 v14, p4

    :goto_86
    move/from16 v15, p5

    :goto_88
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 1257
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 1258
    throw v0
.end method

.method public sendPacket(IIIII[I)I
    .registers 23
    .param p1, "dst"    # I
    .param p2, "src"    # I
    .param p3, "ttl"    # I
    .param p4, "netKeyIndex"    # I
    .param p5, "appKeyIndex"    # I
    .param p6, "payload"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1263
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1264
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1267
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_75

    .line 1268
    move/from16 v10, p1

    :try_start_f
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_73

    .line 1269
    move/from16 v11, p2

    :try_start_14
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_71

    .line 1270
    move/from16 v12, p3

    :try_start_19
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_6f

    .line 1271
    move/from16 v13, p4

    :try_start_1e
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_6d

    .line 1272
    move/from16 v14, p5

    :try_start_23
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_6b

    .line 1273
    move-object/from16 v15, p6

    :try_start_28
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1274
    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1275
    .local v0, "_status":Z
    if-nez v0, :cond_59

    .line 1276
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    if-eqz v3, :cond_59

    .line 1277
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->sendPacket(IIIII[I)I

    move-result v3
    :try_end_52
    .catchall {:try_start_28 .. :try_end_52} :catchall_69

    .line 1284
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1285
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1277
    return v3

    .line 1280
    :cond_59
    :try_start_59
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1281
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_69

    move v0, v3

    .line 1284
    .local v0, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1285
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1286
    nop

    .line 1287
    return v0

    .line 1284
    .end local v0    # "_result":I
    :catchall_69
    move-exception v0

    goto :goto_82

    :catchall_6b
    move-exception v0

    goto :goto_80

    :catchall_6d
    move-exception v0

    goto :goto_7e

    :catchall_6f
    move-exception v0

    goto :goto_7c

    :catchall_71
    move-exception v0

    goto :goto_7a

    :catchall_73
    move-exception v0

    goto :goto_78

    :catchall_75
    move-exception v0

    move/from16 v10, p1

    :goto_78
    move/from16 v11, p2

    :goto_7a
    move/from16 v12, p3

    :goto_7c
    move/from16 v13, p4

    :goto_7e
    move/from16 v14, p5

    :goto_80
    move-object/from16 v15, p6

    :goto_82
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1285
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1286
    throw v0
.end method

.method public setAppkey(I[III)I
    .registers 10
    .param p1, "op"    # I
    .param p2, "key"    # [I
    .param p3, "netIndex"    # I
    .param p4, "appIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1101
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1104
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1105
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1106
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1107
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1108
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1109
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1110
    .local v2, "_status":Z
    if-nez v2, :cond_39

    .line 1111
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    if-eqz v3, :cond_39

    .line 1112
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->setAppkey(I[III)I

    move-result v3
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_49

    .line 1119
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1112
    return v3

    .line 1115
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1116
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_49

    move v2, v3

    .line 1119
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1121
    nop

    .line 1122
    return v2

    .line 1119
    .end local v2    # "_result":I
    :catchall_49
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1121
    throw v2
.end method

.method public setCompositionDataHeader([I)Z
    .registers 7
    .param p1, "data"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 977
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 978
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 981
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 982
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 983
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 984
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    .line 985
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 986
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->setCompositionDataHeader([I)Z

    move-result v3
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_42

    .line 993
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 994
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 986
    return v3

    .line 989
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 990
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_42

    if-eqz v3, :cond_39

    const/4 v4, 0x1

    :cond_39
    move v2, v4

    .line 993
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 994
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 995
    nop

    .line 996
    return v2

    .line 993
    .end local v2    # "_result":Z
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 994
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 995
    throw v2
.end method

.method public setData()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1385
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1386
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1388
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1389
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1390
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    .line 1391
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 1392
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->setData()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_37

    .line 1399
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1393
    return-void

    .line 1396
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    .line 1399
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1401
    nop

    .line 1402
    return-void

    .line 1399
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1401
    throw v2
.end method

.method public setDefaultTtl(I)V
    .registers 7
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1450
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1451
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1453
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1454
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1455
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1456
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    .line 1457
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 1458
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->setDefaultTtl(I)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 1465
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1459
    return-void

    .line 1462
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 1465
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1467
    nop

    .line 1468
    return-void

    .line 1465
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1467
    throw v2
.end method

.method public setElementAddr(I)Z
    .registers 7
    .param p1, "addr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1023
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1024
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1027
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1028
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1029
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1030
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 1031
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 1032
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->setElementAddr(I)Z

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_43

    .line 1039
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1040
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1032
    return v3

    .line 1035
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1036
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_43

    if-eqz v3, :cond_3a

    const/4 v4, 0x1

    :cond_3a
    move v2, v4

    .line 1039
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1040
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1041
    nop

    .line 1042
    return v2

    .line 1039
    .end local v2    # "_result":Z
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1040
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1041
    throw v2
.end method

.method public setHeartbeatPeriod(IJ)I
    .registers 9
    .param p1, "num"    # I
    .param p2, "hbTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1741
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1742
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1745
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1746
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1747
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1748
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1749
    .local v2, "_status":Z
    if-nez v2, :cond_33

    .line 1750
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 1751
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->setHeartbeatPeriod(IJ)I

    move-result v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_43

    .line 1758
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1751
    return v3

    .line 1754
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1755
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_43

    move v2, v3

    .line 1758
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1760
    nop

    .line 1761
    return v2

    .line 1758
    .end local v2    # "_result":I
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1760
    throw v2
.end method

.method public setIv(JI)I
    .registers 9
    .param p1, "ivIndex"    # J
    .param p3, "ivPhase"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1493
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1494
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1497
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1498
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1499
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1500
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1501
    .local v2, "_status":Z
    if-nez v2, :cond_33

    .line 1502
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 1503
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->setIv(JI)I

    move-result v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_43

    .line 1510
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1503
    return v3

    .line 1506
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1507
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_43

    move v2, v3

    .line 1510
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1512
    nop

    .line 1513
    return v2

    .line 1510
    .end local v2    # "_result":I
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1512
    throw v2
.end method

.method public setLogLevel(J)V
    .registers 8
    .param p1, "level"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1649
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1650
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1652
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1653
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1654
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1655
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    .line 1656
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 1657
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->setLogLevel(J)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 1664
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1665
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1658
    return-void

    .line 1661
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 1664
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1665
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1666
    nop

    .line 1667
    return-void

    .line 1664
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1665
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1666
    throw v2
.end method

.method public setMeshMode(I)I
    .registers 7
    .param p1, "on"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1317
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1318
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1321
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1322
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1323
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1324
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 1325
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 1326
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->setMeshMode(I)I

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 1333
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1326
    return v3

    .line 1329
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1330
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move v2, v3

    .line 1333
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1335
    nop

    .line 1336
    return v2

    .line 1333
    .end local v2    # "_result":I
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1335
    throw v2
.end method

.method public setNetkey(I[II)I
    .registers 9
    .param p1, "op"    # I
    .param p2, "key"    # [I
    .param p3, "netIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1075
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1076
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1079
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1080
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1081
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1082
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1083
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1084
    .local v2, "_status":Z
    if-nez v2, :cond_36

    .line 1085
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 1086
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->setNetkey(I[II)I

    move-result v3
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_46

    .line 1093
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1094
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1086
    return v3

    .line 1089
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1090
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_46

    move v2, v3

    .line 1093
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1094
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1095
    nop

    .line 1096
    return v2

    .line 1093
    .end local v2    # "_result":I
    :catchall_46
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1094
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1095
    throw v2
.end method

.method public setProvisionFactor(I[I)I
    .registers 8
    .param p1, "type"    # I
    .param p2, "buf"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1205
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1206
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1209
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1210
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1211
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1212
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1213
    .local v2, "_status":Z
    if-nez v2, :cond_33

    .line 1214
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 1215
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->setProvisionFactor(I[I)I

    move-result v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_43

    .line 1222
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1215
    return v3

    .line 1218
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1219
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_43

    move v2, v3

    .line 1222
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1224
    nop

    .line 1225
    return v2

    .line 1222
    .end local v2    # "_result":I
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1224
    throw v2
.end method

.method public setScanParams(II)I
    .registers 8
    .param p1, "scanInterval"    # I
    .param p2, "scanWindow"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1845
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1846
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1849
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1850
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1851
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1852
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1853
    .local v2, "_status":Z
    if-nez v2, :cond_33

    .line 1854
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 1855
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->setScanParams(II)I

    move-result v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_43

    .line 1862
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1863
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1855
    return v3

    .line 1858
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1859
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_43

    move v2, v3

    .line 1862
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1863
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1864
    nop

    .line 1865
    return v2

    .line 1862
    .end local v2    # "_result":I
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1863
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1864
    throw v2
.end method

.method public setSpecialPktParams(ZIII)I
    .registers 10
    .param p1, "isSnIncrease"    # Z
    .param p2, "snIncreaseInterval"    # I
    .param p3, "advInterval"    # I
    .param p4, "advPeriod"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1869
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1870
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1873
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1874
    const/4 v2, 0x0

    if-eqz p1, :cond_12

    const/4 v3, 0x1

    goto :goto_13

    :cond_12
    move v3, v2

    :goto_13
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1875
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1876
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1877
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1878
    iget-object v3, p0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1879
    .local v2, "_status":Z
    if-nez v2, :cond_3e

    .line 1880
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    if-eqz v3, :cond_3e

    .line 1881
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->setSpecialPktParams(ZIII)I

    move-result v3
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_4e

    .line 1888
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1889
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1881
    return v3

    .line 1884
    :cond_3e
    :try_start_3e
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1885
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_4e

    move v2, v3

    .line 1888
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1889
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1890
    nop

    .line 1891
    return v2

    .line 1888
    .end local v2    # "_result":I
    :catchall_4e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1889
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1890
    throw v2
.end method

.method public startProvisioning(IIIII[IIJIII)I
    .registers 29
    .param p1, "algorithm"    # I
    .param p2, "publicKey"    # I
    .param p3, "authMethod"    # I
    .param p4, "authAction"    # I
    .param p5, "authSize"    # I
    .param p6, "netkey"    # [I
    .param p7, "netkeyIndex"    # I
    .param p8, "ivIndex"    # J
    .param p10, "addr"    # I
    .param p11, "flags"    # I
    .param p12, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1172
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1173
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1176
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1177
    move/from16 v15, p1

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 1178
    move/from16 v14, p2

    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 1179
    move/from16 v13, p3

    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 1180
    move/from16 v11, p4

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1181
    move/from16 v12, p5

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1182
    move-object/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1183
    move/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1184
    move-wide/from16 v7, p8

    invoke-virtual {v1, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    .line 1185
    move/from16 v6, p10

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1186
    move/from16 v5, p11

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1187
    move/from16 v4, p12

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1188
    move-object/from16 v3, p0

    iget-object v0, v3, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1189
    .local v0, "_status":Z
    if-nez v0, :cond_7c

    .line 1190
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    if-eqz v3, :cond_7c

    .line 1191
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-wide/from16 v11, p8

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    invoke-interface/range {v3 .. v15}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->startProvisioning(IIIII[IIJIII)I

    move-result v3
    :try_end_75
    .catchall {:try_start_8 .. :try_end_75} :catchall_8c

    .line 1198
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1199
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1191
    return v3

    .line 1194
    :cond_7c
    :try_start_7c
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1195
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_83
    .catchall {:try_start_7c .. :try_end_83} :catchall_8c

    move v0, v3

    .line 1198
    .local v0, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1199
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1200
    nop

    .line 1201
    return v0

    .line 1198
    .end local v0    # "_result":I
    :catchall_8c
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1199
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1200
    throw v0
.end method

.method public unProvisionScan(ZI)V
    .registers 8
    .param p1, "start"    # Z
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1127
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1129
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1130
    const/4 v2, 0x0

    if-eqz p1, :cond_12

    const/4 v3, 0x1

    goto :goto_13

    :cond_12
    move v3, v2

    :goto_13
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1131
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1132
    iget-object v3, p0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1133
    .local v2, "_status":Z
    if-nez v2, :cond_37

    .line 1134
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 1135
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->unProvisionScan(ZI)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    .line 1142
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1136
    return-void

    .line 1139
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    .line 1142
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1144
    nop

    .line 1145
    return-void

    .line 1142
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1144
    throw v2
.end method

.method public unregisterCallback()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 862
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 863
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 865
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMesh"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 866
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 867
    .local v2, "_status":Z
    if-nez v2, :cond_2b

    .line 868
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 869
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->unregisterCallback()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_36

    .line 876
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 877
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 870
    return-void

    .line 873
    :cond_2b
    :try_start_2b
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_36

    .line 876
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 877
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 878
    nop

    .line 879
    return-void

    .line 876
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 877
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 878
    throw v2
.end method

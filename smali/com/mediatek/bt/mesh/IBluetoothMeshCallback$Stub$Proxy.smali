.class Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBluetoothMeshCallback.java"

# interfaces
.implements Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    iput-object p1, p0, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 430
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 433
    iget-object v0, p0, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 437
    const-string v0, "com.mediatek.bt.mesh.IBluetoothMeshCallback"

    return-object v0
.end method

.method public onAdvReport(I[III[I)V
    .registers 16
    .param p1, "addr_type"    # I
    .param p2, "addr"    # [I
    .param p3, "rssi"    # I
    .param p4, "report_type"    # I
    .param p5, "data"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 536
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 537
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 539
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMeshCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 540
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 541
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 542
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 544
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 545
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 546
    .local v2, "_status":Z
    if-nez v2, :cond_3f

    .line 547
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v3

    if-eqz v3, :cond_3f

    .line 548
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v4

    move v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    move-object v9, p5

    invoke-interface/range {v4 .. v9}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;->onAdvReport(I[III[I)V
    :try_end_38
    .catchall {:try_start_8 .. :try_end_38} :catchall_4a

    .line 555
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 556
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 549
    return-void

    .line 552
    :cond_3f
    :try_start_3f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_4a

    .line 555
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 556
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 557
    nop

    .line 558
    return-void

    .line 555
    :catchall_4a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 556
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 557
    throw v2
.end method

.method public onBearerGattStatus(JI)V
    .registers 9
    .param p1, "handle"    # J
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 854
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 855
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 857
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMeshCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 858
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 859
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 860
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 861
    .local v2, "_status":Z
    if-nez v2, :cond_32

    .line 862
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 863
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;->onBearerGattStatus(JI)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 870
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 871
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 864
    return-void

    .line 867
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 870
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 871
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 872
    nop

    .line 873
    return-void

    .line 870
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 871
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 872
    throw v2
.end method

.method public onConfigReset()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 462
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 463
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 465
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMeshCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 466
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 467
    .local v2, "_status":Z
    if-nez v2, :cond_2b

    .line 468
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 469
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;->onConfigReset()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_36

    .line 476
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 477
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 470
    return-void

    .line 473
    :cond_2b
    :try_start_2b
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_36

    .line 476
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 477
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 478
    nop

    .line 479
    return-void

    .line 476
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 477
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 478
    throw v2
.end method

.method public onEvtErrorCode(I)V
    .registers 7
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 876
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 877
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 879
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMeshCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 880
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 881
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 882
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    .line 883
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 884
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;->onEvtErrorCode(I)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 891
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 885
    return-void

    .line 888
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 891
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 893
    nop

    .line 894
    return-void

    .line 891
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 893
    throw v2
.end method

.method public onFriendShipStatus(IIF)V
    .registers 9
    .param p1, "addr"    # I
    .param p2, "status"    # I
    .param p3, "timeCost"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 482
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 483
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 485
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMeshCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 488
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 489
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 490
    .local v2, "_status":Z
    if-nez v2, :cond_34

    .line 491
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v3

    if-eqz v3, :cond_34

    .line 492
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;->onFriendShipStatus(IIF)V
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_3f

    .line 499
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 493
    return-void

    .line 496
    :cond_34
    :try_start_34
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3f

    .line 499
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 501
    nop

    .line 502
    return-void

    .line 499
    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 501
    throw v2
.end method

.method public onHeartbeat(II)V
    .registers 8
    .param p1, "address"    # I
    .param p2, "active"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 832
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 833
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 835
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMeshCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 836
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 837
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 838
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 839
    .local v2, "_status":Z
    if-nez v2, :cond_32

    .line 840
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 841
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;->onHeartbeat(II)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 848
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 849
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 842
    return-void

    .line 845
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 848
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 849
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 850
    nop

    .line 851
    return-void

    .line 848
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 849
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 850
    throw v2
.end method

.method public onIvUpdate(II)V
    .registers 8
    .param p1, "ivIndex"    # I
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 766
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 767
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 769
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMeshCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 770
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 771
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 772
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 773
    .local v2, "_status":Z
    if-nez v2, :cond_32

    .line 774
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 775
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;->onIvUpdate(II)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 782
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 783
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 776
    return-void

    .line 779
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 782
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 783
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 784
    nop

    .line 785
    return-void

    .line 782
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 783
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 784
    throw v2
.end method

.method public onKeyRefresh(II)V
    .registers 8
    .param p1, "netKeyIndex"    # I
    .param p2, "phase"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 744
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 745
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 747
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMeshCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 748
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 749
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 750
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 751
    .local v2, "_status":Z
    if-nez v2, :cond_32

    .line 752
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 753
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;->onKeyRefresh(II)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 760
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 761
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 754
    return-void

    .line 757
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 760
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 761
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 762
    nop

    .line 763
    return-void

    .line 760
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 761
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 762
    throw v2
.end method

.method public onMeshEnabled()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 441
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 442
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 444
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMeshCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 445
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 446
    .local v2, "_status":Z
    if-nez v2, :cond_2b

    .line 447
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 448
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;->onMeshEnabled()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_36

    .line 455
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 449
    return-void

    .line 452
    :cond_2b
    :try_start_2b
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_36

    .line 455
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 457
    nop

    .line 458
    return-void

    .line 455
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 457
    throw v2
.end method

.method public onMsgHandler(ILcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;)V
    .registers 8
    .param p1, "modelHandle"    # I
    .param p2, "msg"    # Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 925
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 926
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 928
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMeshCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 929
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 930
    const/4 v2, 0x0

    if-eqz p2, :cond_1b

    .line 931
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 932
    invoke-virtual {p2, v0, v2}, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1e

    .line 935
    :cond_1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 937
    :goto_1e
    iget-object v3, p0, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 938
    .local v2, "_status":Z
    if-nez v2, :cond_3c

    .line 939
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 940
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;->onMsgHandler(ILcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;)V
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_47

    .line 947
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 941
    return-void

    .line 944
    :cond_3c
    :try_start_3c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_47

    .line 947
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 949
    nop

    .line 950
    return-void

    .line 947
    :catchall_47
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 949
    throw v2
.end method

.method public onOtaEvent(IIJJJIIIII[I)V
    .registers 33
    .param p1, "event_id"    # I
    .param p2, "error_code"    # I
    .param p3, "serial_number"    # J
    .param p5, "firmware_id"    # J
    .param p7, "time_escaped"    # J
    .param p9, "nodes_num"    # I
    .param p10, "curr_block"    # I
    .param p11, "total_block"    # I
    .param p12, "curr_chunk"    # I
    .param p13, "chunk_mask"    # I
    .param p14, "nodes_status"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 505
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 506
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 508
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "com.mediatek.bt.mesh.IBluetoothMeshCallback"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 509
    move/from16 v15, p1

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    move/from16 v14, p2

    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 511
    move-wide/from16 v12, p3

    invoke-virtual {v1, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    .line 512
    move-wide/from16 v10, p5

    invoke-virtual {v1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 513
    move-wide/from16 v8, p7

    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 514
    move/from16 v6, p9

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    move/from16 v7, p10

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 516
    move/from16 v5, p11

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    move/from16 v4, p12

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    move/from16 v3, p13

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    move-object/from16 v15, p14

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 520
    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 521
    .local v0, "_status":Z
    if-nez v0, :cond_7a

    .line 522
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v3

    if-eqz v3, :cond_7a

    .line 523
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move-object/from16 v17, p14

    invoke-interface/range {v3 .. v17}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;->onOtaEvent(IIJJJIIIII[I)V
    :try_end_73
    .catchall {:try_start_8 .. :try_end_73} :catchall_85

    .line 530
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 531
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 524
    return-void

    .line 527
    :cond_7a
    :try_start_7a
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_85

    .line 530
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 531
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 532
    nop

    .line 533
    return-void

    .line 530
    :catchall_85
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 531
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 532
    throw v0
.end method

.method public onOtaMsgHandler(ILcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;)V
    .registers 8
    .param p1, "modelHandle"    # I
    .param p2, "msg"    # Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 897
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 898
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 900
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMeshCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 901
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 902
    const/4 v2, 0x0

    if-eqz p2, :cond_1b

    .line 903
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 904
    invoke-virtual {p2, v0, v2}, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1e

    .line 907
    :cond_1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 909
    :goto_1e
    iget-object v3, p0, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 910
    .local v2, "_status":Z
    if-nez v2, :cond_3c

    .line 911
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 912
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;->onOtaMsgHandler(ILcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;)V
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_47

    .line 919
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 913
    return-void

    .line 916
    :cond_3c
    :try_start_3c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_47

    .line 919
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 921
    nop

    .line 922
    return-void

    .line 919
    :catchall_47
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 921
    throw v2
.end method

.method public onProvCapabilities(IIIIIIII)V
    .registers 25
    .param p1, "numberOfElements"    # I
    .param p2, "algorithms"    # I
    .param p3, "publicKeyType"    # I
    .param p4, "staticOOBType"    # I
    .param p5, "outputOobSize"    # I
    .param p6, "outputOobAction"    # I
    .param p7, "inputOobSize"    # I
    .param p8, "inputOobAction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 605
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 606
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 608
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "com.mediatek.bt.mesh.IBluetoothMeshCallback"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_79

    .line 609
    move/from16 v12, p1

    :try_start_f
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_77

    .line 610
    move/from16 v13, p2

    :try_start_14
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_75

    .line 611
    move/from16 v14, p3

    :try_start_19
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_73

    .line 612
    move/from16 v15, p4

    :try_start_1e
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 613
    move/from16 v11, p5

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 614
    move/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 615
    move/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 616
    move/from16 v8, p8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 617
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 618
    .local v0, "_status":Z
    if-nez v0, :cond_66

    .line 619
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v3

    if-eqz v3, :cond_66

    .line 620
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-interface/range {v3 .. v11}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;->onProvCapabilities(IIIIIIII)V
    :try_end_5f
    .catchall {:try_start_1e .. :try_end_5f} :catchall_71

    .line 627
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 628
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 621
    return-void

    .line 624
    :cond_66
    :try_start_66
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_71

    .line 627
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 628
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 629
    nop

    .line 630
    return-void

    .line 627
    :catchall_71
    move-exception v0

    goto :goto_82

    :catchall_73
    move-exception v0

    goto :goto_80

    :catchall_75
    move-exception v0

    goto :goto_7e

    :catchall_77
    move-exception v0

    goto :goto_7c

    :catchall_79
    move-exception v0

    move/from16 v12, p1

    :goto_7c
    move/from16 v13, p2

    :goto_7e
    move/from16 v14, p3

    :goto_80
    move/from16 v15, p4

    :goto_82
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 628
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 629
    throw v0
.end method

.method public onProvDone(I[IZZ)V
    .registers 10
    .param p1, "address"    # I
    .param p2, "deviceKey"    # [I
    .param p3, "success"    # Z
    .param p4, "gatt_bearer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 720
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 721
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 723
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMeshCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 724
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 725
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 726
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_19

    move v4, v2

    goto :goto_1a

    :cond_19
    move v4, v3

    :goto_1a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 727
    if-eqz p4, :cond_20

    goto :goto_21

    :cond_20
    move v2, v3

    :goto_21
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 728
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 729
    .local v2, "_status":Z
    if-nez v2, :cond_42

    .line 730
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v3

    if-eqz v3, :cond_42

    .line 731
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;->onProvDone(I[IZZ)V
    :try_end_3b
    .catchall {:try_start_8 .. :try_end_3b} :catchall_4d

    .line 738
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 739
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 732
    return-void

    .line 735
    :cond_42
    :try_start_42
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_4d

    .line 738
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 739
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 740
    nop

    .line 741
    return-void

    .line 738
    :catchall_4d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 739
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 740
    throw v2
.end method

.method public onProvFactor(I[II)V
    .registers 9
    .param p1, "type"    # I
    .param p2, "buf"    # [I
    .param p3, "bufLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 809
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 810
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 812
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMeshCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 813
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 814
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 815
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 816
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 817
    .local v2, "_status":Z
    if-nez v2, :cond_35

    .line 818
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 819
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;->onProvFactor(I[II)V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_40

    .line 826
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 827
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 820
    return-void

    .line 823
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_40

    .line 826
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 827
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 828
    nop

    .line 829
    return-void

    .line 826
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 827
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 828
    throw v2
.end method

.method public onProvScanComplete()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 561
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 562
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 564
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMeshCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 565
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 566
    .local v2, "_status":Z
    if-nez v2, :cond_2b

    .line 567
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 568
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;->onProvScanComplete()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_36

    .line 575
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 576
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 569
    return-void

    .line 572
    :cond_2b
    :try_start_2b
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_36

    .line 575
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 576
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 577
    nop

    .line 578
    return-void

    .line 575
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 576
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 577
    throw v2
.end method

.method public onProvShowOobAuthValue([I)V
    .registers 7
    .param p1, "authValue"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 699
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 700
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 702
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMeshCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 703
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 704
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 705
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    .line 706
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 707
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;->onProvShowOobAuthValue([I)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 714
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 708
    return-void

    .line 711
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 714
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 716
    nop

    .line 717
    return-void

    .line 714
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 716
    throw v2
.end method

.method public onProvShowOobPublicKey([I)V
    .registers 7
    .param p1, "publicKey"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 677
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 678
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 680
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMeshCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 681
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 682
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 683
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    .line 684
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 685
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;->onProvShowOobPublicKey([I)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 692
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 686
    return-void

    .line 689
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 692
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 694
    nop

    .line 695
    return-void

    .line 692
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 694
    throw v2
.end method

.method public onPublishTimeoutCallback(I)V
    .registers 7
    .param p1, "modelHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 953
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 954
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 956
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMeshCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 957
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 958
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 959
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    .line 960
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 961
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;->onPublishTimeoutCallback(I)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 968
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 969
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 962
    return-void

    .line 965
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 968
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 969
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 970
    nop

    .line 971
    return-void

    .line 968
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 969
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 970
    throw v2
.end method

.method public onRequestOobAuthValue(III)V
    .registers 9
    .param p1, "method"    # I
    .param p2, "action"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 654
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 655
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 657
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMeshCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 658
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 659
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 660
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 661
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 662
    .local v2, "_status":Z
    if-nez v2, :cond_35

    .line 663
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 664
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;->onRequestOobAuthValue(III)V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_40

    .line 671
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 672
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 665
    return-void

    .line 668
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_40

    .line 671
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 672
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 673
    nop

    .line 674
    return-void

    .line 671
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 672
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 673
    throw v2
.end method

.method public onRequestOobPublicKey()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 633
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 634
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 636
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMeshCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 637
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 638
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    .line 639
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 640
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;->onRequestOobPublicKey()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_37

    .line 647
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 641
    return-void

    .line 644
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    .line 647
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 649
    nop

    .line 650
    return-void

    .line 647
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 649
    throw v2
.end method

.method public onScanUnProvDevice([II[II)V
    .registers 10
    .param p1, "uuid"    # [I
    .param p2, "oobInfom"    # I
    .param p3, "uriHash"    # [I
    .param p4, "rssi"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 581
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 582
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 584
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMeshCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 585
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 586
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 588
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 589
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 590
    .local v2, "_status":Z
    if-nez v2, :cond_37

    .line 591
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 592
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;->onScanUnProvDevice([II[II)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    .line 599
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 600
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 593
    return-void

    .line 596
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    .line 599
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 600
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 601
    nop

    .line 602
    return-void

    .line 599
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 600
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 601
    throw v2
.end method

.method public onSeqChange(I)V
    .registers 7
    .param p1, "seqNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 788
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 789
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 791
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.bt.mesh.IBluetoothMeshCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 792
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 793
    iget-object v2, p0, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 794
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    .line 795
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 796
    invoke-static {}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;->onSeqChange(I)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 803
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 804
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 797
    return-void

    .line 800
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 803
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 804
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 805
    nop

    .line 806
    return-void

    .line 803
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 804
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 805
    throw v2
.end method

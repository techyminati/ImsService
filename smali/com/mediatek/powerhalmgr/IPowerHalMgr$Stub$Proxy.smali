.class Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPowerHalMgr.java"

# interfaces
.implements Lcom/mediatek/powerhalmgr/IPowerHalMgr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/mediatek/powerhalmgr/IPowerHalMgr;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    iput-object p1, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 476
    return-void
.end method


# virtual methods
.method public UpdateManagementPkt(ILjava/lang/String;)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "packet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 697
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 699
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 700
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 701
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 702
    iget-object v1, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 703
    .local v1, "_status":Z
    if-nez v1, :cond_2c

    .line 704
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 705
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->UpdateManagementPkt(ILjava/lang/String;)V
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_31

    .line 711
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 706
    return-void

    .line 711
    .end local v1    # "_status":Z
    :cond_2c
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 712
    nop

    .line 713
    return-void

    .line 711
    :catchall_31
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 712
    throw v1
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 479
    iget-object v0, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public flushPriorityRules(I)Z
    .registers 7
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1097
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1098
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1101
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1102
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1103
    iget-object v2, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1104
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 1105
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 1106
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->flushPriorityRules(I)Z

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_43

    .line 1113
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1106
    return v3

    .line 1109
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1110
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_43

    if-eqz v3, :cond_3a

    const/4 v4, 0x1

    :cond_3a
    move v2, v4

    .line 1113
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1115
    nop

    .line 1116
    return v2

    .line 1113
    .end local v2    # "_result":Z
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1115
    throw v2
.end method

.method public getCpuCap()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 629
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 631
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 632
    iget-object v1, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 633
    .local v1, "_status":Z
    if-nez v1, :cond_26

    .line 634
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 635
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->getCpuCap()V
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_2b

    .line 641
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 636
    return-void

    .line 641
    .end local v1    # "_status":Z
    :cond_26
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 642
    nop

    .line 643
    return-void

    .line 641
    :catchall_2b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 642
    throw v1
.end method

.method public getCpuRTInfo()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 680
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 682
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 683
    iget-object v1, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 684
    .local v1, "_status":Z
    if-nez v1, :cond_26

    .line 685
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 686
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->getCpuRTInfo()V
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_2b

    .line 692
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 687
    return-void

    .line 692
    .end local v1    # "_status":Z
    :cond_26
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 693
    nop

    .line 694
    return-void

    .line 692
    :catchall_2b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 693
    throw v1
.end method

.method public getGpuCap()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 646
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 648
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 649
    iget-object v1, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 650
    .local v1, "_status":Z
    if-nez v1, :cond_26

    .line 651
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 652
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->getGpuCap()V
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_2b

    .line 658
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 653
    return-void

    .line 658
    .end local v1    # "_status":Z
    :cond_26
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 659
    nop

    .line 660
    return-void

    .line 658
    :catchall_2b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 659
    throw v1
.end method

.method public getGpuRTInfo()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 663
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 665
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 666
    iget-object v1, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 667
    .local v1, "_status":Z
    if-nez v1, :cond_26

    .line 668
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 669
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->getGpuRTInfo()V
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_2b

    .line 675
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 670
    return-void

    .line 675
    .end local v1    # "_status":Z
    :cond_26
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 676
    nop

    .line 677
    return-void

    .line 675
    :catchall_2b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 676
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 483
    const-string v0, "com.mediatek.powerhalmgr.IPowerHalMgr"

    return-object v0
.end method

.method public isDupPacketPredictionStarted()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 797
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 798
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 801
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 802
    iget-object v2, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 803
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    .line 804
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 805
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->isDupPacketPredictionStarted()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_40

    .line 812
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 813
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 805
    return v3

    .line 808
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 809
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_40

    if-eqz v3, :cond_37

    const/4 v4, 0x1

    :cond_37
    move v2, v4

    .line 812
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 813
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 814
    nop

    .line 815
    return v2

    .line 812
    .end local v2    # "_result":Z
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 813
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 814
    throw v2
.end method

.method public mtkCusPowerHint(II)V
    .registers 8
    .param p1, "hint"    # I
    .param p2, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 610
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 612
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 613
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 614
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 615
    iget-object v1, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 616
    .local v1, "_status":Z
    if-nez v1, :cond_2b

    .line 617
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 618
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->mtkCusPowerHint(II)V
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_30

    .line 624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 619
    return-void

    .line 624
    .end local v1    # "_status":Z
    :cond_2b
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 625
    nop

    .line 626
    return-void

    .line 624
    :catchall_30
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 625
    throw v1
.end method

.method public mtkPowerHint(II)V
    .registers 8
    .param p1, "hint"    # I
    .param p2, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 975
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 977
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 978
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 979
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 980
    iget-object v1, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x19

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 981
    .local v1, "_status":Z
    if-nez v1, :cond_2c

    .line 982
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 983
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->mtkPowerHint(II)V
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_31

    .line 989
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 984
    return-void

    .line 989
    .end local v1    # "_status":Z
    :cond_2c
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 990
    nop

    .line 991
    return-void

    .line 989
    :catchall_31
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 990
    throw v1
.end method

.method public perfCusLockHint(II)I
    .registers 8
    .param p1, "hint"    # I
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 994
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 995
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 998
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 999
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1000
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1001
    iget-object v2, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1002
    .local v2, "_status":Z
    if-nez v2, :cond_33

    .line 1003
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 1004
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->perfCusLockHint(II)I

    move-result v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_43

    .line 1011
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1012
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1004
    return v3

    .line 1007
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1008
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_43

    move v2, v3

    .line 1011
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1012
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1013
    nop

    .line 1014
    return v2

    .line 1011
    .end local v2    # "_result":I
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1012
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1013
    throw v2
.end method

.method public perfLockAcquire(II[I)I
    .registers 9
    .param p1, "handle"    # I
    .param p2, "duration"    # I
    .param p3, "list"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 908
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 909
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 912
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 913
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 914
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 915
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 916
    iget-object v2, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 917
    .local v2, "_status":Z
    if-nez v2, :cond_36

    .line 918
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 919
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->perfLockAcquire(II[I)I

    move-result v3
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_46

    .line 926
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 927
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 919
    return v3

    .line 922
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 923
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_46

    move v2, v3

    .line 926
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 927
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 928
    nop

    .line 929
    return v2

    .line 926
    .end local v2    # "_result":I
    :catchall_46
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 927
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 928
    throw v2
.end method

.method public perfLockRelease(I)V
    .registers 7
    .param p1, "handle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 933
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 935
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 936
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 937
    iget-object v1, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x17

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 938
    .local v1, "_status":Z
    if-nez v1, :cond_29

    .line 939
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 940
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->perfLockRelease(I)V
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_2e

    .line 946
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 941
    return-void

    .line 946
    .end local v1    # "_status":Z
    :cond_29
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 947
    nop

    .line 948
    return-void

    .line 946
    :catchall_2e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 947
    throw v1
.end method

.method public querySysInfo(II)I
    .registers 8
    .param p1, "cmd"    # I
    .param p2, "param"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 951
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 952
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 955
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 956
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 957
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 958
    iget-object v2, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 959
    .local v2, "_status":Z
    if-nez v2, :cond_33

    .line 960
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 961
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->querySysInfo(II)I

    move-result v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_43

    .line 968
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 969
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 961
    return v3

    .line 964
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 965
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_43

    move v2, v3

    .line 968
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 969
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 970
    nop

    .line 971
    return v2

    .line 968
    .end local v2    # "_result":I
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 969
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 970
    throw v2
.end method

.method public registerDuplicatePacketPredictionEvent(Landroid/os/IRemoteCallback;)Z
    .registers 7
    .param p1, "listener"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 819
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 820
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 823
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 824
    if-eqz p1, :cond_14

    invoke-interface {p1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 825
    iget-object v2, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 826
    .local v2, "_status":Z
    if-nez v2, :cond_38

    .line 827
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v3

    if-eqz v3, :cond_38

    .line 828
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->registerDuplicatePacketPredictionEvent(Landroid/os/IRemoteCallback;)Z

    move-result v3
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_4b

    .line 835
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 836
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 828
    return v3

    .line 831
    :cond_38
    :try_start_38
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 832
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_4b

    if-eqz v3, :cond_42

    const/4 v4, 0x1

    :cond_42
    move v2, v4

    .line 835
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 836
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 837
    nop

    .line 838
    return v2

    .line 835
    .end local v2    # "_result":Z
    :catchall_4b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 836
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 837
    throw v2
.end method

.method public scnConfig(IIIIII)V
    .registers 23
    .param p1, "handle"    # I
    .param p2, "cmd"    # I
    .param p3, "param_1"    # I
    .param p4, "param_2"    # I
    .param p5, "param_3"    # I
    .param p6, "param_4"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 509
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 511
    .local v1, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v0, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_70

    .line 512
    move/from16 v9, p1

    :try_start_b
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_6c

    .line 513
    move/from16 v10, p2

    :try_start_10
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_68

    .line 514
    move/from16 v11, p3

    :try_start_15
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_64

    .line 515
    move/from16 v12, p4

    :try_start_1a
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_60

    .line 516
    move/from16 v13, p5

    :try_start_1f
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_5c

    .line 517
    move/from16 v14, p6

    :try_start_24
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_58

    .line 518
    move-object/from16 v15, p0

    :try_start_29
    iget-object v0, v15, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 519
    .local v0, "_status":Z
    if-nez v0, :cond_51

    .line 520
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v2

    if-eqz v2, :cond_51

    .line 521
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->scnConfig(IIIIII)V
    :try_end_4d
    .catchall {:try_start_29 .. :try_end_4d} :catchall_56

    .line 527
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 522
    return-void

    .line 527
    .end local v0    # "_status":Z
    :cond_51
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 528
    nop

    .line 529
    return-void

    .line 527
    :catchall_56
    move-exception v0

    goto :goto_7f

    :catchall_58
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_7f

    :catchall_5c
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_7d

    :catchall_60
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_7b

    :catchall_64
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_79

    :catchall_68
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_77

    :catchall_6c
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_75

    :catchall_70
    move-exception v0

    move-object/from16 v15, p0

    move/from16 v9, p1

    :goto_75
    move/from16 v10, p2

    :goto_77
    move/from16 v11, p3

    :goto_79
    move/from16 v12, p4

    :goto_7b
    move/from16 v13, p5

    :goto_7d
    move/from16 v14, p6

    :goto_7f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 528
    throw v0
.end method

.method public scnDisable(I)V
    .registers 7
    .param p1, "handle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 569
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 571
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 572
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 573
    iget-object v1, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 574
    .local v1, "_status":Z
    if-nez v1, :cond_28

    .line 575
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 576
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->scnDisable(I)V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_2d

    .line 582
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 577
    return-void

    .line 582
    .end local v1    # "_status":Z
    :cond_28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 583
    nop

    .line 584
    return-void

    .line 582
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 583
    throw v1
.end method

.method public scnEnable(II)V
    .registers 8
    .param p1, "handle"    # I
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 550
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 552
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 553
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 554
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 555
    iget-object v1, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 556
    .local v1, "_status":Z
    if-nez v1, :cond_2b

    .line 557
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 558
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->scnEnable(II)V
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_30

    .line 564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 559
    return-void

    .line 564
    .end local v1    # "_status":Z
    :cond_2b
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 565
    nop

    .line 566
    return-void

    .line 564
    :catchall_30
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 565
    throw v1
.end method

.method public scnReg()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 487
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 488
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 491
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 492
    iget-object v2, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 493
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    .line 494
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 495
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->scnReg()I

    move-result v3
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3c

    .line 502
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 495
    return v3

    .line 498
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 499
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_3c

    move v2, v3

    .line 502
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 504
    nop

    .line 505
    return v2

    .line 502
    .end local v2    # "_result":I
    :catchall_3c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 504
    throw v2
.end method

.method public scnUltraCfg(IIIIII)V
    .registers 23
    .param p1, "handle"    # I
    .param p2, "ultracmd"    # I
    .param p3, "param_1"    # I
    .param p4, "param_2"    # I
    .param p5, "param_3"    # I
    .param p6, "param_4"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 587
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 589
    .local v1, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v0, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_70

    .line 590
    move/from16 v9, p1

    :try_start_b
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_6c

    .line 591
    move/from16 v10, p2

    :try_start_10
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_68

    .line 592
    move/from16 v11, p3

    :try_start_15
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_64

    .line 593
    move/from16 v12, p4

    :try_start_1a
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_60

    .line 594
    move/from16 v13, p5

    :try_start_1f
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_5c

    .line 595
    move/from16 v14, p6

    :try_start_24
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_58

    .line 596
    move-object/from16 v15, p0

    :try_start_29
    iget-object v0, v15, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 597
    .local v0, "_status":Z
    if-nez v0, :cond_51

    .line 598
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v2

    if-eqz v2, :cond_51

    .line 599
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->scnUltraCfg(IIIIII)V
    :try_end_4d
    .catchall {:try_start_29 .. :try_end_4d} :catchall_56

    .line 605
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 600
    return-void

    .line 605
    .end local v0    # "_status":Z
    :cond_51
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 606
    nop

    .line 607
    return-void

    .line 605
    :catchall_56
    move-exception v0

    goto :goto_7f

    :catchall_58
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_7f

    :catchall_5c
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_7d

    :catchall_60
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_7b

    :catchall_64
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_79

    :catchall_68
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_77

    :catchall_6c
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_75

    :catchall_70
    move-exception v0

    move-object/from16 v15, p0

    move/from16 v9, p1

    :goto_75
    move/from16 v10, p2

    :goto_77
    move/from16 v11, p3

    :goto_79
    move/from16 v12, p4

    :goto_7b
    move/from16 v13, p5

    :goto_7d
    move/from16 v14, p6

    :goto_7f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 606
    throw v0
.end method

.method public scnUnreg(I)V
    .registers 7
    .param p1, "handle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 532
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 534
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 535
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 536
    iget-object v1, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 537
    .local v1, "_status":Z
    if-nez v1, :cond_28

    .line 538
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 539
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->scnUnreg(I)V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_2d

    .line 545
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 540
    return-void

    .line 545
    .end local v1    # "_status":Z
    :cond_28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 546
    nop

    .line 547
    return-void

    .line 545
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 546
    throw v1
.end method

.method public setForegroundSports()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 716
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 718
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 719
    iget-object v1, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 720
    .local v1, "_status":Z
    if-nez v1, :cond_26

    .line 721
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 722
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->setForegroundSports()V
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_2b

    .line 728
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 723
    return-void

    .line 728
    .end local v1    # "_status":Z
    :cond_26
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 729
    nop

    .line 730
    return-void

    .line 728
    :catchall_2b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 729
    throw v1
.end method

.method public setPredictInfo(Ljava/lang/String;I)V
    .registers 8
    .param p1, "pack_name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 889
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 891
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 892
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 893
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 894
    iget-object v1, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 895
    .local v1, "_status":Z
    if-nez v1, :cond_2c

    .line 896
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 897
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->setPredictInfo(Ljava/lang/String;I)V
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_31

    .line 903
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 898
    return-void

    .line 903
    .end local v1    # "_status":Z
    :cond_2c
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 904
    nop

    .line 905
    return-void

    .line 903
    :catchall_31
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 904
    throw v1
.end method

.method public setPriorityByLinkinfo(ILcom/mediatek/powerhalmgr/DupLinkInfo;)Z
    .registers 9
    .param p1, "action"    # I
    .param p2, "linkinfo"    # Lcom/mediatek/powerhalmgr/DupLinkInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1067
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1068
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1071
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1072
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1073
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_1b

    .line 1074
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1075
    invoke-virtual {p2, v0, v3}, Lcom/mediatek/powerhalmgr/DupLinkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1e

    .line 1078
    :cond_1b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1080
    :goto_1e
    iget-object v4, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x1d

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 1081
    .local v4, "_status":Z
    if-nez v4, :cond_3d

    .line 1082
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v5

    if-eqz v5, :cond_3d

    .line 1083
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->setPriorityByLinkinfo(ILcom/mediatek/powerhalmgr/DupLinkInfo;)Z

    move-result v2
    :try_end_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_50

    .line 1090
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1083
    return v2

    .line 1086
    :cond_3d
    :try_start_3d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1087
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_50

    if-eqz v5, :cond_47

    goto :goto_48

    :cond_47
    move v2, v3

    .line 1090
    .end local v4    # "_status":Z
    .local v2, "_result":Z
    :goto_48
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1092
    nop

    .line 1093
    return v2

    .line 1090
    .end local v2    # "_result":Z
    :catchall_50
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1092
    throw v2
.end method

.method public setPriorityByUid(II)Z
    .registers 8
    .param p1, "action"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1043
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1044
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1047
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1048
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1049
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1050
    iget-object v2, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1051
    .local v2, "_status":Z
    if-nez v2, :cond_33

    .line 1052
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 1053
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->setPriorityByUid(II)Z

    move-result v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_46

    .line 1060
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1061
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1053
    return v3

    .line 1056
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1057
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_46

    if-eqz v3, :cond_3d

    const/4 v4, 0x1

    :cond_3d
    move v2, v4

    .line 1060
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1061
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1062
    nop

    .line 1063
    return v2

    .line 1060
    .end local v2    # "_result":Z
    :catchall_46
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1061
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1062
    throw v2
.end method

.method public setSysInfo(ILjava/lang/String;)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 733
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 735
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 736
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 737
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 738
    iget-object v1, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 739
    .local v1, "_status":Z
    if-nez v1, :cond_2c

    .line 740
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 741
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->setSysInfo(ILjava/lang/String;)V
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_31

    .line 747
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 742
    return-void

    .line 747
    .end local v1    # "_status":Z
    :cond_2c
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 748
    nop

    .line 749
    return-void

    .line 747
    :catchall_31
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 748
    throw v1
.end method

.method public setSysInfoSync(ILjava/lang/String;)I
    .registers 8
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1018
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1019
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1022
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1023
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1024
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1025
    iget-object v2, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1026
    .local v2, "_status":Z
    if-nez v2, :cond_33

    .line 1027
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 1028
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->setSysInfoSync(ILjava/lang/String;)I

    move-result v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_43

    .line 1035
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1036
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1028
    return v3

    .line 1031
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1032
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_43

    move v2, v3

    .line 1035
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1036
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1037
    nop

    .line 1038
    return v2

    .line 1035
    .end local v2    # "_result":I
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1036
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1037
    throw v2
.end method

.method public startDuplicatePacketPrediction()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 753
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 754
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 757
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 758
    iget-object v2, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 759
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    .line 760
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 761
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->startDuplicatePacketPrediction()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_40

    .line 768
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 769
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 761
    return v3

    .line 764
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 765
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_40

    if-eqz v3, :cond_37

    const/4 v4, 0x1

    :cond_37
    move v2, v4

    .line 768
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 769
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 770
    nop

    .line 771
    return v2

    .line 768
    .end local v2    # "_result":Z
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 769
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 770
    throw v2
.end method

.method public stopDuplicatePacketPrediction()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 775
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 776
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 779
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 780
    iget-object v2, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 781
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    .line 782
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 783
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->stopDuplicatePacketPrediction()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_40

    .line 790
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 791
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 783
    return v3

    .line 786
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 787
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_40

    if-eqz v3, :cond_37

    const/4 v4, 0x1

    :cond_37
    move v2, v4

    .line 790
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 791
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 792
    nop

    .line 793
    return v2

    .line 790
    .end local v2    # "_result":Z
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 791
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 792
    throw v2
.end method

.method public unregisterDuplicatePacketPredictionEvent(Landroid/os/IRemoteCallback;)Z
    .registers 7
    .param p1, "listener"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 842
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 843
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 846
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 847
    if-eqz p1, :cond_14

    invoke-interface {p1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 848
    iget-object v2, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 849
    .local v2, "_status":Z
    if-nez v2, :cond_38

    .line 850
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v3

    if-eqz v3, :cond_38

    .line 851
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->unregisterDuplicatePacketPredictionEvent(Landroid/os/IRemoteCallback;)Z

    move-result v3
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_4b

    .line 858
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 859
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 851
    return v3

    .line 854
    :cond_38
    :try_start_38
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 855
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_4b

    if-eqz v3, :cond_42

    const/4 v4, 0x1

    :cond_42
    move v2, v4

    .line 858
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 859
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 860
    nop

    .line 861
    return v2

    .line 858
    .end local v2    # "_result":Z
    :catchall_4b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 859
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 860
    throw v2
.end method

.method public updateMultiDuplicatePacketLink([Lcom/mediatek/powerhalmgr/DupLinkInfo;)Z
    .registers 7
    .param p1, "linkList"    # [Lcom/mediatek/powerhalmgr/DupLinkInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 865
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 866
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 869
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 870
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 871
    iget-object v3, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x14

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 872
    .local v3, "_status":Z
    if-nez v3, :cond_30

    .line 873
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v4

    if-eqz v4, :cond_30

    .line 874
    invoke-static {}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mediatek/powerhalmgr/IPowerHalMgr;->updateMultiDuplicatePacketLink([Lcom/mediatek/powerhalmgr/DupLinkInfo;)Z

    move-result v2
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_42

    .line 881
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 882
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 874
    return v2

    .line 877
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 878
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_42

    if-eqz v4, :cond_3a

    const/4 v2, 0x1

    .line 881
    .end local v3    # "_status":Z
    .local v2, "_result":Z
    :cond_3a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 882
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 883
    nop

    .line 884
    return v2

    .line 881
    .end local v2    # "_result":Z
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 882
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 883
    throw v2
.end method

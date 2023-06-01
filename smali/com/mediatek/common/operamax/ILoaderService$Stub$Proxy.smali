.class Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ILoaderService.java"

# interfaces
.implements Lcom/mediatek/common/operamax/ILoaderService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/operamax/ILoaderService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/mediatek/common/operamax/ILoaderService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    iput-object p1, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 443
    return-void
.end method


# virtual methods
.method public addDirectedApp(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 639
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 640
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 642
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 643
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 644
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 645
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    .line 646
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 647
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/common/operamax/ILoaderService;->addDirectedApp(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 654
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 655
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 648
    return-void

    .line 651
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 654
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 655
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 656
    nop

    .line 657
    return-void

    .line 654
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 655
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 656
    throw v2
.end method

.method public addDirectedHeaderField(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 883
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 884
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 886
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 887
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 888
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 889
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 890
    .local v2, "_status":Z
    if-nez v2, :cond_32

    .line 891
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 892
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/common/operamax/ILoaderService;->addDirectedHeaderField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 899
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 900
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 893
    return-void

    .line 896
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 899
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 900
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 901
    nop

    .line 902
    return-void

    .line 899
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 900
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 901
    throw v2
.end method

.method public addDirectedHost(Ljava/lang/String;)V
    .registers 7
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 761
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 762
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 764
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 765
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 766
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 767
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    .line 768
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 769
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/common/operamax/ILoaderService;->addDirectedHost(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 776
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 777
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 770
    return-void

    .line 773
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 776
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 777
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 778
    nop

    .line 779
    return-void

    .line 776
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 777
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 778
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 446
    iget-object v0, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getCompressLevel()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1033
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1034
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1037
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1038
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1039
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    .line 1040
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 1041
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/common/operamax/ILoaderService;->getCompressLevel()I

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3d

    .line 1048
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1049
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1041
    return v3

    .line 1044
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1045
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3d

    move v2, v3

    .line 1048
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1049
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1050
    nop

    .line 1051
    return v2

    .line 1048
    .end local v2    # "_result":I
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1049
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1050
    throw v2
.end method

.method public getDirectedAppList()[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 736
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 737
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 740
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 741
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 742
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    .line 743
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 744
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/common/operamax/ILoaderService;->getDirectedAppList()[Ljava/lang/String;

    move-result-object v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3d

    .line 751
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 752
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 744
    return-object v3

    .line 747
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 748
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3d

    move-object v2, v3

    .line 751
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 752
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 753
    nop

    .line 754
    return-object v2

    .line 751
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 752
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 753
    throw v2
.end method

.method public getDirectedHeaderFieldList()[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 983
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 984
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 987
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 988
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 989
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    .line 990
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 991
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/common/operamax/ILoaderService;->getDirectedHeaderFieldList()[Ljava/lang/String;

    move-result-object v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3d

    .line 998
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 999
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 991
    return-object v3

    .line 994
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 995
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3d

    move-object v2, v3

    .line 998
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 999
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1000
    nop

    .line 1001
    return-object v2

    .line 998
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 999
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1000
    throw v2
.end method

.method public getDirectedHostList()[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 858
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 859
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 862
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 863
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 864
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    .line 865
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 866
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/common/operamax/ILoaderService;->getDirectedHostList()[Ljava/lang/String;

    move-result-object v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3d

    .line 873
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 874
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 866
    return-object v3

    .line 869
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 870
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3d

    move-object v2, v3

    .line 873
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 874
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 875
    nop

    .line 876
    return-object v2

    .line 873
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 874
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 875
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 450
    const-string v0, "com.mediatek.common.operamax.ILoaderService"

    return-object v0
.end method

.method public getSavingState()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 539
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 540
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 543
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 544
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 545
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    .line 546
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 547
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/common/operamax/ILoaderService;->getSavingState()I

    move-result v3
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3c

    .line 554
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 555
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 547
    return v3

    .line 550
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 551
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_3c

    move v2, v3

    .line 554
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 555
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 556
    nop

    .line 557
    return v2

    .line 554
    .end local v2    # "_result":I
    :catchall_3c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 555
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 556
    throw v2
.end method

.method public getTunnelState()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 508
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 509
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 512
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 513
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 514
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    .line 515
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 516
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/common/operamax/ILoaderService;->getTunnelState()I

    move-result v3
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3c

    .line 523
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 524
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 516
    return v3

    .line 519
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 520
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_3c

    move v2, v3

    .line 523
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 524
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 525
    nop

    .line 526
    return v2

    .line 523
    .end local v2    # "_result":I
    :catchall_3c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 524
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 525
    throw v2
.end method

.method public isAppDirected(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 710
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 711
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 714
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 715
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 716
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 717
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 718
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 719
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/common/operamax/ILoaderService;->isAppDirected(Ljava/lang/String;)Z

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_43

    .line 726
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 727
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 719
    return v3

    .line 722
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 723
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_43

    if-eqz v3, :cond_3a

    const/4 v4, 0x1

    :cond_3a
    move v2, v4

    .line 726
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 727
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 728
    nop

    .line 729
    return v2

    .line 726
    .end local v2    # "_result":Z
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 727
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 728
    throw v2
.end method

.method public isHeaderFieldDirected(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 956
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 957
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 960
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 961
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 962
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 963
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 964
    .local v2, "_status":Z
    if-nez v2, :cond_33

    .line 965
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 966
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/common/operamax/ILoaderService;->isHeaderFieldDirected(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_46

    .line 973
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 974
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 966
    return v3

    .line 969
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 970
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_46

    if-eqz v3, :cond_3d

    const/4 v4, 0x1

    :cond_3d
    move v2, v4

    .line 973
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 974
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 975
    nop

    .line 976
    return v2

    .line 973
    .end local v2    # "_result":Z
    :catchall_46
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 974
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 975
    throw v2
.end method

.method public isHostDirected(Ljava/lang/String;)Z
    .registers 7
    .param p1, "host"    # Ljava/lang/String;
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

    .line 836
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 837
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 838
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 839
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 840
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 841
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/common/operamax/ILoaderService;->isHostDirected(Ljava/lang/String;)Z

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_43

    .line 848
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 849
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 841
    return v3

    .line 844
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 845
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_43

    if-eqz v3, :cond_3a

    const/4 v4, 0x1

    :cond_3a
    move v2, v4

    .line 848
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 849
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 850
    nop

    .line 851
    return v2

    .line 848
    .end local v2    # "_result":Z
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 849
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 850
    throw v2
.end method

.method public launchOperaMAX()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 616
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 617
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 619
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 620
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 621
    .local v2, "_status":Z
    if-nez v2, :cond_2b

    .line 622
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 623
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/common/operamax/ILoaderService;->launchOperaMAX()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_36

    .line 630
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 624
    return-void

    .line 627
    :cond_2b
    :try_start_2b
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_36

    .line 630
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 632
    nop

    .line 633
    return-void

    .line 630
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 632
    throw v2
.end method

.method public registerStateListener(Lcom/mediatek/common/operamax/ILoaderStateListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/mediatek/common/operamax/ILoaderStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 566
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 567
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 569
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 570
    if-eqz p1, :cond_14

    invoke-interface {p1}, Lcom/mediatek/common/operamax/ILoaderStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 571
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 572
    .local v2, "_status":Z
    if-nez v2, :cond_36

    .line 573
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 574
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/common/operamax/ILoaderService;->registerStateListener(Lcom/mediatek/common/operamax/ILoaderStateListener;)V
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_41

    .line 581
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 582
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 575
    return-void

    .line 578
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_41

    .line 581
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 582
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 583
    nop

    .line 584
    return-void

    .line 581
    :catchall_41
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 582
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 583
    throw v2
.end method

.method public removeAllDirectedApps()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 687
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 688
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 690
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 691
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 692
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    .line 693
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 694
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/common/operamax/ILoaderService;->removeAllDirectedApps()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_37

    .line 701
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 702
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 695
    return-void

    .line 698
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    .line 701
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 702
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 703
    nop

    .line 704
    return-void

    .line 701
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 702
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 703
    throw v2
.end method

.method public removeAllDirectedHeaderFields()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 933
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 934
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 936
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 937
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 938
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    .line 939
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 940
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/common/operamax/ILoaderService;->removeAllDirectedHeaderFields()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_37

    .line 947
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 941
    return-void

    .line 944
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

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
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 949
    throw v2
.end method

.method public removeAllDirectedHosts()V
    .registers 6
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
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 813
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 814
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    .line 815
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 816
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/common/operamax/ILoaderService;->removeAllDirectedHosts()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_37

    .line 823
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 817
    return-void

    .line 820
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    .line 823
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 825
    nop

    .line 826
    return-void

    .line 823
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 825
    throw v2
.end method

.method public removeDirectedApp(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 663
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 664
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 666
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 667
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 668
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 669
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    .line 670
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 671
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/common/operamax/ILoaderService;->removeDirectedApp(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 678
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 672
    return-void

    .line 675
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 678
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 680
    nop

    .line 681
    return-void

    .line 678
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 680
    throw v2
.end method

.method public removeDirectedHeaderField(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
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

    .line 911
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 912
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 913
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 914
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 915
    .local v2, "_status":Z
    if-nez v2, :cond_32

    .line 916
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 917
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/common/operamax/ILoaderService;->removeDirectedHeaderField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 924
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 925
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 918
    return-void

    .line 921
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 924
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 925
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 926
    nop

    .line 927
    return-void

    .line 924
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 925
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 926
    throw v2
.end method

.method public removeDirectedHost(Ljava/lang/String;)V
    .registers 7
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 785
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 786
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 788
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 789
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 790
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 791
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    .line 792
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 793
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/common/operamax/ILoaderService;->removeDirectedHost(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 800
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 801
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 794
    return-void

    .line 797
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 800
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 801
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 802
    nop

    .line 803
    return-void

    .line 800
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 801
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 802
    throw v2
.end method

.method public setCompressLevel(I)V
    .registers 7
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1009
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1010
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1012
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1014
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1015
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    .line 1016
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 1017
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/common/operamax/ILoaderService;->setCompressLevel(I)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 1024
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1025
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1018
    return-void

    .line 1021
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 1024
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1025
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1026
    nop

    .line 1027
    return-void

    .line 1024
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1025
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1026
    throw v2
.end method

.method public startSaving()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 458
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 459
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 461
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 462
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 463
    .local v2, "_status":Z
    if-nez v2, :cond_2b

    .line 464
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 465
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/common/operamax/ILoaderService;->startSaving()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_36

    .line 472
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 473
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 466
    return-void

    .line 469
    :cond_2b
    :try_start_2b
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_36

    .line 472
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 473
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 474
    nop

    .line 475
    return-void

    .line 472
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 473
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 474
    throw v2
.end method

.method public stopSaving()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 481
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 482
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 484
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 485
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 486
    .local v2, "_status":Z
    if-nez v2, :cond_2b

    .line 487
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 488
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/common/operamax/ILoaderService;->stopSaving()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_36

    .line 495
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 496
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 489
    return-void

    .line 492
    :cond_2b
    :try_start_2b
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_36

    .line 495
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 496
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 497
    nop

    .line 498
    return-void

    .line 495
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 496
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 497
    throw v2
.end method

.method public unregisterStateListener(Lcom/mediatek/common/operamax/ILoaderStateListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/mediatek/common/operamax/ILoaderStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 592
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 593
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 595
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 596
    if-eqz p1, :cond_14

    invoke-interface {p1}, Lcom/mediatek/common/operamax/ILoaderStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 597
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 598
    .local v2, "_status":Z
    if-nez v2, :cond_36

    .line 599
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 600
    invoke-static {}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/common/operamax/ILoaderService;->unregisterStateListener(Lcom/mediatek/common/operamax/ILoaderStateListener;)V
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_41

    .line 607
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 608
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 601
    return-void

    .line 604
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_41

    .line 607
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 608
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 609
    nop

    .line 610
    return-void

    .line 607
    :catchall_41
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 608
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 609
    throw v2
.end method
